exports.glyphs['numbersign'] =
	unicode: '#'
	glyphName: 'numbersign'
	characterName: 'NUMBER SIGN'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
		'test'
	]
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 30
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[3].nodes[0].expandedTo[1].x + (contours[2].nodes[1].expandedTo[0].x - contours[0].nodes[1].x)
					y: contours[0].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 31 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: spacingLeft
					y: 233 / 600 * xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 31 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x + ( contours[1].nodes[1].x - contours[0].nodes[0].x )
					y: contours[0].nodes[1].y + xHeight * 200 / 600 + 31 / 54 * thickness
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 31 / 54 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x + Math.min(
						11 * width,
						11
					)
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 31 / 54 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x + 10 * width + 7
					y: 0
					typeOut: 'line'
					expand: Object({
						width: Math.min( ( 26 / 54 ) * thickness * contrast, minThickness )
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[2].nodes[0].expandedTo[0].x + Math.min(
						82 * width,
						82
					)
					y: Math.max(
						capHeight,
						xHeight + minThickness
					)
					expand: Object({
						width: Math.min( ( 26 / 54 ) * thickness * contrast, minThickness )
						angle: 0 + 'deg'
						distr: 0
					})
		3:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[3].nodes[0].expandedTo[0].x + Math.min(
						82 * width,
						82
					)
					y: contours[2].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: Math.min( ( 26 / 54 ) * thickness * contrast, minThickness )
						angle: 0 + 'deg'
						distr: 0
					})
				0:
					x: contours[2].nodes[0].x + Math.max(85 * width + 7, 26 / 54 * thickness + 20)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: Math.min( ( 26 / 54 ) * thickness * contrast, minThickness )
						angle: 0 + 'deg'
						distr: 0
					})
