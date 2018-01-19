exports.glyphs['ring'] =
	glyphName: 'ring'
	characterName: 'RING ABOVE'
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
			closed: true
			nodes:
				0:
					x: anchors[0].x - ( 14 / 54 ) * thickness - 30 + (6 / 54) * thickness
					y: ( contours[0].nodes[1].expandedTo[0].y + contours[0].nodes[3].expandedTo[0].y ) / 2
					dirOut: Math.PI / 2
					# tensionIn: 0.9
					# tensionOut: 0.9
					type: 'smooth'
					expand:
						width: Math.min(
							( 25 / 54 ) * thickness,
							( contours[0].nodes[2].x - contours[0].nodes[0].x ) / 2 - 2
						)
						angle:( 1 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: anchors[0].x
					y: contours[0].nodes[3].y + 69 # ( 140 + ( 26 / 54 ) * thickness )
					dirOut: 0
					type: 'smooth'
					expand:
						width: Math.min(
							( 19 / 54 ) * thickness * contrast,
							( contours[0].nodes[1].y - contours[0].nodes[3].y ) / 2 - 2
						)
						angle: - Math.PI / 2
						distr: 0
				2:
					x: anchors[0].x + ( 14 / 54 ) * thickness + 30 - (6 / 54) * thickness
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: - Math.PI / 2
					type: 'smooth'
					# tensionOut: 0.9
					expand:
						width: Math.min(
							( 25 / 54 ) * thickness,
							( contours[0].nodes[2].x - contours[0].nodes[0].x ) / 2 - 2
						)
						angle:( 181 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: anchors[0].y
					dirIn: 0
					# tensionIn: 0.9
					# tensionOut: 0.9
					type: 'smooth'
					expand:
						width: Math.min(
							( 19 / 54 ) * thickness * contrast,
							( contours[0].nodes[1].y - contours[0].nodes[3].y ) / 2 - 2
						)
						angle: Math.PI / 2
						distr: 0
