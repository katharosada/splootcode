import React from 'react'
import { NodeBlock } from '../../layout/rendered_node';

import "./editor.css";
import { NodeSelection, SelectionState } from '../../context/selection';
import { observer } from 'mobx-react';
import { InsertBox } from './insert_box';
import { JAVASCRIPT_FILE } from '../../language/types/js/javascript_file';
import { HTML_DOCUMENT } from '../../language/types/html/html_document';
import { ActiveCursor } from './cursor';
import { Panel } from '../panel';
import { adaptNodeToPasteDestination, deserializeNode } from '../../language/type_registry';
import { EditorLayout } from '../../layout/editor_layout';
import { LineComponent } from './line';
import { Line } from '../../layout/line';

const SPLOOT_MIME_TYPE = 'application/splootcodenode';

interface EditorProps {
  block: NodeBlock;
  layout: EditorLayout;
  width: number;
  selection: NodeSelection;
}

@observer
export class Editor extends React.Component<EditorProps> {
  private svgRef: React.RefObject<SVGSVGElement>;

  constructor(props: EditorProps) {
    super(props);
    this.svgRef = React.createRef();
  }

  render() {
    let {block, selection, layout} = this.props;
    let fileBody = null;
    if (block.node.type === JAVASCRIPT_FILE || block.node.type === HTML_DOCUMENT) {
      fileBody = block.renderedChildSets['body'];
    }
    let height = block.rowHeight + block.indentedBlockHeight;
    let insertBox = null;
    if (selection.isCursor() && selection.insertBox !== null) {
      // Whelp, this is ugly, but hey it works. :shrug:
      // This forces the insertbox to be regenerated and refocused when the insert changes position.
      let insertKey = selection.cursor.index + selection.cursor.listBlock.parentRef.childSetId + selection.cursor.listBlock.parentRef.node.node.type;
      insertBox = <InsertBox key={insertKey} editorX={1} editorY={45} selection={selection} insertBoxData={selection.insertBox} />
    }
    let selectedLine = this.props.selection.line;
    return <div className="editor">
      <Panel selection={selection}/>
      <svg className="editor-svg" xmlns="http://www.w3.org/2000/svg" ref={this.svgRef} height={height} preserveAspectRatio="none" onClick={this.clickHandler}>
        {
          layout.lines.map(line => {
            let cursor = selectedLine === line ? this.props.selection.lineCursor : null;
            let result = <LineComponent key={line.key} line={line} lineCursor={cursor}/>
            return result;
          })
        }
      </svg>
      { insertBox }
    </div>;
  }

  clickHandler = (event: React.MouseEvent<SVGElement, MouseEvent>) => {
    let rect = this.svgRef.current.getBoundingClientRect();
    let x = event.clientX - rect.left;
    let y = event.clientY - rect.top;
    this.props.selection.selectByCoordinate(x, y);
  }

  clipboardHandler = (event: ClipboardEvent) => {
    let {selection} = this.props;
    if (event.type === 'copy' || event.type === 'cut') {
      if(event.target instanceof SVGElement) {
        let selectedNode = selection.selectedNode;
        if (selectedNode !== null) {
          let jsonNode = JSON.stringify(selectedNode.serialize());
          // Maybe change to selectedNode.generateCodeString()
          // once we have paste of text code supported.
          let friendlytext = jsonNode;
          event.clipboardData.setData('text/plain', friendlytext);
          event.clipboardData.setData(SPLOOT_MIME_TYPE, jsonNode);
          event.preventDefault();
        }
      }
    }
    if (event.type === 'cut') {
      selection.deleteSelectedNode();
    }
    if (event.type === 'paste') {
      let splootData = event.clipboardData.getData(SPLOOT_MIME_TYPE);
      if (splootData) {
        let node = deserializeNode(JSON.parse(splootData));
        let destinationCategory = selection.getPasteDestinationCategory();
        node = adaptNodeToPasteDestination(node, destinationCategory);
        if (node && selection.isCursor()) {
          selection.insertNodeAtCurrentCursor(node);
          event.preventDefault();
        } else if (node && selection.isSingleNode()) {
          selection.deleteSelectedNode();
          selection.insertNodeAtCurrentCursor(node);
          event.preventDefault();
        } else {
          // paste failed :(
        }
      }
    }
  }

  keyHandler = (event: KeyboardEvent) => {
    let { selection } = this.props;
    if (event.isComposing) {
      // IME composition
      return;
    }
    switch (event.key) {
      case 'Backspace':
      case 'Delete':
        this.props.selection.deleteSelectedNode();
        break;
      case 'Tab':
        selection.moveCursorToNextInsert();
        event.preventDefault();
        event.cancelBubble = true;
      case 'ArrowRight':
        selection.moveKeyRight();
        event.preventDefault();
        event.cancelBubble = true;
        break;
      case 'ArrowLeft':
        selection.moveKeyLeft();
        event.preventDefault();
        event.cancelBubble = true;
        break;
      case 'ArrowUp':
        selection.moveKeyUp();
        event.preventDefault();
        event.cancelBubble = true;
        break;
      case 'ArrowDown':
        selection.moveKeyDown();
        event.preventDefault();
        event.cancelBubble = true;
        break;
    }
  }

  componentDidMount() {
    document.addEventListener('keydown', this.keyHandler);
    document.addEventListener('cut', this.clipboardHandler);
    document.addEventListener('copy', this.clipboardHandler);
    document.addEventListener('paste', this.clipboardHandler);
  }

  componentWillUnmount() {
    document.removeEventListener('keydown', this.keyHandler);
    document.removeEventListener('cut', this.clipboardHandler);
    document.removeEventListener('copy', this.clipboardHandler);
    document.removeEventListener('paste', this.clipboardHandler);
  }
}