exports.glyphs['K'] =
	unicode: 'K'
	glyphName: 'K'
	characterName: 'LATIN CAPITAL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 5
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
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight
					typeOut: 'line'
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
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 124 - (14/54) * thickness * opticThickness,
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness * opticThickness + 15 + (15)
					)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: (( 55 / 54 ) * thickness * opticThickness) / Math.sin( Math.PI - Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point ) )
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						0,
						( 281 / 700 ) * capHeight - Math.max(
							40,
							( 40 / 54 ) * thickness * opticThickness
						)
					)
					expand: Object({
						width: ( 45 / 54 ) * thickness * opticThickness
						angle: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point ) + Math.PI / 2
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( 401 / 700 ) * capHeight
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: ( 401 / 700 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: Math.max(
							Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) + Math.PI / 2,
							Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point )
						)
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + 1
					y: 0
					expand: Object({
						width: ( 56 / 54 ) * thickness * opticThickness / Math.sin( Math.PI - Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) )
						angle: 180 + 'deg'
						distr: 0
					})
