exports.glyphs['ǿ'] =
	unicode: 'ǿ'
	glyphName: 'oslashacute'
	characterName: 'LATIN SMALL LETTER O WITH STROKE AND ACUTE'
	base: 'o'
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
					left: anchors[0].left
					right: anchors[0].right
		1:
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
