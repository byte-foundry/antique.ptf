exports.glyphs['bracketleft'] =
	unicode: '['
	glyphName: 'bracketleft'
	characterName: 'LEFT SQUARE BRACKET'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 10
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
					x: spacingLeft + (17/54) * thickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 35 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 73 / 90 ) * descender
					typeOut: 'line'
					expand: Object({
						width: ( 35 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 31 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].x + 50 + 22 * width
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 31 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 31 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[2].nodes[0].x + 50 + 22 * width
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 31 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
