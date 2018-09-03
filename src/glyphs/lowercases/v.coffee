exports.glyphs['v'] =
	unicode: 'v'
	glyphName: 'v'
	characterName: 'LATIN SMALL LETTER V'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing  + 17 + serifWidth
		spacingRight: 50 * spacing + 17 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x * 0.5 + contours[1].nodes[1].expandedTo[0].x * 0.5
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
				1:
					x: spacingLeft + (17/54) * thickness
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 75 / 73* thickness )
						angle: 0
						distr: 0.3
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x * 0.5 + contours[1].nodes[1].expandedTo[0].x * 0.5
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
				1:
					x: 220 + 189 * width
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 75 / 73* thickness )
						angle: 0
						distr: 0.7
