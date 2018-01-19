exports.glyphs['hyphen'] =
	unicode: '-'
	glyphName: 'hyphen'
	characterName: 'HYPHEN-MINUS'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 12
		spacingRight: 50 * spacing + 12
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
					x: spacingLeft
					y: xHeight * ( 335 / 500 ) * crossbar
					typeOut: 'line'
					expand:
						width: ( 46 / 54 ) * thickness
						angle: Math.PI / 2
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 50 + 100 * width
					y: contours[0].nodes[0].y
					expand:
						width: ( 46 / 54 ) * thickness
						angle: Math.PI / 2
						distr: 0.5
