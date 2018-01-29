exports.glyphs['ordmasculine'] =
	unicode: 'º'
	glyphName: 'ordmasculine'
	characterName: 'MASCULINE ORDINAL INDICATOR'
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
	base: 'o'
	transforms: Array(
		[ 'scaleX', 0.504 ],
		[ 'scaleY', 0.504 ]
		[ 'translateY', capHeight * 0.565],
		[ 'translateX', 0.496 * (spacingLeft)],
	)
	components:
		0:
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + 5
					y: -80
			parameters:
				width: 1.16 * width
