exports.glyphs['comma'] =
	unicode: ','
	glyphName: 'comma'
	characterName: 'COMMA'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 14
		spacingRight: 50 * spacing + 26
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			dot: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[0].expandedTo[1].x ) / 2
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + 29
					y: Math.min(
						Math.max(
							( 80 / 54 ) * thickness,
							20
						),
						120
					)
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 0
						distr: 0
				1:
					x: spacingLeft + (9/54) * thickness
					y: - 70
					typeIn: 'line'
					expand:
						width: ( 35 / 54 ) * thickness * contrast
						angle: 0
						distr: 0.25
