exports.glyphs['d'] =
	unicode: 'd'
	glyphName: 'd'
	characterName: 'LATIN SMALL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 35 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: 41
					y: contours[0].nodes[1].y * 0.5 + contours[0].nodes[3].y * 0.5
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 71 / 73 * thickness )
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x * 0.45 + contours[0].nodes[2].x * 0.55
					y: xHeight + overshoot
					dirIn: Math.PI
					typeOut: 'smooth'
					expand:
						width: ( 51 / 73 * thickness )
						angle: - Math.PI / 2
						distr: 0
				2:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[0].nodes[1].y * 0.5 + contours[0].nodes[3].y * 0.5
					dirIn: Math.PI / 2
					typeOut: 'smooth'
					expand:
						width: ( 25 / 73 * thickness )
						angle: Math.PI
						distr: 1
				3:
					x: contours[0].nodes[0].x * 0.45 + contours[0].nodes[2].x * 0.55
					y: - 15
					dirIn: 0
					typeOut: 'smooth'
					expand:
						width: (51 / 73 * thickness )
						angle: Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[1].nodes[0].x
					y: 0
					typeIn: 'line'
					expand:
						width: ( 71 / 73 * thickness )
						angle: 0
						distr: 0
				0:
					x: 441 * width
					y: xHeight + ascender
					typeOut: 'line'
					expand:
						width: ( 71 / 73 * thickness )
						angle: 0
						distr: 0
