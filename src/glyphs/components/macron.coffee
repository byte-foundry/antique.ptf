exports.glyphs['macron'] =
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
					expand: Object({
						width: ( 36 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0.1
					})
				1:
					x: anchors[0].x + 74 * width + (thickness - 54) / 2
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 36 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0.1
					})
