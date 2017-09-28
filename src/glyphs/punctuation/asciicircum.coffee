exports.glyphs['asciicircum'] =
	unicode: '^'
	glyphName: 'asciicircum'
	characterName: 'CIRCUMFLEX ACCENT'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 20
		spacingRight: 50 * spacing + 20
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
					x: spacingLeft + thickness * 40/54 * 0.25
					y: contours[0].nodes[1].y - 223/700 * capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[3].expandedTo[0].x ) / 2
					y: capHeight + overshoot / 2 - Math.sin(80 / 180 * Math.PI) * 63/54 * thickness
					typeIn: 'line'
					typeOut: 'line'
					expand: Object({
						width: ( 62 / 54 ) * thickness
						angle: -80 + 'deg'
						distr: 1
					})
				2:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					typeOut: 'line'
					expand: Object({
						width: ( 62 / 54 ) * thickness
						angle: -99 + 'deg'
						distr: 1
					})
				3:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 149 - thickness * 40/54 * 0.25,
						contours[0].nodes[0].expandedTo[1].x + 40/54 * thickness * 1.5 + 70
					)
					y: contours[0].nodes[0].y
					typeIn: 'line'
					expand: Object({
						width: ( 40 / 54 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
