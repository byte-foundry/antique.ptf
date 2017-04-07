exports.glyphs['s'] =
	unicode: 's'
	glyphName: 's'
	characterName: 'LATIN SMALL LETTER S'
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
		'lowercase'
	]
	anchors:
		0:
			x: 0 # contours[0].nodes[5].expandedTo[0].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness
					y: 195
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						93,
						contours[0].nodes[2].y + ( 47 / 54 ) * thickness * contrast + 10
					)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot - 5
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 47 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 94 - (15),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max(
						( 119 / 600 ) * xHeight - (2),
						contours[0].nodes[2].y + ( 47 / 54 ) * thickness * contrast + Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75 + 10
					)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: - 170 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[5].x + ( contours[0].nodes[3].x - contours[0].nodes[5].x ) * 0.5
					y: contours[0].nodes[3].y + ( contours[0].nodes[5].y - contours[0].nodes[3].y ) * 0.5
					dirOut: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[5].expandedTo[0].point ) + ( 18 / 180 * Math.PI )
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand: Object({
						width: ( 56 / 54 ) * thickness
						angle: contours[0].nodes[4].dirOut + Math.PI / 2
						distr: 0.5
					})
				5:
					x: contours[0].nodes[1].x + (1)
					y: Math.min(
						xHeight - ( 113 / 600 ) * xHeight - (0),
						contours[0].nodes[6].y - ( 47 / 54 ) * thickness * contrast - Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75 + 10
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 55 / 54 ) * thickness
						angle: 180 + 9 + 'deg'
						distr: 0.75
					})
				6:
					x: contours[0].nodes[5].expandedTo[1].x + ( contours[0].nodes[7].expandedTo[1].x - contours[0].nodes[5].expandedTo[1].x ) * ( 97 / 194 )
					y: xHeight + overshoot + 5
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 47 / 54 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				7:
					x: contours[0].nodes[3].expandedTo[0].x - (13/54) * thickness
					y: Math.min(
						xHeight - 93,
						contours[0].nodes[6].y - ( 47 / 54 ) * thickness * contrast - 10
					)
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				8:
					x: contours[0].nodes[7].x
					y: contours[0].nodes[7].y - 93
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
