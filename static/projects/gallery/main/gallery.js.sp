{"type":"JAVASCRIPT_FILE","properties":{},"childSets":{"body":[{"type":"IMPORT","properties":{},"childSets":{"source":[{"type":"STRING_LITERAL","properties":{"value":"https://unpkg.com/es-react@16.13.1"},"childSets":{}}],"specifiers":[{"type":"DECLARED_IDENTIFIER","properties":{"identifier":"React"},"childSets":{}}]}},{"type":"COMPONENT_DECLARATION","properties":{},"childSets":{"identifier":[{"type":"DECLARED_IDENTIFIER","properties":{"identifier":"Photo"},"childSets":{}}],"props":[{"type":"DELCARED_PROEPRTY","properties":{"identifier":"url"},"childSets":{}}],"body":[{"type":"RETURN_STATEMENT","properties":{},"childSets":{"expression":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"REACT_ELEMENT","properties":{"tag":"div"},"childSets":{"attributes":[],"content":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"REACT_ELEMENT","properties":{"tag":"a"},"childSets":{"attributes":[{"type":"COMPONENT_PROPERTY","properties":{"name":"href"},"childSets":{"value":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"PROPERTY_REFERENCE","properties":{"identifier":"url"},"childSets":{}}]}}]}}],"content":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"REACT_ELEMENT","properties":{"tag":"img"},"childSets":{"attributes":[{"type":"COMPONENT_PROPERTY","properties":{"name":"src"},"childSets":{"value":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"PROPERTY_REFERENCE","properties":{"identifier":"url"},"childSets":{}}]}}]}}],"content":[]}}]}}]}}]}}]}}]}}]}}]}},{"type":"COMPONENT_DECLARATION","properties":{},"childSets":{"identifier":[{"type":"DECLARED_IDENTIFIER","properties":{"identifier":"Gallery"},"childSets":{}}],"props":[],"body":[{"type":"VARIABLE_DECLARATION","properties":{},"childSets":{"identifier":[{"type":"DECLARED_IDENTIFIER","properties":{"identifier":"pictures"},"childSets":{}}],"init":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"LIST_EXPRESSION","properties":{},"childSets":{"values":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"STRING_LITERAL","properties":{"value":"https://placekitten.com/200/140"},"childSets":{}}]}},{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"STRING_LITERAL","properties":{"value":"https://placekitten.com/200/140"},"childSets":{}}]}},{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"STRING_LITERAL","properties":{"value":"https://placekitten.com/200/140"},"childSets":{}}]}}]}}]}}]}},{"type":"RETURN_STATEMENT","properties":{},"childSets":{"expression":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"REACT_ELEMENT","properties":{"tag":"div"},"childSets":{"attributes":[],"content":[{"type":"FOR_EACH_EXPRESSION","properties":{},"childSets":{"identifier":[{"type":"DECLARED_IDENTIFIER","properties":{"identifier":"picture"},"childSets":{}}],"iterable":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"VARIABLE_REFERENCE","properties":{"identifier":"pictures"},"childSets":{}}]}}],"content":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"REACT_ELEMENT","properties":{"tag":"div"},"childSets":{"attributes":[],"content":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"REACT_ELEMENT","properties":{"tag":"a"},"childSets":{"attributes":[{"type":"COMPONENT_PROPERTY","properties":{"name":"href"},"childSets":{"value":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"VARIABLE_REFERENCE","properties":{"identifier":"picture"},"childSets":{}}]}}]}}],"content":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"REACT_ELEMENT","properties":{"tag":"img"},"childSets":{"attributes":[{"type":"COMPONENT_PROPERTY","properties":{"name":"src"},"childSets":{"value":[{"type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"type":"VARIABLE_REFERENCE","properties":{"identifier":"picture"},"childSets":{}}]}}]}}],"content":[]}}]}}]}}]}}]}}]}}]}}]}}]}}]}}]}}]}}