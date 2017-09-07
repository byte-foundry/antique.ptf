exports.glyphs['eight'] =
	unicode: '8'
	glyphName: 'eight'
	characterName: 'DIGIT EIGHT'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 100 * width + 97 - (13),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * thickness * Math.sin( ( Math.PI / 2 ) + ( 2 / 180 * Math.PI ) ) + 10 + (15)
					)
					y: Math.max(
						94,
						( contours[0].nodes[1].y + ( 49 / 54 ) * thickness * contrast ) + Math.sin( 2 / 180 * Math.PI ) * ( 0.75 * ( 57 / 54 ) * thickness ) + 10
					)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: - 178 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 98 / 197 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 49 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (14/54) * thickness
					y: contours[0].nodes[0].y
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: - 2 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].x
					y: Math.min(
						contours[0].nodes[4].y - 100,
						contours[0].nodes[4].expandedTo[1].y - Math.sin( 9 / 180 * Math.PI ) * 0.75 * ( 58 / 54 ) * thickness - 10
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: 9 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[1].x
					y: ( 385 / 700 ) * capHeight - (14)
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 39 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0.5
					})
				5:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: 171 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: Math.max(
						contours[0].nodes[4].expandedTo[1].y + 94,
						( contours[1].nodes[1].y + ( 45 / 54 ) * thickness * contrast ) + Math.sin( 2 / 180 * Math.PI ) * ( 0.75 * ( 57 / 54 ) * thickness ) + 10
					)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: - 178 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[1].y
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 45 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[2].x
					y: contours[1].nodes[0].y
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: - 2 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].x
					y: Math.min(
						contours[1].nodes[4].y - 104,
						contours[1].nodes[4].expandedTo[1].y - Math.sin( 3 / 180 * Math.PI ) * 0.75 * ( 57 / 54 ) * thickness - 10
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 3 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[1].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 49 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				5:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[3].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 177 + 'deg'
						distr: 0.25
					})
