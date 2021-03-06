exports.glyphs['T_cap_caron'] =
	unicode: 'Ť'
	glyphName: 'Tcaron'
	characterName: 'LATIN CAPITAL LETTER T WITH CARON'
	base: 'T_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'caron'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
