exports.glyphs['exclamdown'] =
	unicode: '¡'
	glyphName: 'exclamdown'
	characterName: 'INVERTED EXCLAMATION MARK'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['scaleY', -1],
		['translateY', - xHeight]
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 30
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (28/54) * thickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 464 / 700 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[0].x
					y: - overshoot + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 60 / 54 )
						)
					) + ( 106 / 700 ) * capHeight
					expand: Object({
						width: ( 27 / 54 ) * thickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: ['dot', 'dotaccent_rounded']
			id: 'bottom'
			parentAnchors:
				0:
					x: contours[0].nodes[2].x
					y: 0
					optical: 60
