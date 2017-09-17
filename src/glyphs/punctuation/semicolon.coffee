# TODO: thickness and height
exports.glyphs['semicolon'] =
	unicode: ';'
	glyphName: 'semicolon'
	characterName: 'COLON'
	base: ','
	advanceWidth: base.advanceWidth
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: ['dotaccent', 'dotaccent_rounded']
			id: 'top'
			parentAnchors:
				0:
					x: anchors[0].dot
					y: Math.min(
						xHeight,
						Math.max(
							( 265 / 54 ) * thickness,
							xHeight - xHeight / 3
						)
					)
					optical: 60
			transformOrigin: { x: 0, y: 0 }
			transforms: Array(
				[ 'translateY', - Math.max(
					40,
					Math.min(
						160,
						( 60 / 54 ) * thickness
					)
				)]
			)
