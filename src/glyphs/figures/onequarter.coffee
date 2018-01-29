exports.glyphs['onequarter'] =
	unicode: '¼'
	glyphName: 'onequarter'
	characterName: 'VULGAR FRACTION ONE QUARTER'
	base: 'fraction'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'figures'
	]
	components:
		0:
			base: 'one_base'
			transformOrigin: anchors[0].point
			transforms: Array(
				[ 'scaleX', 0.52 ],
				[ 'scaleY', 0.52 ]
				[ 'translateY', capHeight * 0.48 - overshoot],
				[ 'translateX', 0.48 * (spacing * 50 + 10)],
			)
			parameters:
				thickness: 1.35 * thickness
				width: 0.5 * width + 0.98
		1:
			base: 'four_base'
			transformOrigin: anchors[0].point
			transforms: Array(
				[ 'scaleX', 0.52 ],
				[ 'scaleY', 0.52 ]
				[ 'translateX', Math.max(90, thickness) + 49 + 72 * width],
			)
			parameters:
				thickness: 1.35 * thickness
				width: 0.5 * width + 0.98
