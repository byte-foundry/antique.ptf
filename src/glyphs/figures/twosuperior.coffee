exports.glyphs['twosuperior'] =
	unicode: '²'
	glyphName: 'twosuperior'
	characterName: 'SUPERSCRIPT TWO'
	parameters:
		spacingLeft: 50 * spacing + 28
		spacingRight: 50 * spacing + 25
	ot:
		advanceWidth: spacingLeft + (Math.max(
			(14/54) * thickness + 100 * width + 96 - (14),
			(14/54) * thickness + 57/54 * thickness + 0.75 * ( 58 / 54 ) * thickness + 10
		) + 3) * 0.437 + spacingRight
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
			base: 'two_base'
			transformOrigin: anchors[0].point
			transforms: Array(
				[ 'scaleX', 0.437 ],
				[ 'scaleY', 0.437 ]
				[ 'translateY', capHeight * 0.571],
				[ 'translateX', 0.563 * (spacingLeft)],
			)
			parentParameters:
				thickness: 1.35 * thickness
				width: 0.5 * width + 0.98
