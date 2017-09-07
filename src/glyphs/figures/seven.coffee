# TODO: contrast + width
exports.glyphs['seven'] =
	unicode: '7'
	glyphName: 'seven'
	characterName: 'DIGIT SEVEN'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 20
		spacingRight: 50 * spacing + 20
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[0].x + 60 + Math.max( 46, ( 46 / 54 ) * thickness ) + 100 * width,
						contours[1].nodes[1].x + 175
					)
					y: capHeight
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 52 / 54 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].expandedTo[1].point ) - Math.PI / 2
						distr: 0
					})
				1:
					x: contours[0].nodes[0] .x + 31 * width
					y: 0
					expand: Object({
						width: thickness / Math.sin( Utils.lineAngle( contours[1].nodes[0].point, { x: contours[1].nodes[1].x + thickness, y: contours[1].nodes[1].y } ) )
						angle: 0 + 'deg'
						distr: 1
					})
