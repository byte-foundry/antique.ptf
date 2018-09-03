exports.glyphs['o'] =
	unicode: 'o'
	glyphName: 'o'
	characterName: 'LATIN SMALL LETTER O'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', ( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 41
		spacingRight: 50 * spacing + 41
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: 41
					y: contours[0].nodes[1].y * 0.50 + contours[0].nodes[3].y * 0.50
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: (78 / 73 * thickness)
						angle: Math.PI
						distr: 1
				1:
					x: contours[0].nodes[0].x * 0.50 + contours[0].nodes[2].x * 0.50
					y: xHeight + overshoot
					dirIn: 0
					typeOut: 'smooth'
					expand:
						width: ( 57 / 73 )  * thickness * contrast * contrastExtremity
						angle: Math.PI / 2
						distr: 1
				2:
					x: 332 + 189 * width
					y: contours[0].nodes[1].y * 0.50 + contours[0].nodes[3].y * 0.50
					dirIn: - Math.PI / 2
					typeOut: 'smooth'
					expand:
						width: (78 / 73 * thickness)
						angle: 0
						distr: 1
				3:
					x: contours[0].nodes[0].x * 0.50 + contours[0].nodes[2].x * 0.50
					y: - 15
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: contours[0].nodes[1].expand.width
						angle: - Math.PI / 2
						distr: 1
