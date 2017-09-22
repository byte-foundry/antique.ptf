exports.glyphs['less'] =
	unicode: '<'
	glyphName: 'less'
	characterName: 'LESS THAN SIGN'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 45
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
						contours[0].nodes[1].expandedTo[1].x + 100 * width + 111,
						contours[0].nodes[1].expandedTo[0].x + (45/54) * thickness * 0.25 * Math.cos(14 / 180 * Math.PI) + 161
					)
					y: xHeight - ( 91 / 600 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 48 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + contours[0].nodes[1].expand.width * 0.25 * Math.cos(14 / 180 * Math.PI)
					y: contours[0].nodes[3].y + ( contours[0].nodes[0].y - contours[0].nodes[3].y ) * 0.5 + contours[0].nodes[1].expand.width * 0.75 * Math.sin(14 / 180 * Math.PI)
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: ( 45 / 54 ) * thickness + (width - 1) * 8
						angle: 166 + 'deg'
						distr: 0.75
					})
				2:
					x: spacingLeft + contours[0].nodes[1].expand.width * 0.25 * Math.cos(14 / 180 * Math.PI)
					y: contours[0].nodes[3].y + ( contours[0].nodes[0].y - contours[0].nodes[3].y ) * 0.5 - contours[0].nodes[1].expand.width* 0.75 * Math.sin(14 / 180 * Math.PI)
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: contours[0].nodes[1].expand.width
						angle: 194 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y - ( 344 / 600 ) * xHeight
					expand: Object({
						width: ( 48 / 54 ) * thickness
						angle: 270 + 'deg'
						distr: 0
					})
