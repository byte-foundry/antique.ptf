exports.glyphs['grave'] =
	glyphName: 'grave'
	characterName: 'GRAVE ACCENT'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			position: if typeof parentAnchors[0].position != 'undefined' then parentAnchors[0].position else 0.5
	tags: [
		'component',
		'diacritic'
	]
	# transforms: Array(
	# 	['translate', ( contours[0].nodes[0].expandedTo[0].x - contours[2].nodes[1].x ) * anchors[0].position ]
	# )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x + (9)
					y: anchors[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 35 / 54 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 51 * width
					y: contours[0].nodes[0].expandedTo[0].y + 60
					type: 'smooth'
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: 180 + 'deg'
						distr: 0
					})
