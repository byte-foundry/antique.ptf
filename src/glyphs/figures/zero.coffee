exports.glyphs['zero'] =
	unicode: '0'
	glyphName: 'zero'
	characterName: 'DIGIT ZERO'
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
						96,
						contours[0].nodes[1].y + ( 55 / 54 ) * thickness + 10
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
						capHeight - 96,
						contours[0].nodes[4].y - ( 55 / 54 ) * thickness - 10
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 3 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 49 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				5:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 178 + 'deg'
						distr: 0.25
					})
