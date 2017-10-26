exports.glyphs['more'] =
	unicode: '>'
	glyphName: 'more'
	characterName: 'MORE THAN SIGN'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 35
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
					x: spacingLeft
					y: xHeight - ( 91 / 600 ) * xHeight
					typeOut: 'line'
					expand:
						width: ( 48 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[0].x + 100 * width + 111,
						contours[0].nodes[0].x + (45/54) * thickness * Math.cos(14 / 180 * Math.PI) + 161,
					)
					y: contours[0].nodes[3].y + ( contours[0].nodes[0].y - contours[0].nodes[3].y ) * 0.5 + contours[0].nodes[1].expand.width * 0.75 * Math.sin(14 / 180 * Math.PI)
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 45 / 54 ) * thickness + (width - 1) * 9
						angle: 14 + 'deg'
						distr: 0.75
				2:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[3].y + ( contours[0].nodes[0].y - contours[0].nodes[3].y ) * 0.5 - contours[0].nodes[1].expand.width * 0.75 * Math.sin(14 / 180 * Math.PI)
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: contours[0].nodes[1].expand.width
						angle: -14 + 'deg'
						distr: 0.75
				3:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y - ( 344 / 600 ) * xHeight
					typeIn: 'line'
					expand:
						width: ( 48 / 54 ) * thickness
						angle: 270 + 'deg'
						distr: 0
