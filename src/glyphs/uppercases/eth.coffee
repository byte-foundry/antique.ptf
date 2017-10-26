exports.glyphs['Eth'] =
	unicode: 'Ð'
	glyphName: 'Eth'
	characterName: 'LATIN CAPITAL LETTER ETH'
	base: 'D_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
	]
	components:
		0:
			base: 'croatstroke'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
