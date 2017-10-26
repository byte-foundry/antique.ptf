exports.glyphs['D_cap_croat'] =
	unicode: 'Đ'
	glyphName: 'Dcroat'
	characterName: 'LATIN CAPITAL LETTER D WITH STROKE'
	base: 'D_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'croatstroke'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
