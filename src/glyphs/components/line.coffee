exports.glyphs['line'] =
	characterName: 'VERTICAL LINE'
	parameters:
		thickness: Math.max( 40, Math.min( 120, thickness ))
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: parentAnchors[0].y + 45
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: - 50
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
