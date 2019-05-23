accessing
noteTypes
	^ (Dictionary new
		at: 1 put: 'whole';
		at: 2 put: 'half';
		at: 4 put: 'quarter';
		at: 8 put: 'eighth';		
		at: 16 put: '16th';		
		at: 32 put: '32nd';				
		at: 64 put: '64th';
		yourself)