exports.glyphs['ordfeminine'] =
	unicode: 'ª'
	glyphName: 'ordfeminine'
	characterName: 'FEMININE ORDINAL INDICATOR'
	parameters:
		spacingLeft: 50 * spacing + 28
		spacingRight: 50 * spacing + 25
		thickness: 1.35 * thickness
	advanceWidth: base.advanceWidth * 0.504
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	base: 'a'
	transformOrigin:
		x: 0
		y: 0
	transforms: Array(
		[ 'translateY', capHeight * 0.565],
		[ 'translateX', 0.496 * (spacingLeft)],
		[ 'scaleX', 0.504 ],
		[ 'scaleY', 0.504 ]
	)
	components:
		0:
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x + 5
					y: -80
			parentParameters:
				width: 1.16 * width
