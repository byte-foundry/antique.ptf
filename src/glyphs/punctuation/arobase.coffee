exports.glyphs['arobase'] =
	unicode: '@'
	glyphName: 'at'
	characterName: 'COMMERCIAL AT'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
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
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 148 + 100 * width - (4),
						contours[0].nodes[2].expandedTo[1].x + ( ( 43 / 54 ) * thickness + 30 ) * 2 + 50 # TODO
					)
					y: contours[0].nodes[2].expandedTo[0].y - 29
					dirOut: - 105 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 17 / 54 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) * ( 125 / 247 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 18 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (4/54) * thickness
					y: Math.max(
						114,
						contours[0].nodes[1].y + ( 18 / 54 ) * thickness + 10
					)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 18 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].x
					y: Math.min(
						capHeight - 114,
						contours[0].nodes[4].y - ( 18 / 54 ) * thickness - 10
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 18 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 18 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				5:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 18 / 54 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				6:
					x: contours[0].nodes[5].x
					y: contours[0].nodes[0].y + Math.max( 58, ( 58 / 54 ) * thickness )
					expand: Object({
						width: ( 18 / 54 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				7:
					x: ( contours[0].nodes[6].expandedTo[1].x + contours[0].nodes[8].expandedTo[0].x ) * ( 47 / 93 )
					y: contours[0].nodes[0].y + ( contours[0].nodes[6].y - contours[0].nodes[0].y ) * ( 18 / 58 )
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 22 / 54 ) * thickness * contrast
						angle: 57 + 'deg'
						distr: 0.25
					})
				8:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x - 32 * width - (31/54) * thickness,
						contours[0].nodes[11].x + 0.75 * ( 44 / 54 ) * thickness + 50
					)
					# x: contours[0].nodes[0].expandedTo[1].x - 32 * width - (31/54) * thickness
					y: contours[0].nodes[6].expandedTo[0].y
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 43 / 54 ) * thickness
						angle: - 3 + 'deg'
						distr: 0.25
					})
				9:
					x: contours[0].nodes[8].x
					y: Math.max(
						( 527 / 700 ) * capHeight - (2),
						contours[0].nodes[10].y - 78 + (1)
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 44 / 54 ) * thickness
						angle: - 13 + 'deg'
						distr: 0.25
					})
				10:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[4].expandedTo[1].y - 82 - (8)
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: Math.min(
							( 39 / 54 ) * thickness * contrast,
							contours[0].nodes[10].y - contours[0].nodes[9].y - 10
						)
						angle: 90 + 'deg'
						distr: 0.9
					})
				11:
					x: contours[0].nodes[3].expandedTo[1].x + 35 * width + (10/54) * thickness
					y: contours[0].nodes[9].expandedTo[1].y - (3)
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 42 / 54 ) * thickness
						angle: - 166 + 'deg'
						distr: 0.75
					})
				12:
					x: contours[0].nodes[11].expandedTo[0].x
					y: contours[0].nodes[11].y - ( 92 / 700 ) * capHeight
					expand: Object({
						width: ( 41 / 54 ) * thickness
						angle: 180 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[8].expandedTo[0].x
					y: contours[0].nodes[8].expandedTo[0].y + Math.min( 54, ( thickness / 700 ) * capHeight )
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 10 / 54 ) * thickness * contrast * contrastExtremity
						angle: 180 + 18 + 'deg'
						distr: 1
					})
				1:
					x: ( contours[1].nodes[2].expandedTo[0].x + contours[1].nodes[0].expandedTo[0].x ) * ( 59 / 118 )
					y: contours[0].nodes[7].expandedTo[0].y
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 41 / 54 ) * thickness * contrast
						angle: 67 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[12].expandedTo[1].x - 6
					y: Math.max(
						contours[0].nodes[0].y + 100,
						contours[1].nodes[1].y + thickness * contrast
					)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 43 / 54 ) * thickness
						angle: 14 + 'deg'
						distr: 0
					})
				3:
					x: contours[1].nodes[2].expandedTo[0].x
					y: Math.min(
						contours[1].nodes[2].expandedTo[0].y + ( contours[1].nodes[5].expandedTo[0].y - contours[1].nodes[2].expandedTo[0].y ) * ( 99 / 232 ),
						contours[1].nodes[5].expandedTo[0].y - 100
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					# tensionOut: 0
					expand: Object({
						width: ( 43 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				4:
					x: Math.max(
						contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[5].expandedTo[1].x - contours[1].nodes[3].expandedTo[0].x ) * 0.5,
						contours[1].nodes[3].expandedTo[1].x
					)
					y: contours[1].nodes[3].expandedTo[0].y + ( contours[1].nodes[5].expandedTo[1].y - contours[1].nodes[3].expandedTo[0].y ) * 0.5
					dirOut: Math.max(
						Utils.lineAngle( contours[1].nodes[3].expandedTo[0].point, contours[1].nodes[5].expandedTo[1].point ) - ( 25 / 180 * Math.PI ),
						0
					)
					type: 'smooth'
					expand: Object({
						width: ( 30 / 54 ) * thickness * contrast * contrastExtremity
						angle: contours[1].nodes[4].dirOut - Math.PI / 2 + ( 30 / 180 * Math.PI )
						distr: 0.5
					})
				5:
					x: contours[0].nodes[8].expandedTo[0].x
					y: contours[0].nodes[12].expandedTo[0].y - ( 17 / 700 ) * capHeight
					dirIn: - 90 + 'deg'
					type: 'smooth'
					# tensionIn: 0
					expand: Object({
						width: ( 23 / 54 ) * thickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0
					})
