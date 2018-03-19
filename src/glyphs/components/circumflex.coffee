exports.glyphs['circumflex'] =
	global: true
	glyphName: 'circumflex'
	characterName: 'MODIFIER LETTER CIRCUMFLEX ACCENT'
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
					x: anchors[0].x
					y: contours[0].nodes[1].y + 60
					typeOut: 'line'
					expand:
						width: Math.min(
							( 57 / 54 ) * thickness,
							contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x - 20
						)
						angle: Math.PI
						distr: 0.5
				1:
					x: anchors[0].x - (24) - 15 * width - Math.max( 30, ( 30 / 54 ) * thickness )
					y: anchors[0].y
					typeIn: 'line'
					expand:
						width: Math.min(
							( 36 / 54 ) * thickness * contrast * contrastExtremity,
							anchors[0].x - contours[0].nodes[1].x
						)
						angle: Math.PI
						distr: 0.75
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x + (24) + 15 * width + Math.max( 30, ( 30 / 54 ) * thickness )
					y: anchors[0].y
					typeOut: 'line'
					expand:
						width: Math.min(
							( 36 / 54 ) * thickness * contrast * contrastExtremity,
							anchors[0].x - contours[0].nodes[1].x
						)
						angle: 0
						distr: 0.75
				1:
					x: anchors[0].x
					y: contours[0].nodes[0].y
					typeIn: 'line'
					expand:
						width: Math.min(
							( 57 / 54 ) * thickness,
							contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x - 20
						)
						angle: 0
						distr: 0.5
