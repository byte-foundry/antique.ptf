# TODO: components switch does not work
exports.glyphs['dieresis'] =
	global: true
	glyphName: 'dieresis'
	characterName: 'DIAERESIS'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
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
					x: parentAnchors[0].x - ( 25 / 2 ) - Math.max(
						40,
						Math.min(
							160,
							thickness
						)
					) / 2
					y: parentAnchors[0].y
					optical: 50
		1:
			base: ['dot']
			id: 'right'
			parentAnchors:
				0:
					x: parentAnchors[0].x + ( 25 / 2 ) + Math.max(
						40,
						Math.min(
							160,
							thickness
						)
					) / 2
					y: parentAnchors[0].y
					optical: 50
