# TODO: components switch does not work
exports.glyphs['dieresis'] =
	glyphName: 'dieresis'
	characterName: 'DIAERESIS'
	anchors:
		0:
			x: parentAnchors[0].x - (10/54) * thickness
			y: parentAnchors[0].y + 30
	tags: [
		'component',
		'diacritic'
	]
	components:
		0:
			base: ['dot']
			id: 'left'
			parentAnchors:
				0:
					x: anchors[0].x - ( 20 / 2 ) - Math.max(
						40,
						Math.min(
							160,
							thickness
						)
					) / 2
					y: anchors[0].y
		1:
			base: ['dot']
			id: 'right'
			parentAnchors:
				0:
					x: anchors[0].x + ( 20 / 2 ) + Math.max(
						40,
						Math.min(
							160,
							thickness
						)
					) / 2
					y: anchors[0].y
