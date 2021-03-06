import { HighlightColorCategory } from "../../../layout/colors";
import { ChildSetType } from "../../childset";
import { getValidElements } from "../../html/tags";
import { ParentReference, SplootNode } from "../../node";
import { NodeCategory, SuggestionGenerator, registerNodeCateogry } from "../../node_category_registry";
import { SuggestedNode } from "../../suggested_node";
import { LayoutComponent, LayoutComponentType, NodeLayout, registerType, SerializedNode, TypeRegistration } from "../../type_registry";
import { SplootHtmlAttribute } from "./html_attribute";
import { HTML_SCRIPT_ElEMENT } from "./html_script_element";
import { HTML_STYLE_ELEMENT } from "./html_style_element";
import { StringLiteral, STRING_LITERAL } from "../literals";

export const HTML_ElEMENT = 'HTML_ELEMENT';

class Generator implements SuggestionGenerator {

  staticSuggestions(parent: ParentReference, index: number) : SuggestedNode[] {
    if (parent.node.type === HTML_ElEMENT) {
      return getValidElements((parent.node as SplootHtmlElement).getTag(), [])
    }
    return [];
  };

  dynamicSuggestions(parent: ParentReference, index: number, textInput: string) : SuggestedNode[] {
    return [];
  };
}

export class SplootHtmlElement extends SplootNode {
  constructor(parentReference: ParentReference, tag: string) {
    super(parentReference, HTML_ElEMENT);
    this.setProperty('tag', tag);
    this.addChildSet('attributes', ChildSetType.Many, NodeCategory.HtmlAttribute);
    this.addChildSet('content', ChildSetType.Many, NodeCategory.DomNode);
  }

  getTag() : string {
    return this.getProperty('tag');
  }

  getAttributes() {
    return this.getChildSet('attributes');
  }

  getContent() {
    return this.getChildSet('content');
  }

  generateHtmlElement(doc: Document) : HTMLElement {
    let thisEl = doc.createElement(this.getTag());
    this.getAttributes().children.forEach((childNode) => {
      if (childNode.type === 'HTML_ATTRIBUTE') {
        let attrNode = childNode as SplootHtmlAttribute;
        thisEl.setAttribute(attrNode.getName(), attrNode.generateCodeString());
      }
    });
    this.getContent().children.forEach((child: SplootNode) => {
      if (child.type === HTML_ElEMENT || child.type === HTML_SCRIPT_ElEMENT || child.type === HTML_STYLE_ELEMENT) {
        let el = child as SplootHtmlElement;
        thisEl.appendChild(el.generateHtmlElement(doc));
      }
      if (child.type === STRING_LITERAL) {
        let stringEl = child as StringLiteral;
        thisEl.appendChild(doc.createTextNode(stringEl.getValue()));
      }
    });
    return thisEl;
  }

  generateCodeString() : string {
    let doc = new DOMParser().parseFromString('<!DOCTYPE html>', 'text/html');
    let result = this.generateHtmlElement(doc);
    // @ts-ignore
    return new XMLSerializer().serializeToString(result, true);
  }

  static deserializer(serializedNode: SerializedNode) : SplootHtmlElement {
    let doc = new SplootHtmlElement(null, serializedNode.properties.tag);
    doc.deserializeChildSet('attributes', serializedNode);
    doc.deserializeChildSet('content', serializedNode);
    return doc;
  }

  static register() {
    let typeRegistration = new TypeRegistration();
    typeRegistration.typeName = HTML_ElEMENT;
    typeRegistration.deserializer = SplootHtmlElement.deserializer;
    typeRegistration.childSets = {
      'attributes': NodeCategory.HtmlAttribute,
      'content': NodeCategory.DomNode,
    };
    typeRegistration.layout = new NodeLayout(HighlightColorCategory.HTML_ELEMENT, [
      new LayoutComponent(LayoutComponentType.PROPERTY, 'tag'),
      new LayoutComponent(LayoutComponentType.CHILD_SET_TREE, 'attributes'),
      new LayoutComponent(LayoutComponentType.CHILD_SET_BLOCK, 'content'),
    ]);

    registerType(typeRegistration);
    registerNodeCateogry(HTML_ElEMENT, NodeCategory.DomNode, new Generator());
  }
}