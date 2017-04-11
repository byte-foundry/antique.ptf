# TODO: thickness + contrast
exports.glyphs['w'] =
	unicode: 'w'
	glyphName: 'w'
	characterName: 'LATIN SMALL LETTER W'
	ot:
		advanceWidth: contours[3].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 30
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: contours[1].nodes[1].expandedTo[0].y
					expand: Object({
						width: ( 47 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 80 - (7),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 20
					)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 43 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[1].x
					y: 0
					expand: Object({
						width: ( 42 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + (13/54) * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 42 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[3].nodes[0].expandedTo[1].x - contours[2].nodes[0].expandedTo[0].x ) * 0.5
					y: contours[3].nodes[1].expandedTo[0].y
					expand: Object({
						width: ( 43 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[2].nodes[0].expandedTo[0].x + 100 * width + 80 - (7),
						contours[2].nodes[0].expandedTo[1].x + 0.75 * thickness + 20
					)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[2].nodes[1].x
					y: 0
					expand: Object({
						width: ( 47 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		# 2:
		# 	skeleton: true
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: contours[1].nodes[0].expandedTo[1].x - (13)
		# 			y: xHeight
		# 			typeOut: 'line'
		# 			expand: Object({
		# 				width: ( 42 / 54 ) * thickness
		# 				angle: 0 + 'deg'
		# 				distr: 0.25
		# 			})
		# 		1:
		# 			x: contours[3].nodes[1].x
		# 			y: contours[3].nodes[1].expandedTo[0].y
		# 			expand: Object({
		# 				width: ( 43 / 54 ) * thickness
		# 				angle: 0 + 'deg'
		# 				distr: 0.75
		# 			})
		# 3:
		# 	skeleton: true
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: Math.max(
		# 				contours[2].nodes[0].expandedTo[0].x + 100 * width + 80 - (7),
		# 				contours[2].nodes[0].expandedTo[1].x + 0.75 * thickness + 20
		# 			)
		# 			y: xHeight
		# 			typeOut: 'line'
		# 			expand: Object({
		# 				width: thickness
		# 				angle: 0 + 'deg'
		# 				distr: 0.75
		# 			})
		# 		1:
		# 			x: contours[2].nodes[0].expandedTo[0].x + ( contours[3].nodes[0].expandedTo[1].x - contours[2].nodes[0].expandedTo[0].x ) * 0.5
		# 			y: 0
		# 			expand: Object({
		# 				width: ( 47 / 54 ) * thickness
		# 				angle: 0 + 'deg'
		# 				distr: 0
		# 			})
