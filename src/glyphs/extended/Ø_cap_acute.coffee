exports.glyphs['Ǿ'] =
	unicode: 'Ǿ'
	glyphName: 'Oslashacute'
	characterName: 'LATIN CAPITAL LETTER O WITH STROKE AND ACUTE'
	base: 'O_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'stroke'
			copy: true
			parentAnchors:
				0:
					left: parentAnchors[0].left
					right: parentAnchors[0].right
			parameters:
				xHeight: capHeight
		1:
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
