{"id":"59df9391-f0fa-47cd-872e-36507d9476f8","type":"JAVASCRIPT_FILE","properties":{},"childSets":{"body":[{"id":"76a8c766-470b-480f-84b3-928e6809e9e2","type":"VARIABLE_DECLARATION","properties":{},"childSets":{"identifier":[{"id":"6f05ed94-4f4e-4e14-a9b1-82856bbb4644","type":"DECLARED_IDENTIFIER","properties":{"identifier":"context"},"childSets":{}}],"init":[{"id":"f2619685-0551-42c0-9f3a-94d5dad8d7eb","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"84d04e51-5adf-4b3c-8a0d-f26b0b189ed7","type":"NULL_LITERAL","properties":{},"childSets":{}}]}}]}},{"id":"4320105d-cb6d-479d-b4f3-c1eb4ac78597","type":"VARIABLE_DECLARATION","properties":{},"childSets":{"identifier":[{"id":"4c6f167d-63d7-4c1b-9f70-2b562aefae55","type":"DECLARED_IDENTIFIER","properties":{"identifier":"ballX"},"childSets":{}}],"init":[{"id":"c40eafae-d6b0-4ecf-991d-1c817763a5b3","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"cfd21977-3971-4b92-a064-817e828dcfd4","type":"NUMERIC_LITERAL","properties":{"value":50},"childSets":{}}]}}]}},{"id":"ccb64d10-c528-4cbe-b531-657ed8b1d90f","type":"VARIABLE_DECLARATION","properties":{},"childSets":{"identifier":[{"id":"808c293c-7acf-47ba-b75e-08fc0851f59f","type":"DECLARED_IDENTIFIER","properties":{"identifier":"ballY"},"childSets":{}}],"init":[{"id":"4772189c-1059-4bbc-af6a-ccbbb9987cd1","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"40a9fb84-a55e-451a-acef-2f264e5cbbfb","type":"NUMERIC_LITERAL","properties":{"value":70},"childSets":{}}]}}]}},{"id":"38cd9636-3833-4a39-b9e4-669f89bfcc59","type":"VARIABLE_DECLARATION","properties":{},"childSets":{"identifier":[{"id":"7f491879-9796-4359-8950-8d70e93d35fc","type":"DECLARED_IDENTIFIER","properties":{"identifier":"ballVelocityX"},"childSets":{}}],"init":[{"id":"1243bf5c-4746-4ae1-870d-eaf2bd357e8b","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"ac261db0-63c3-4b89-9d99-65a3c720fe83","type":"BINARY_OPERATOR","properties":{"operator":"-"},"childSets":{}},{"id":"89e385b8-4c2a-4864-9da0-5d2af7e25d24","type":"NUMERIC_LITERAL","properties":{"value":5},"childSets":{}}]}}]}},{"id":"f649d9b0-4755-44cb-9c1f-cad8c3c28373","type":"VARIABLE_DECLARATION","properties":{},"childSets":{"identifier":[{"id":"9bd9e25f-34ad-4c47-8e6d-f5c7d968af0f","type":"DECLARED_IDENTIFIER","properties":{"identifier":"ballVelocityY"},"childSets":{}}],"init":[{"id":"3a19caf1-c8a3-46e8-9994-1bcda57c6627","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"8e5ac9ac-f1d0-4b14-a808-3ce37a1153b3","type":"NUMERIC_LITERAL","properties":{"value":0},"childSets":{}}]}}]}},{"id":"d6099b82-5161-4a10-b015-9a4e73b8b176","type":"FUNCTION_DECLARATION","properties":{},"childSets":{"identifier":[{"id":"8db9b64e-b20b-47c1-8fba-d65cf05df8bd","type":"VARIABLE_REFERENCE","properties":{"identifier":"updatePosition"},"childSets":{}}],"params":[],"body":[{"id":"4b877c53-93f9-46dd-88c6-9eb66e982fb4","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"ecde1a15-341c-462d-8585-d7083c8804a2","type":"ASSIGNMENT","properties":{},"childSets":{"left":[{"id":"eb1cb6e7-f0ad-40ec-9320-2e2809463c47","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"8fcc0598-c4d6-4a2b-b4a0-cc2840c3b73e","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballY"},"childSets":{}}]}}],"right":[{"id":"056292be-6c83-4bb5-8f9e-8f0972a2d3f9","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"ae2ac9e3-97ac-4661-8d84-4f4e96331c00","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballY"},"childSets":{}},{"id":"02567c85-972c-434e-865f-35840ba84827","type":"BINARY_OPERATOR","properties":{"operator":"+"},"childSets":{}},{"id":"e90ee3fa-0f38-46ae-9b72-764225eb4c55","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballVelocityY"},"childSets":{}}]}}]}}]}},{"id":"5ae87119-c363-4451-bacb-d27c8cb68393","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"312d0d3a-e086-4567-98b0-cd98c1a52069","type":"ASSIGNMENT","properties":{},"childSets":{"left":[{"id":"ab8fc041-39b1-44a6-a32c-b1907cafdefd","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"75c43716-2a9c-4cd8-8882-67ffaef875e2","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballX"},"childSets":{}}]}}],"right":[{"id":"bb35f1eb-7058-442d-a9f9-b58c77f019db","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"07dac804-a9df-4c38-ab1b-5389ece0fd24","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballX"},"childSets":{}},{"id":"13484b1d-87b7-49ee-8071-bbe56b4b3352","type":"BINARY_OPERATOR","properties":{"operator":"+"},"childSets":{}},{"id":"ce405e64-eead-4282-a165-628087682a2c","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballVelocityX"},"childSets":{}}]}}]}}]}},{"id":"1f807613-fc59-4f01-91e7-c09e287d1604","type":"IF_STATEMENT","properties":{},"childSets":{"condition":[{"id":"3334516a-f86a-49ff-9abc-db8c33e032b1","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"c09e0039-9134-44f0-bde6-0c6f5a13e4f5","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballY"},"childSets":{}},{"id":"a3785166-eb67-4fbb-bccd-054567e9d3e3","type":"BINARY_OPERATOR","properties":{"operator":"+"},"childSets":{}},{"id":"f4f79ae4-8227-43ef-b651-e1a20e8dbe77","type":"NUMERIC_LITERAL","properties":{"value":10},"childSets":{}},{"id":"3c40b826-cae9-4615-bcbf-3d10931ce3e6","type":"BINARY_OPERATOR","properties":{"operator":">="},"childSets":{}},{"id":"c8a45181-dc29-4d4c-aa56-2945eab7e62e","type":"MEMBER_EXPRESSION","properties":{"member":"innerHeight"},"childSets":{"object":[{"id":"eca68c66-cbed-46d7-b251-b5c02ede36d8","type":"VARIABLE_REFERENCE","properties":{"identifier":"window"},"childSets":{}}]}}]}}],"trueblock":[{"id":"c20e1d70-7098-4792-9cef-68a29fcfd24c","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"63d0b906-b50f-4fb6-84ee-608100ddef76","type":"ASSIGNMENT","properties":{},"childSets":{"left":[{"id":"db46a10e-caa1-483a-b845-06813fb967bf","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"285975c6-ba70-40ce-9835-80a1d22456b7","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballVelocityY"},"childSets":{}}]}}],"right":[{"id":"7bd83b67-5e93-4465-b825-169f05d59c45","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"e6bc6e73-e94a-4dd4-92e3-e4c7d30f092d","type":"BINARY_OPERATOR","properties":{"operator":"-"},"childSets":{}},{"id":"4c1e11a2-f7dd-4696-8eed-d9e131c43dee","type":"NUMERIC_LITERAL","properties":{"value":1},"childSets":{}},{"id":"a8194daa-6927-4b2d-b109-1f44f6192130","type":"BINARY_OPERATOR","properties":{"operator":"*"},"childSets":{}},{"id":"d3eebd9b-a403-4096-834a-d7f176b67d04","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballVelocityY"},"childSets":{}}]}}]}}]}}]}},{"id":"5e33b3d0-14c4-489e-8e72-0cf1f6df56da","type":"IF_STATEMENT","properties":{},"childSets":{"condition":[{"id":"fb2c0ccc-acf3-4934-9da7-fc123e789bac","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"d254a88c-a5dc-467d-834e-f9350a2e0a56","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballY"},"childSets":{}},{"id":"372041ed-c6f3-4b53-892c-1d57835c683e","type":"BINARY_OPERATOR","properties":{"operator":"+"},"childSets":{}},{"id":"841224cc-19a3-4b20-982a-26cd0a3ce54f","type":"NUMERIC_LITERAL","properties":{"value":20},"childSets":{}},{"id":"fccaff08-052d-4102-bc19-4378e1fd0586","type":"BINARY_OPERATOR","properties":{"operator":"<"},"childSets":{}},{"id":"38467c68-415b-4acf-b36a-3a6613a45ae6","type":"MEMBER_EXPRESSION","properties":{"member":"innerHeight"},"childSets":{"object":[{"id":"8b6a2ffb-06d9-451e-909c-4d862dfdae69","type":"VARIABLE_REFERENCE","properties":{"identifier":"window"},"childSets":{}}]}}]}}],"trueblock":[{"id":"fe854d34-6d04-445b-8b01-859892784c98","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"97c033e5-0107-4351-8a5d-6705a7483252","type":"ASSIGNMENT","properties":{},"childSets":{"left":[{"id":"2f772dee-2d67-40cc-af70-ae6db0953907","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"b6cc7434-c32b-4ee7-acae-a2a121ffcdc1","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballVelocityY"},"childSets":{}}]}}],"right":[{"id":"a925589f-f4ac-4449-9f15-2fba45507ec7","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"fc8df619-6539-4fb7-b07b-a8a43e7fc73d","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballVelocityY"},"childSets":{}},{"id":"5b6c7c6c-9d56-469e-9a95-2aeb39ce0856","type":"BINARY_OPERATOR","properties":{"operator":"+"},"childSets":{}},{"id":"7313702a-96e3-4de1-9ae8-483c747fb9c4","type":"NUMERIC_LITERAL","properties":{"value":1},"childSets":{}}]}}]}}]}}]}},{"id":"ef80f89b-28c4-4109-bb80-c361848e477e","type":"IF_STATEMENT","properties":{},"childSets":{"condition":[{"id":"4a16f113-2c8f-41cd-888e-0983de6b0c71","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"0ddfc451-5595-48fa-b082-9aab8d2e7c87","type":"LOGICAL_EXPRESSION","properties":{"operator":"||"},"childSets":{"arguments":[{"id":"debae704-0fa1-479b-b8a4-30482ff48ca5","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"e4da2852-24c5-4167-bd32-70b3f4ff3c93","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballX"},"childSets":{}},{"id":"f3e4a2d9-9ab1-46f5-963b-fa3472f8ed05","type":"BINARY_OPERATOR","properties":{"operator":"+"},"childSets":{}},{"id":"4cfbefbb-abdc-493f-bae0-53271f1aefe2","type":"NUMERIC_LITERAL","properties":{"value":20},"childSets":{}},{"id":"1a6f0250-246a-4132-96f6-0370ef161c16","type":"BINARY_OPERATOR","properties":{"operator":">"},"childSets":{}},{"id":"23815c62-53d7-4f2c-972c-a15de4d5b0a9","type":"MEMBER_EXPRESSION","properties":{"member":"innerWidth"},"childSets":{"object":[{"id":"0274dbe2-992f-400f-83ab-f2f16a42d0b2","type":"VARIABLE_REFERENCE","properties":{"identifier":"window"},"childSets":{}}]}}]}},{"id":"85354fba-6c07-40d4-9e6c-d1f6c2bafc5a","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"8c0b3bd3-c73a-49ca-b26a-57b7ed8e69c7","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballX"},"childSets":{}},{"id":"e4687491-419d-4135-a1d3-4a88f7f28301","type":"BINARY_OPERATOR","properties":{"operator":"-"},"childSets":{}},{"id":"d160b8c8-6598-4b0c-97c0-837db657ec64","type":"NUMERIC_LITERAL","properties":{"value":20},"childSets":{}},{"id":"87d999a3-3773-40bc-968b-a035f60852ca","type":"BINARY_OPERATOR","properties":{"operator":"<"},"childSets":{}},{"id":"2bd19d57-e484-4d7b-8392-42156dc7deef","type":"NUMERIC_LITERAL","properties":{"value":0},"childSets":{}}]}}]}}]}}],"trueblock":[{"id":"f164f2c2-477d-4e8c-8d92-1ed68c83eb36","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"30b41f83-8779-4918-9c43-b8cdd0c7b8a8","type":"ASSIGNMENT","properties":{},"childSets":{"left":[{"id":"5a8681f5-0344-4296-ac62-0b22f6ba23f1","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"1e21cbcf-688a-4b70-b12c-d654bce61014","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballVelocityX"},"childSets":{}}]}}],"right":[{"id":"6c06e1cf-9ae4-43b1-a6f4-d6f12efbf1f0","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"75dd5d4e-d586-4e16-9155-e61d03d1d316","type":"BINARY_OPERATOR","properties":{"operator":"-"},"childSets":{}},{"id":"9a90daca-550d-4f0f-a229-851b6c77b975","type":"NUMERIC_LITERAL","properties":{"value":1},"childSets":{}},{"id":"9394bea4-015f-4a80-888c-700448766275","type":"BINARY_OPERATOR","properties":{"operator":"*"},"childSets":{}},{"id":"23179e3f-e1d4-4b65-b435-7d0167739c48","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballVelocityX"},"childSets":{}}]}}]}}]}}]}}]}},{"id":"dc11d8e5-dcf1-438a-b72a-6d9e0fc72ce2","type":"FUNCTION_DECLARATION","properties":{},"childSets":{"identifier":[{"id":"0c62f3a8-17e4-432f-b5d2-3fb50b70141d","type":"VARIABLE_REFERENCE","properties":{"identifier":"draw"},"childSets":{}}],"params":[{"id":"e919b8d8-0070-4e31-abde-a30a30a05500","type":"VARIABLE_REFERENCE","properties":{"identifier":"timestamp"},"childSets":{}}],"body":[{"id":"65b8fd35-1913-45ad-885d-a71b93fc02de","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"5b164085-e079-4e89-be0d-d13001eb46fb","type":"CALL_VARIABLE","properties":{"identifier":"updatePosition"},"childSets":{"arguments":[]}}]}},{"id":"c8e3c211-0a49-4a34-b004-172a14e4a18d","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"4f5de806-849a-4ea1-a46d-bc5d4d27b2dd","type":"CALL_MEMBER","properties":{"member":"clearRect"},"childSets":{"object":[{"id":"17ce020a-a822-4bc9-b3ac-c597df6abef4","type":"VARIABLE_REFERENCE","properties":{"identifier":"context"},"childSets":{}}],"arguments":[{"id":"bfbfe845-a4fd-4294-a10a-08e37068eb9e","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"d65c0659-8cdc-4a6d-8243-bef302351f11","type":"NUMERIC_LITERAL","properties":{"value":0},"childSets":{}}]}},{"id":"dceb0b5f-981f-4ec3-bd02-5057ddc21124","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"ba8ed378-080a-4d9a-8347-333e92ea7df3","type":"NUMERIC_LITERAL","properties":{"value":0},"childSets":{}}]}},{"id":"f2a463a3-6df1-4bd9-b2ae-3f19e3ccecdd","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"ad839c5c-09a2-4313-bd90-994c32aee750","type":"MEMBER_EXPRESSION","properties":{"member":"innerWidth"},"childSets":{"object":[{"id":"f30c7ec8-f872-4922-b8be-4b7dd1421e48","type":"VARIABLE_REFERENCE","properties":{"identifier":"window"},"childSets":{}}]}}]}},{"id":"96f47c06-0ec8-4d99-b1e7-a572e4876f88","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"ef7a730c-4190-466d-8e4b-ea471e6770f3","type":"MEMBER_EXPRESSION","properties":{"member":"innerHeight"},"childSets":{"object":[{"id":"978ff635-5d4f-48d9-b435-8822bb5d2493","type":"VARIABLE_REFERENCE","properties":{"identifier":"window"},"childSets":{}}]}}]}}]}}]}},{"id":"3752c2a2-e823-4373-9608-a8b4ca0a1184","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"92094ce2-2193-4269-9a76-979a0b7a0b08","type":"CALL_MEMBER","properties":{"member":"requestAnimationFrame"},"childSets":{"object":[{"id":"0187d8a6-aa13-48e8-8c77-57eee59fbcf3","type":"VARIABLE_REFERENCE","properties":{"identifier":"window"},"childSets":{}}],"arguments":[{"id":"06074659-19a8-49ec-963c-3709f525dcef","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"07f3ca9a-a7bd-46bc-9b07-c9d1c678b667","type":"VARIABLE_REFERENCE","properties":{"identifier":"draw"},"childSets":{}}]}}]}}]}},{"id":"9f1b9e4b-dfb0-4d6b-87b3-09f53b4b4e19","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"cb15e8b7-7e9d-4f0d-85bf-636e0da90259","type":"CALL_MEMBER","properties":{"member":"beginPath"},"childSets":{"object":[{"id":"772df998-fdec-4a98-8a52-5c40f322934e","type":"VARIABLE_REFERENCE","properties":{"identifier":"context"},"childSets":{}}],"arguments":[]}}]}},{"id":"23a9a70f-6725-435b-902f-b415a2d7306c","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"3bd72b86-e0f2-49e5-b1b1-f265e2de078e","type":"CALL_MEMBER","properties":{"member":"arc"},"childSets":{"object":[{"id":"c8888689-af0f-4c62-868d-f9553c08fbf5","type":"VARIABLE_REFERENCE","properties":{"identifier":"context"},"childSets":{}}],"arguments":[{"id":"21b7be62-eb3c-42a1-ba57-7ef0776f6d11","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"cfc69ff1-22e4-4822-b09d-abdcfb76e91c","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballX"},"childSets":{}}]}},{"id":"1dc07444-3799-4b98-bab1-3ebea20b08a2","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"7b4d3268-cedc-4385-bd03-9433c90e0104","type":"VARIABLE_REFERENCE","properties":{"identifier":"ballY"},"childSets":{}}]}},{"id":"d8788fd9-491f-43d5-b82c-4255fd685938","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"63b39a5d-9ec9-4088-92e3-888ad78d740c","type":"NUMERIC_LITERAL","properties":{"value":20},"childSets":{}}]}},{"id":"506433bb-9573-4d03-bcfb-d029bf44d69e","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"a627d9a5-bf50-4434-a4ed-4cf658b5c990","type":"NUMERIC_LITERAL","properties":{"value":0},"childSets":{}}]}},{"id":"cd077a08-3eea-4f11-81c6-4391e75e2e5c","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"c4ad60f5-7b6d-4a98-9643-2aa1b94742e3","type":"NUMERIC_LITERAL","properties":{"value":2},"childSets":{}},{"id":"41a39884-b34c-4104-86ab-329955b7b7e6","type":"BINARY_OPERATOR","properties":{"operator":"*"},"childSets":{}},{"id":"59f5dbbb-dcab-4b5c-8894-45806d748ce0","type":"MEMBER_EXPRESSION","properties":{"member":"PI"},"childSets":{"object":[{"id":"565ad0e1-2ac4-49fc-a388-757b19c9d620","type":"VARIABLE_REFERENCE","properties":{"identifier":"Math"},"childSets":{}}]}}]}}]}}]}},{"id":"64452847-e30b-4cb4-8856-2b939dcf7bf7","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"58190c04-9e2c-4f3b-bab1-57e854c36718","type":"ASSIGNMENT","properties":{},"childSets":{"left":[{"id":"39f65c5c-cb6b-4a2d-857a-81a63a65dda8","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"559e0bf3-ebb6-4f4e-8e1a-685bbe3b132f","type":"MEMBER_EXPRESSION","properties":{"member":"fillStyle"},"childSets":{"object":[{"id":"495dacdb-d007-4679-b736-9b1c7408038f","type":"VARIABLE_REFERENCE","properties":{"identifier":"context"},"childSets":{}}]}}]}}],"right":[{"id":"c4830301-61b3-44a3-96c3-3e9845b487f1","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"ff1c79b4-93f2-421e-a352-fd4401a6a7b6","type":"STRING_LITERAL","properties":{"value":"rgb(0, 0, 200)"},"childSets":{}}]}}]}}]}},{"id":"caac0b60-ccf9-40eb-85be-8636ede6762b","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"9f3c7ced-16d7-43c6-9e6c-28d1908a8bc8","type":"CALL_MEMBER","properties":{"member":"fill"},"childSets":{"object":[{"id":"4d2c42f1-2e3f-4d55-801e-de132098bd7d","type":"VARIABLE_REFERENCE","properties":{"identifier":"context"},"childSets":{}}],"arguments":[]}}]}}]}},{"id":"f3fac31a-5790-4082-9ed4-f04d5dedefae","type":"FUNCTION_DECLARATION","properties":{},"childSets":{"identifier":[{"id":"3c753e92-1b73-43ef-ab58-da3b50627360","type":"VARIABLE_REFERENCE","properties":{"identifier":"load"},"childSets":{}}],"params":[],"body":[{"id":"a2a18979-e0b9-44ff-b015-db5f7d080c5f","type":"VARIABLE_DECLARATION","properties":{},"childSets":{"identifier":[{"id":"bf9f11a3-ee91-4959-9920-c5ad082b5794","type":"DECLARED_IDENTIFIER","properties":{"identifier":"canvas"},"childSets":{}}],"init":[{"id":"4793e8f0-d797-4a93-90cb-aa872e8fd1d2","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"c86dbad2-e5fd-4655-9ae1-53812eb49917","type":"CALL_MEMBER","properties":{"member":"getElementById"},"childSets":{"object":[{"id":"ccbe1d29-c5ac-49a3-a351-2e23a55c7084","type":"VARIABLE_REFERENCE","properties":{"identifier":"document"},"childSets":{}}],"arguments":[{"id":"1df040dd-22d5-426d-bc3c-e3dd19ab6d98","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"39cb0e76-9ed1-4cc3-9acb-1ac8c0c56bb0","type":"STRING_LITERAL","properties":{"value":"canvas"},"childSets":{}}]}}]}}]}}]}},{"id":"1fed8f8f-0841-4d88-ba20-a61af949a574","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"ac873b69-09c3-44b1-ab5c-b1d1ad3c6b8f","type":"ASSIGNMENT","properties":{},"childSets":{"left":[{"id":"87834e90-0c0d-4a40-8dd7-fa78dea24d78","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"b8a067c8-447a-4864-a8d7-a21304b56ccd","type":"VARIABLE_REFERENCE","properties":{"identifier":"context"},"childSets":{}}]}}],"right":[{"id":"84461ed4-52bc-40ed-957f-1d416c4dd5bb","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"def6e467-6b70-475d-85ca-b311aa276fd7","type":"CALL_MEMBER","properties":{"member":"getContext"},"childSets":{"object":[{"id":"01e37cbc-a2dd-4241-a200-128746f1e7f0","type":"VARIABLE_REFERENCE","properties":{"identifier":"canvas"},"childSets":{}}],"arguments":[{"id":"e16904b1-4a43-4d8c-a74d-dfc30fa38241","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"5b1cca2d-21cd-4144-a0fc-9769d600fa08","type":"STRING_LITERAL","properties":{"value":"2d"},"childSets":{}}]}}]}}]}}]}}]}},{"id":"e9cec474-c948-431f-bb58-a20a091ffb61","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"b8cfe3e4-3771-4490-af67-c0ce51c7c493","type":"ASSIGNMENT","properties":{},"childSets":{"left":[{"id":"f9ae80ee-ba6b-4696-9e0b-b10922c18cac","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"4dc9878a-dc7f-48bd-ae01-f1704ee6e7d3","type":"MEMBER_EXPRESSION","properties":{"member":"width"},"childSets":{"object":[{"id":"5d01859c-d80b-4855-9ef6-0621f01bbef4","type":"VARIABLE_REFERENCE","properties":{"identifier":"canvas"},"childSets":{}}]}}]}}],"right":[{"id":"13cbf9b1-d22f-4b8c-a876-9fb683d2d8b1","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"01cb7fa6-9f99-48fe-8972-8d87133b7a4b","type":"MEMBER_EXPRESSION","properties":{"member":"innerWidth"},"childSets":{"object":[{"id":"79bd3ec4-c5c5-4942-bd11-5393661c536e","type":"VARIABLE_REFERENCE","properties":{"identifier":"window"},"childSets":{}}]}}]}}]}}]}},{"id":"b1db5c30-0e91-4b13-aa0f-ec8bc7191520","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"8066750e-303f-4fce-80b7-3ef7029ea0ac","type":"ASSIGNMENT","properties":{},"childSets":{"left":[{"id":"9130c3df-7243-4ea1-a062-e2070544b99a","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"0878bafc-2f5a-4779-beab-f8192a4bfd8b","type":"MEMBER_EXPRESSION","properties":{"member":"height"},"childSets":{"object":[{"id":"e43e0d68-2acf-4312-91f2-394150651496","type":"VARIABLE_REFERENCE","properties":{"identifier":"canvas"},"childSets":{}}]}}]}}],"right":[{"id":"2ae0f5dc-6b38-4199-b665-00dc2af47b18","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"51f06652-63f7-4c18-acee-c765b9a53f05","type":"MEMBER_EXPRESSION","properties":{"member":"innerHeight"},"childSets":{"object":[{"id":"73348db1-1f2b-4da4-aea2-55394a38080d","type":"VARIABLE_REFERENCE","properties":{"identifier":"window"},"childSets":{}}]}}]}}]}}]}},{"id":"c8b35b86-29f7-4a11-8956-dbd312276ecc","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"dfa536ef-3b03-4727-91fe-8a4e09b2681d","type":"CALL_MEMBER","properties":{"member":"requestAnimationFrame"},"childSets":{"object":[{"id":"293670ab-7fa6-4010-a260-3c69101c2a34","type":"VARIABLE_REFERENCE","properties":{"identifier":"window"},"childSets":{}}],"arguments":[{"id":"9af32cd7-a202-4df4-bbfe-90e2c170200a","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"a61386c2-c6e7-4044-b848-b58667df98dc","type":"VARIABLE_REFERENCE","properties":{"identifier":"draw"},"childSets":{}}]}}]}}]}}]}},{"id":"3dd7046a-d60b-479b-b3db-f4aab8ded566","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"dd83809d-e409-4b61-b133-3a06964f1956","type":"ASSIGNMENT","properties":{},"childSets":{"left":[{"id":"c577154a-ac9c-4c3a-892b-bcf61e3c9e34","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"bb08c167-937b-49a0-8f7b-3769e3f0b035","type":"MEMBER_EXPRESSION","properties":{"member":"onload"},"childSets":{"object":[{"id":"b16e6378-237c-4e61-be64-d7976590337d","type":"VARIABLE_REFERENCE","properties":{"identifier":"window"},"childSets":{}}]}}]}}],"right":[{"id":"28d5ba30-92e0-4123-8c0d-67d5ea413a70","type":"SPLOOT_EXPRESSION","properties":{},"childSets":{"tokens":[{"id":"d601df75-668c-4a5b-ab1f-c973ac8683ea","type":"VARIABLE_REFERENCE","properties":{"identifier":"load"},"childSets":{}}]}}]}}]}}]}}