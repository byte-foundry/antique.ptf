exports.glyphs['threesuperior'] =
	unicode: '³'
	glyphName: 'threesuperior'
	characterName: 'SUPERSCRIPT THREE'
	parameters:
		spacingLeft: 50 * spacing + 28
		spacingRight: 50 * spacing + 25
	advanceWidth: spacingLeft + (Math.max(
		(14/54) * thickness + 100 * width + 96 - (14),
		(14/54) * thickness + 57/54 * thickness + 0.75 * ( 58 / 54 ) * thickness + 10
	) + 3) * 0.444 + spacingRight
	tags: [
		'all',
		'latin',
		'figures'
	]
	anchors:
		0:
			x: 0
			y: 0
	components:
		0:
			base: 'three_base'
			transformOrigin: anchors[0].point
			transforms: Array(
				[ 'translateY', capHeight * 0.564],
				[ 'translateX', 0.556 * (spacingLeft)],
				[ 'scaleX', 0.444 ],
				[ 'scaleY', 0.444 ]
			)
			parentParameters:
				thickness: 1.35 * thickness
				width: 0.5 * width + 0.98
