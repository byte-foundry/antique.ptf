exports.glyphs['brokenbar'] =
	unicode: '¦'
	glyphName: 'brokenbar'
	characterName: 'BROKEN BAR'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 60
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
					x: spacingLeft
					y: descender
					typeOut: 'line'
					expand: Object({
						width: ( 28 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: 205/700 * capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 28 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[1].y + 200/700 * capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 28 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 28 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
