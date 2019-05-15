baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'MusicNotation-Core';
				package: 'MusicNotation-Player' with: [spec requires: #('MusicNotation-Core')];
				package: 'MusicNotation-XML' with: [spec requires: #('MusicNotation-Core')];
				package: 'MusicNotation-Tests' with: [spec requires: #('MusicNotation-Core')];
				yourself.
			spec
				group: 'default' with: #('MusicNotation-Core' 'MusicNotation-Player' 'MusicNotation-XML');
				group: 'tests' with: #('MusicNotation-Tests')];
				yourself