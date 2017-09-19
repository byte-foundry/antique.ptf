exports.glyphs['dot'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			optical: if typeof parentAnchors[0].optical != 'undefined' then ( parentAnchors[0].optical / 54 ) * thickness else thickness
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x - Math.max(
						15,
						Math.min(
							180,
							anchors[0].optical
						)
					) / 2
					y: anchors[0].y
					typeOut: 'line'
				1:
					x: contours[0].nodes[0].x
					y: 	contours[0].nodes[0].y + Math.max(
							15,
							Math.min(
								180,
								anchors[0].optical
							)
						)
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].x + Math.max(
						15,
						Math.min(
							180,
							anchors[0].optical
						)
					)
					y: contours[0].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
