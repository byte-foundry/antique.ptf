exports.glyphs['dollar'] =
	unicode: '$'
	glyphName: 'dollar'
	characterName: 'DOLLAR SIGN'
	altImg: 'alt-antique-dollar-0.svg'
	ot:
		advanceWidth: contours[0].nodes[8].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 25
		spacingRight: 50 * spacing + 25
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
					x: spacingLeft + (12/54) * thickness
					y: contours[0].nodes[1].y + Math.min( 91, ( 91 / 700 ) * capHeight )
					typeOut: 'line'
					expand: Object({
						width: ( 49 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						Math.min( 89, ( 89 / 700 ) * capHeight ),
						contours[0].nodes[2].y + ( 46 / 54 ) * thickness * contrast + 10
					)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 49 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 98 / 196 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 46 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 96 - (12),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max(
						( 121 / 700 ) * capHeight - (2),
						contours[0].nodes[2].y + ( 46 / 54 ) * thickness * contrast + Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75 + 10
					)
					# y: contours[0].nodes[2].y + ( 46 / 54 ) * thickness * contrast + ( contours[0].nodes[4].y - contours[0].nodes[2].y + ( 46 / 54 ) * thickness * contrast ) * ( ( 82 - (10) ) / 266 ) - Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness
						angle: - 170 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[0].x + ( contours[0].nodes[7].x - contours[0].nodes[0].x ) * 0.5
					y: ( 350 / 700 ) * capHeight
					dirOut: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[5].expandedTo[0].point ) + ( Math.min( 14, 14 * width ) / 180 * Math.PI )
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand: Object({
						width: ( 48 / 54 ) * thickness
						angle: contours[0].nodes[4].dirOut + Math.PI / 2 + ( 4 / 180 * Math.PI )
						distr: 0.5
					})
				5:
					x: contours[0].nodes[1].x + (1)
					y: Math.min(
						capHeight - ( 115 / 700 ) * capHeight - (0),
						contours[0].nodes[6].y - ( 46 / 54 ) * thickness * contrast - Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75 + 10
					)
					# y: contours[0].nodes[4].y + ( ( contours[0].nodes[6].y - ( 46 / 54 ) * thickness * contrast ) - contours[0].nodes[4].y ) * ( 184 / 260 ) + Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 49 / 54 ) * thickness
						angle: 180 + 9 + 'deg'
						distr: 0.75
					})
				6:
					x: contours[0].nodes[5].expandedTo[1].x + ( contours[0].nodes[7].expandedTo[1].x - contours[0].nodes[5].expandedTo[1].x ) * ( 98 / 196 )
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 46 / 54 ) * thickness * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				7:
					x: contours[0].nodes[3].expandedTo[0].x - (12/54) * thickness
					y: Math.min(
						capHeight - Math.min( 98, ( 98 / 700 ) * capHeight ),
						contours[0].nodes[6].y - ( 46 / 54 ) * thickness * contrast - 10
					)
					typeOut: 'line'
					expand: Object({
						width: ( 49 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				8:
					x: contours[0].nodes[7].x
					y: contours[0].nodes[7].y - Math.min( 82, ( 82 / 700 ) * capHeight )
					expand: Object({
						width: ( 49 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x
					y: capHeight + Math.min( 40, ( 40 / 700 ) * capHeight )
					typeOut: 'line'
					expand: Object({
						width: ( 29 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[0].x
					y: ( 50 / 90 ) * descender
					typeOut: 'line'
					expand: Object({
						width: ( 29 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
