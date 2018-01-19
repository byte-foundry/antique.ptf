exports.glyphs['quotesingle'] =
	unicode: '\''
	glyphName: 'quotesingle'
	characterName: 'APOSTROPHE'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 80
		thickness: Math.max( 10, thickness )
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (15/54) * thickness
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 30 / 54 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y - 100 - Math.min( 80, ( 80 / 54 ) * thickness )
					dirOut: 0
					expand:
						width: ( 30 / 54 ) * thickness
						angle: 0
						distr: 0.5
