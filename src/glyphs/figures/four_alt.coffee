exports.glyphs['four_alt'] =
	unicode: '4'
	glyphName: 'four'
	characterName: 'DIGIT FOUR'
	altImg: ''
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 19
		spacingRight: 50 * spacing + 14
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			exportReversed: true
			nodes:
				0:
					x: contours[0].nodes[1].x + 105
					y: capHeight
					dirOut: - 90 + 'deg'
					tensionOut: 1.2
					expand: Object({
						width: ( 48 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: spacingLeft
					y: contours[1].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) - ( 10 / 180 * Math.PI )
					expand: Object({
						width: ( 50 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			exportReversed: true
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[1].x + 100 * width + 60 + Math.max( 67, ( 67 / 54 ) * thickness )
					y: Math.max(
						( 226 / 700 ) * capHeight - (20),
						0.75 * ( 50 / 54 ) * thickness + 30
					)
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[1].nodes[0].x + contours[1].nodes[1].x ) * ( 120 / 200 )
					y: contours[1].nodes[1].expandedTo[1].y + ( contours[1].nodes[1].x - contours[2].nodes[0].x )
					typeOut: 'line'
					expand: Object({
						width: ( 56 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[2].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 56 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
