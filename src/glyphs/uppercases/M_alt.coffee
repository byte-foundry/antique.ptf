# TODO: all alt images
exports.glyphs['M_alt'] =
	unicode: 'M'
	glyphName: 'M'
	characterName: 'LATIN CAPITAL LETTER M'
	altImg: 'antique-no-apex-M.svg'
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
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
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
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 180 - (14),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 57 / 54 ) * thickness * opticThickness + contours[2].nodes[1].expand.width + 30
					)
					y: Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[1].nodes[1].expandedTo[0].x ) / 2
					y: contours[3].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: Math.min(
							( 43 / 54 ) * thickness * opticThickness,
							contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x - 60
						)
						angle: Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) + Math.PI / 2
						distr: 0.6
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight
					expand: Object({
						width: ( 39 / 54 ) * thickness * opticThickness / Math.sin( Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point ) )
						angle: 0 + 'deg'
						distr: Math.min( 1, Math.max( 0, ( 0.45 / 54 ) * thickness ))
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[1].nodes[1].expandedTo[0].x ) / 2
					y: Math.min(
						( 148 / 700 ) * capHeight,
						( 148 / 54 ) * thickness
					)
					typeOut: 'line'
					expand: Object({
						width: Math.min(
							( 43 / 54 ) * thickness * opticThickness,
							contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x - 60
						)
						angle: Utils.lineAngle( contours[3].nodes[1].point, contours[3].nodes[0].point ) + Math.PI / 2
						distr: 0.4
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: capHeight
					expand: Object({
						width: ( 39 / 54 ) * thickness * opticThickness / Math.sin( Utils.lineAngle( contours[3].nodes[0].point, contours[3].nodes[1].point ) )
						angle: 0 + 'deg'
						distr: Math.min( 1, Math.max( 0, 1 - ( 0.45 / 54 ) * thickness ))
					})
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[3].nodes[0].expandedTo[0].x
					y: contours[3].nodes[0].expandedTo[0].y
					typeOut: 'line'
				2:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					typeOut: 'line'
				3:
					x: contours[3].nodes[0].expandedTo[1].x
					y: contours[3].nodes[0].expandedTo[1].y
					typeOut: 'line'
