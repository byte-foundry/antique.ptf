exports.glyphs['caronSlovak'] =
	global: true
	glyphName: 'caron slovak'
	characterName: 'CARON SLOVAK'
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
					x: anchors[0].x + ( 28 / 54 ) * thickness * 0.25
					y: contours[0].nodes[1].y - 97
					typeOut: 'line'
					expand:
						width: ( 28 / 54 ) * thickness
						angle: Math.PI
						distr: 0.75
				1:
					x: contours[0].nodes[0].x + 20 - ( 28 / 54 ) * thickness * 0.25
					y: anchors[0].y
					typeIn: 'line'
					expand:
						width: 50 / 54 * thickness
						angle: Math.PI
						distr: 1
