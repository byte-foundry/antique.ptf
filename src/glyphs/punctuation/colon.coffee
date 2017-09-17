# TODO: thickness and height
exports.glyphs['colon'] =
	unicode: ':'
	glyphName: 'colon'
	characterName: 'COLON'
	ot:
		advanceWidth: spacingLeft + Math.max(
			40,
			Math.min(
				160,
				( 60 / 54 ) * thickness
			)
		) + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 65
		spacingRight: 50 * spacing + 65
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: ['dot', 'dotaccent_rounded']
			id: 'bottom'
			parentAnchors:
				0:
					x: ( spacingLeft + Math.max(
						40,
						Math.min(
							160,
							( 60 / 54 ) * thickness
						)
					) + spacingRight ) / 2
					y: 0
					optical: 60
		1:
			base: ['dot', 'dotaccent_rounded']
			id: 'top'
			parentAnchors:
				0:
					x: ( spacingLeft + Math.max(
						40,
						Math.min(
							160,
							( 60 / 54 ) * thickness
						)
					) + spacingRight ) / 2
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
