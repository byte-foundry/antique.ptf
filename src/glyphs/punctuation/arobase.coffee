exports.glyphs['arobase'] =
	unicode: '@'
	glyphName: 'at'
	characterName: 'COMMERCIAL AT'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
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
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 148 + 100 * width - (4),
						contours[0].nodes[2].expandedTo[1].x + ( ( 43 / 54 ) * thickness + 30 ) * 2 + 10 # TODO
					)
					y: contours[0].nodes[2].expandedTo[0].y - 29
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 17 / 54 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 125 / 247 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 18 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (4/54) * thickness
					y: Math.max(
						114,
						contours[0].nodes[1].y + ( 18 / 54 ) * thickness + 10
					)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].x
					y: Math.min(
						xHeight - 114,
						contours[0].nodes[4].y - ( 18 / 54 ) * thickness - 10
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 18 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				5:
					x: contours[0].nodes[2].x
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 47 / 54 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				6:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				7:
					x: contours[0].nodes[6].x
					y: Math.max(
						contours[0].nodes[6].expandedTo[0].y - 131,
						xHeight / 2 + 10
					)
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
