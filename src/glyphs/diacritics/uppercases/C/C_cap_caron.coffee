exports.glyphs['C_cap_caron'] =
	unicode: 'Č'
	glyphName: 'Ccaron'
	characterName: 'LATIN CAPITAL LETTER C WITH CARON'
	base: 'C_cap'
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
					x: parentAnchors[0].x
					y: parentAnchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ]
			)
