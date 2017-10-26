exports.glyphs['equal'] =
	unicode: '='
	glyphName: 'equal'
	characterName: 'EQUALS SIGN'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 300 / 600 ) * xHeight + 41 + (13)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 37 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0.75
				1:
					x: contours[0].nodes[0].x + 100 * width + 90 + Math.max( 17, ( 17 / 54 ) * thickness )
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 37 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0.75
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( 300 / 600 ) * xHeight - 41 - (13)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 37 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[1].x
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 37 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0.25
