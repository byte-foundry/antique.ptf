# TODO: contrast
exports.glyphs['A'] =
	unicode: 'A'
	glyphName: 'A'
	characterName: 'LATIN CAPITAL LETTER A'
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
	anchors:
		0:
			x: contours[0].nodes[1].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
		1:
			crossbar: Utils.lineLineIntersection(
				contours[0].nodes[0].expandedTo[1].point,
				contours[0].nodes[1].expandedTo[1].point,
				contours[1].nodes[0].expandedTo[0].point,
				contours[1].nodes[1].expandedTo[0].point
			)
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
						width: ( 57 / 54 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * Math.min( 0.5, 1 - 0.5 * contrast )
					y: capHeight
					expand: Object({
						width: ( 49 / 54 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: Math.max( 0, 1.5 - 0.75 * contrast )
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 116 - (14),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 57 / 54 ) * thickness * opticThickness + 30
					)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 48 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			reversed: true
			nodes:
				0:
					x: Utils.onLine({
						y: Math.min(
							( 246 / 600 ) * xHeight * crossbar,
							anchors[1].crossbar[1] - ( ( 27 / 54 ) * thickness * opticThickness ) / 600 * xHeight
						)
						on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
					})
					y: Math.min(
						( 246 / 600 ) * xHeight * crossbar,
						anchors[1].crossbar[1] - ( ( 27 / 54 ) * thickness * opticThickness ) / 600 * xHeight
					)
					typeOut: 'line'
					expand: Object({
						width: Math.max(
							4,
							Math.min(
								( 50 / 54 ) * thickness * opticThickness,
								contours[2].nodes[0].y - ( 20 / 600 ) * xHeight
							)
						) * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Utils.onLine({
						y: contours[2].nodes[0].y
						on: [ contours[1].nodes[0].point, contours[1].nodes[1].point ]
					})
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: contours[2].nodes[0].expand.width
						angle: - 90 + 'deg'
						distr: 0
					})
