baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'MusicNotation-Core';
				package: 'MusicNotation-XML' with: [spec requires: #('MusicNotation-Core')];
				package: 'MusicNotation-Graphics' with: [spec requires: #('MusicNotation-Core')];
				package: 'MusicNotation-Player' with: [spec requires: #('MusicNotation-Core')];
				package: 'MusicNotation-Scripting' with: [spec requires: #('MusicNotation-Core')];
				package: 'MusicNotation-Tests' with: [spec requires: #(
					'MusicNotation-Core'
					'MusicNotation-XML'
					'MusicNotation-Graphics'
					'MusicNotation-Player'
					'MusicNotation-Scripting'
				)];
				yourself.
			spec
				group: 'default' with: #(
					'MusicNotation-Core'
					'MusicNotation-XML'
					'MusicNotation-Graphics'
					'MusicNotation-Player'
					'MusicNotation-Scripting'
				);
				group: 'tests' with: #('MusicNotation-Tests')];
				yourself