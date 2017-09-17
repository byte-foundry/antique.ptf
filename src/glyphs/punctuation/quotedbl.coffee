exports.glyphs['quotedbl'] =
	unicode: '"'
	glyphName: 'quotedbl'
	characterName: 'QUOTATION MARK'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 80
		thickness: Math.max( 10, thickness )
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
					x: spacingLeft + (15/54) * thickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y - 100 - Math.min( 80, ( 80 / 54 ) * thickness )
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 30 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 78
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[0].y - 100 - Math.min( 80, ( 80 / 54 ) * thickness )
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 30 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
