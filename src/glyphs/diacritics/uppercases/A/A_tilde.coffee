exports.glyphs['A_tilde'] =
	unicode: 'Ã'
	glyphName: 'Atilde'
	characterName: 'LATIN CAPITAL LETTER A WITH TILDE'
	base: 'A'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'tilde'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y - 1/40 * diacriticHeight
