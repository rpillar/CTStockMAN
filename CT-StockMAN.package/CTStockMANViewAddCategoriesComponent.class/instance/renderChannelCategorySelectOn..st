as yet unclassified
renderChannelCategorySelectOn: html

	html div 
		class: 'row';
		with: [ 
			html div
				class: 'input-field col s5';
				style: 'margin-left:45px;';
				with: [
					html select
						id: 'channel-category';
						style: 'margin-left:20px;';
						size: 4;	
						list: self channelCategoryNames;
						selected: ( self channelCategoryNames at: 1);
						callback: [ :value | self channelCategory: value asString ].		
					html label 
						attributeAt: 'for' put: 'channelCatgeory';
						with: 'Channel Category'.			
				].	
				
				html div 
					class: 'input-field col s5';
					style: 'margin-left:20px;';
					with: [
					html textInput 
						class: 'validate category-name';
						attributeAt: 'autocomplete' put: 'off';
						attributeAt: 'length' put: 65;
						"autofocus;"
						on: #categoryName of: self.				
					html label 
						attributeAt: 'for' put: 'icon-prefix';
						with: 'Category Name'.	
				].	
		].