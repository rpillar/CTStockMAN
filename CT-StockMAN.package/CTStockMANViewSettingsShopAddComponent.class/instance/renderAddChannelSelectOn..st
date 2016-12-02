accessing
renderAddChannelSelectOn: html

	html div 
		class: 'row';
		with: [ 
			html div
				class: 'input-field col s5';
				with: [
					html select
						id: 'channel';
						style: 'margin-left:20px;';
						size: 2;	
						list: self channelNames;
						selected: ( self channelNames at: 1);
						callback: [ :value | self channel: value asString ].		
					html label 
						attributeAt: 'for' put: 'channel';
						with: 'Channel'.			
				].	
		].
	
	html document addLoadScript: ( ( JSStream on: '$(''select'').material_select({ minimumResultsForSearch: Infinity })' ) ) .