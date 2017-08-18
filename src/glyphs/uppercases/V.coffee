exports.glyphs['V'] =
	unicode: 'V'
	glyphName: 'V'
	characterName: 'LATIN CAPITAL LETTER V'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 15
		spacingRight: 50 * spacing + 15
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness * opticThickness
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: Math.max(
							( 57 / 54 ) * thickness * opticThickness,
							thickness * opticThickness / ( - Math.sin( Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) ) )
						)
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[1].x
					y: 0
					expand: Object({
						width: ( 48 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 1 - ( 8 / 49 ) * contrast
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						spacingLeft + 115 + 100 * width - (13),
						spacingLeft + contours[0].nodes[0].expand.width + 0.75 * ( 57 / 54 ) * thickness * opticThickness + 30
					)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[0].expand.width * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: ( spacingLeft + contours[0].nodes[0].expand.width ) + ( contours[1].nodes[0].expandedTo[0].x - ( spacingLeft + contours[0].nodes[0].expand.width ) ) * 0.51
					# x: contours[1].nodes[0].expandedTo[1].x
					y: 0
					expand: Object({
						width: ( 48 / 54 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: ( 9 / 48 )
					})
