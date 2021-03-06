import * as recast from "recast";

import { SplootNode, ParentReference } from "../../node";
import { ChildSetType } from "../../childset";
import { NodeCategory, registerNodeCateogry, SuggestionGenerator } from "../../node_category_registry";
import { TypeRegistration, NodeLayout, LayoutComponentType, LayoutComponent, registerType, SerializedNode } from "../../type_registry";
import { ExportDeclarationKind, ExpressionKind, IdentifierKind } from "ast-types/gen/kinds";
import { SplootExpression, SPLOOT_EXPRESSION } from "../js/expression";
import { ComponentDefinition, FunctionDefinition, VariableDefinition } from "../../lib/loader";
import { HighlightColorCategory } from "../../../layout/colors";
import { SuggestedNode } from "../../suggested_node";
import { DeclaredIdentifier } from "../js/declared_identifier";
import { HTML_SCRIPT_ElEMENT, SplootHtmlScriptElement } from "../html/html_script_element";
import { JavaScriptSplootNode } from "../../javascript_node";
import { DeclaredProperty } from "./declared_property";

export const COMPONENT_DECLARATION = 'COMPONENT_DECLARATION';

class Generator implements SuggestionGenerator {
  staticSuggestions(parent: ParentReference, index: number) : SuggestedNode[] {
    let sampleNode = new ComponentDeclaration(null);
    let suggestedNode = new SuggestedNode(sampleNode, 'component', 'component', true, 'A new component.');
    return [suggestedNode];
  };

  dynamicSuggestions(parent: ParentReference, index: number, textInput: string) : SuggestedNode[] {
    return [];
  };
}

export class ComponentDeclaration extends JavaScriptSplootNode {
  constructor(parentReference: ParentReference) {
    super(parentReference, COMPONENT_DECLARATION);
    this.addChildSet('identifier', ChildSetType.Single, NodeCategory.DeclaredIdentifier);
    this.addChildSet('props', ChildSetType.Many, NodeCategory.ComponentPropertyDeclaration);
    this.addChildSet('body', ChildSetType.Many, NodeCategory.Statement);
  }

  getIdentifier() {
    return this.getChildSet('identifier');
  }

  getProps() {
    return this.getChildSet('props');
  }

  getBody() {
    return this.getChildSet('body');
  }

  addSelfToScope() {
    if (this.getIdentifier().getCount() === 0) {
      // No identifier, we can't be added to the scope.
      return;
    }
    let proptypes = this.getProps().children.map(node => {
      let prop = node as DeclaredProperty;
      return prop.getVariableDefinition();
    })
    let identifier = (this.getIdentifier().getChild(0) as DeclaredIdentifier).getName();
    this.getScope(true).addComponent({
      name: identifier,
      deprecated: false,
      documentation: 'React Component',
      proptypes: proptypes,
    } as ComponentDefinition);
  }

  clean() {
    this.getBody().children.forEach((child: SplootNode, index: number) => {
      if (child.type === SPLOOT_EXPRESSION) {
        if ((child as SplootExpression).getTokenSet().getCount() === 0) {
          this.getBody().removeChild(index);
        }
      }
    });
  }

  generateJsAst() : ExportDeclarationKind {
    let statements = [];
    let params = [recast.types.builders.identifier('props')];
    this.getBody().children.forEach((node: JavaScriptSplootNode) => {
      let ast = node.generateJsAst();
      if (node.type === SPLOOT_EXPRESSION) {
        ast = recast.types.builders.expressionStatement(ast as ExpressionKind);
      }
      if (ast !== null) {
        statements.push(ast);
      }
    });
    let block = recast.types.builders.blockStatement(statements);
    let identifier = (this.getIdentifier().getChild(0) as JavaScriptSplootNode).generateJsAst() as IdentifierKind
    return recast.types.builders.exportDeclaration(false, recast.types.builders.functionDeclaration(identifier, params, block));
  }

  static deserializer(serializedNode: SerializedNode) : ComponentDeclaration {
    let node = new ComponentDeclaration(null);
    node.deserializeChildSet('identifier', serializedNode);
    node.deserializeChildSet('props', serializedNode);
    node.deserializeChildSet('body', serializedNode);
    return node;
  }

  static register() {
    let typeRegistration = new TypeRegistration();
    typeRegistration.typeName = COMPONENT_DECLARATION;
    typeRegistration.deserializer = ComponentDeclaration.deserializer;
    typeRegistration.hasScope = true;
    typeRegistration.properties = ['identifier'];
    typeRegistration.childSets = {'props': NodeCategory.ComponentPropertyDeclaration, 'body': NodeCategory.Statement};
    typeRegistration.layout = new NodeLayout(HighlightColorCategory.FUNCTION_DEFINITION, [
      new LayoutComponent(LayoutComponentType.KEYWORD, 'component'),
      new LayoutComponent(LayoutComponentType.CHILD_SET_INLINE, 'identifier'),
      new LayoutComponent(LayoutComponentType.CHILD_SET_TREE, 'props'),
      new LayoutComponent(LayoutComponentType.CHILD_SET_BLOCK, 'body'),
    ]);
    typeRegistration.pasteAdapters[HTML_SCRIPT_ElEMENT] = (node: SplootNode) => {
      let scriptEl = new SplootHtmlScriptElement(null);
      scriptEl.getContent().addChild(node);
      return scriptEl;
    }
  
    registerType(typeRegistration);
    registerNodeCateogry(COMPONENT_DECLARATION, NodeCategory.Statement, new Generator());
  }
}