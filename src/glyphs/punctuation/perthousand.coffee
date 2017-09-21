exports.glyphs['perthousand'] =
	unicode: '‰'
	glyphName: 'perthousand'
	characterName: 'PER MILLE SIGN'
	base: 'fraction'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: 'zero_base'
			transformOrigin: anchors[0].point
			transforms: Array(
				[ 'translateY', 340 - overshoot],
				[ 'translateX', 0.48 * (spacing * 50 + 10)],
				[ 'scaleX', 0.52 ],
				[ 'scaleY', 0.52 ]
			)
			parentParameters:
				thickness: 1.35 * thickness
				width: 0.5 * width + 0.98
		1:
			base: 'zero_base'
			transformOrigin: anchors[0].point
			transforms: Array(
				[ 'translateX', Math.max(90, thickness) + 49 + 72 * width],
				[ 'scaleX', 0.52 ],
				[ 'scaleY', 0.52 ]
			)
			parentParameters:
				thickness: 1.35 * thickness
				width: 0.5 * width + 0.98
		2:
			base: 'zero_base'
			transformOrigin: anchors[0].point
			transforms: Array(
				[ 'translateX', Math.max(90, thickness) + 49 + 72 * width + (0.5 * width + 0.5) * 84 + spacingRight + 1.35 * thickness],
				[ 'scaleX', 0.52 ],
				[ 'scaleY', 0.52 ]
			)
			parentParameters:
				thickness: 1.35 * thickness
				width: 0.5 * width + 0.98
