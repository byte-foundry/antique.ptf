exports.glyphs['N'] =
	unicode: 'N'
	glyphName: 'N'
	characterName: 'LATIN CAPITAL LETTER N'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (14/54) * thickness * opticThickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 49 / 54 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 107 - (14),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 49 / 54 ) * thickness * opticThickness + 30
					)
					y: Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 49 / 54 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: Math.min(
							( 48 / 54 ) * thickness * opticThickness / Math.sin( Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point ) ),
							contours[1].nodes[0].expand.width
						)
						angle: 0 + 'deg'
						distr: Math.min( 0.55, Math.max( 0, 1 - ( 0.45 / 54 ) * thickness ))
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight
					expand: Object({
						width: Math.min(
							( 48 / 54 ) * thickness * opticThickness / Math.sin( Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point ) ),
							contours[0].nodes[0].expand.width
						)
						angle: 0 + 'deg'
						distr: Math.min( 1, Math.max( 0.45, ( 0.45 / 54 ) * thickness ))
					})
