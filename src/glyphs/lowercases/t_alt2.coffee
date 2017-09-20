exports.glyphs['t_alt2'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	altImg: 'antique-straight-t-extremity.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[3].expandedTo[0].x + 49
			y: contours[1].nodes[3].expandedTo[0].y - 80 + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x - 32
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[0].x + 100 * width + 80
					y: 10
					dirOut: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) + ( 5 / 180 * Math.PI )
					type: 'smooth'
					expand: Object({
						width: ( 47 / 54 ) * thickness
						angle: 95 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 105 / 194 )
					y: - overshoot / 2
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 47 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].x + 45 * width + (13/54) * thickness
					y: Math.max(
						98,
						contours[1].nodes[1].y + ( 47 / 54 ) * thickness + 10
					)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: - 3 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].x
					y: xHeight + ( Math.min( 110, (thickness + 56) ) / 600 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
