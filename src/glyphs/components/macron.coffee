exports.glyphs['macron'] =
	global: true
	glyphName: 'macron'
	characterName: 'MACRON'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x - 74 * width - (thickness - 54) / 2
					y: anchors[0].y + (4)
					typeOut: 'line'
					expand:
						width: ( 36 / 54 ) * thickness
						angle: Math.PI / 2
						distr: 0.1
				1:
					x: anchors[0].x + 74 * width + (thickness - 54) / 2
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand:
						width: ( 36 / 54 ) * thickness
						angle: Math.PI / 2
						distr: 0.1
