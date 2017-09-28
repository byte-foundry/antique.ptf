exports.glyphs['threequarters'] =
	unicode: '¾'
	glyphName: 'threequarters'
	characterName: 'VULGAR FRACTION THREE QUARTERS'
	base: 'fraction'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'figures'
	]
	components:
		0:
			base: 'three_base'
			transformOrigin: anchors[0].point
			transforms: Array(
				[ 'translateY', capHeight * 0.48 - overshoot],
				[ 'translateX', 0.48 * (spacing * 50 + 10)],
				[ 'scaleX', 0.52 ],
				[ 'scaleY', 0.52 ]
			)
			parentParameters:
				thickness: 1.35 * thickness
				width: 0.5 * width + 0.98
		1:
			base: 'four_base'
			transformOrigin: anchors[0].point
			transforms: Array(
				[ 'translateX', Math.max(90, thickness) + 49 + 72 * width],
				[ 'scaleX', 0.52 ],
				[ 'scaleY', 0.52 ]
			)
			parentParameters:
				thickness: 1.35 * thickness
				width: 0.5 * width + 0.98
