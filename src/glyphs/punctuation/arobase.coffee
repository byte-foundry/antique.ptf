exports.glyphs['arobase'] =
	unicode: '@'
	glyphName: 'at'
	characterName: 'COMMERCIAL AT'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					dirOut:( - 105 ) / 180 * Math.PI
					expand:
						width: ( 17 / 54 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0.25
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) * ( 125 / 247 )
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 18 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				2:
					x: spacingLeft + (4/54) * thickness
					y: Math.max(
						114,
						contours[0].nodes[1].y + ( 18 / 54 ) * thickness + 10
					)
					dirIn: - Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 18 / 54 ) * thickness
						angle: 0
						distr: 0.25
				3:
					x: contours[0].nodes[2].x
					y: Math.min(
						capHeight - 114,
						contours[0].nodes[4].y - ( 18 / 54 ) * thickness - 10
					)
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 18 / 54 ) * thickness
						angle: 0
						distr: 0.25
				4:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 18 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				5:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirIn: Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 18 / 54 ) * thickness
						angle: Math.PI
						distr: 0.25
				6:
					x: contours[0].nodes[5].x
					y: contours[0].nodes[0].y + Math.max( 58, ( 58 / 54 ) * thickness )
					typeIn: 'line'
					dirOut: Math.PI / 2
					expand:
						width: ( 18 / 54 ) * thickness
						angle: Math.PI
						distr: 0.25
				7:
					x: ( contours[0].nodes[6].expandedTo[1].x + contours[0].nodes[8].expandedTo[0].x ) * ( 47 / 93 )
					y: contours[0].nodes[0].y + ( contours[0].nodes[6].y - contours[0].nodes[0].y ) * ( 18 / 58 )
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 22 / 54 ) * thickness * contrast
						angle:( 57 ) / 180 * Math.PI
						distr: 0.25
				8:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x - 32 * width - (31/54) * thickness,
						contours[0].nodes[11].x + 0.75 * ( 44 / 54 ) * thickness + 50
					)
					# x: contours[0].nodes[0].expandedTo[1].x - 32 * width - (31/54) * thickness
					y: contours[0].nodes[6].expandedTo[0].y
					dirIn: - Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 43 / 54 ) * thickness
						angle:( - 3 ) / 180 * Math.PI
						distr: 0.25
				9:
					x: contours[0].nodes[8].x
					y: Math.max(
						( 527 / 700 ) * capHeight - (2),
						contours[0].nodes[10].y - 78 + (1)
					)
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 44 / 54 ) * thickness
						angle:( - 13 ) / 180 * Math.PI
						distr: 0.25
				10:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[4].expandedTo[1].y - 82 - (8)
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: Math.min(
							( 39 / 54 ) * thickness * contrast,
							contours[0].nodes[10].y - contours[0].nodes[9].y - 10
						)
						angle: Math.PI / 2
						distr: 0.9
				11:
					x: contours[0].nodes[3].expandedTo[1].x + 35 * width + (10/54) * thickness
					y: contours[0].nodes[9].expandedTo[1].y - (3)
					dirIn: Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 42 / 54 ) * thickness
						angle:( - 166 ) / 180 * Math.PI
						distr: 0.75
				12:
					x: contours[0].nodes[11].expandedTo[0].x
					y: contours[0].nodes[11].y - ( 92 / 700 ) * capHeight
					typeIn: 'line'
					expand:
						width: ( 41 / 54 ) * thickness
						angle: Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[8].expandedTo[0].x
					y: contours[0].nodes[8].expandedTo[0].y + Math.min( 54, ( thickness / 700 ) * capHeight )
					dirOut: - Math.PI / 2
					expand:
						width: ( 10 / 54 ) * thickness * contrast * contrastExtremity
						angle:( 180 + 18 ) / 180 * Math.PI
						distr: 1
				1:
					x: ( contours[1].nodes[2].expandedTo[0].x + contours[1].nodes[0].expandedTo[0].x ) * ( 59 / 118 )
					y: contours[0].nodes[7].expandedTo[0].y
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 41 / 54 ) * thickness * contrast
						angle:( 67 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[12].expandedTo[1].x - 6
					y: Math.max(
						contours[0].nodes[0].y + 100,
						contours[1].nodes[1].y + thickness * contrast
					)
					dirIn: - Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 43 / 54 ) * thickness
						angle:( 14 ) / 180 * Math.PI
						distr: 0
				3:
					x: contours[1].nodes[2].expandedTo[0].x
					y: Math.min(
						contours[1].nodes[2].expandedTo[0].y + ( contours[1].nodes[5].expandedTo[0].y - contours[1].nodes[2].expandedTo[0].y ) * ( 99 / 232 ),
						contours[1].nodes[5].expandedTo[0].y - 100
					)
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					# tensionOut: 0
					expand:
						width: ( 43 / 54 ) * thickness
						angle: 0
						distr: 0
				4:
					x: Math.max(
						contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[5].expandedTo[1].x - contours[1].nodes[3].expandedTo[0].x ) * 0.5,
						contours[1].nodes[3].expandedTo[1].x
					)
					y: contours[1].nodes[3].expandedTo[0].y + ( contours[1].nodes[5].expandedTo[1].y - contours[1].nodes[3].expandedTo[0].y ) * 0.5
					dirOut: Math.max(
						Utils.lineAngle({x: contours[1].nodes[3].expandedTo[0].x, y: contours[1].nodes[3].expandedTo[0].y}, {x: contours[1].nodes[5].expandedTo[1].x, y: contours[1].nodes[5].expandedTo[1].y}) - (25 / 180 * Math.PI),
						0
					)
					typeIn: 'smooth'
					expand:
						width: ( 30 / 54 ) * thickness * contrast * contrastExtremity
						angle: contours[1].nodes[4].dirOut - Math.PI / 2 + ( 30 / 180 * Math.PI )
						distr: 0.5
				5:
					x: contours[0].nodes[8].expandedTo[0].x
					y: contours[0].nodes[12].expandedTo[0].y - ( 17 / 700 ) * capHeight
					dirIn: - Math.PI / 2
					# tensionIn: 0
					expand:
						width: ( 23 / 54 ) * thickness * contrast * contrastExtremity
						angle: 0
						distr: 0
