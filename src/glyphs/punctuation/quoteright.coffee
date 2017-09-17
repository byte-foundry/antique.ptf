exports.glyphs['quoteright'] =
	unicode: '’'
	glyphName: 'quoteright'
	characterName: 'RIGHT SINGLE QUOTATION MARK'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 15
		spacingRight: 50 * spacing + 15
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
					y: contours[0].nodes[4].y - 100 - Math.max( 80, ( 80 / 54 ) * thickness )
					typeOut: 'line'
					expand: Object({
						width: Math.max( 30, ( 62 / 54 ) * thickness )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[4].y - Math.max( 27, ( 27 / 54 ) * thickness ) - 80
					typeOut: 'line'
					expand: Object({
						width: Math.max( 30, ( 62 / 54 ) * thickness )
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 34 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y + 10
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 34 / 54 ) * thickness / Math.cos( 18 / 180 * Math.PI )
						angle: 18 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[1].expandedTo[1].x - 4
					y: capHeight
					dirIn: Utils.lineAngle( contours[0].nodes[4].point, contours[0].nodes[3].point ) - ( 50 / 180 * Math.PI )
					expand: Object({
						width: ( 28 / 54 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[4].point, contours[0].nodes[3].point ) + Math.PI / 2 - ( 40 / 180 * Math.PI )
						distr: 0
					})
			transformOrigin: Array( (contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[4].expandedTo[1].x ) / 2, (contours[0].nodes[0].expandedTo[0].y + contours[0].nodes[4].expandedTo[0].y ) / 2 )
			transforms: Array(
				['rotate', 180 + 'deg']
			)
