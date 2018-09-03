exports.glyphs['h'] =
	unicode: 'h'
	glyphName: 'h'
	characterName: 'LATIN SMALL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight + 31
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + serifWidth
		spacingRight: 50 * spacing + 41 + serifWidth
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
			closed: false
			nodes:
				0:
					x: 71 + (contours[0].nodes[0].expand.width * contours[0].nodes[0].expand.distr)
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0
				1:
					x: 71
					y: xHeight + ascender
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].y - 233
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 25 / 73 * thickness )
						angle: 0
						distr: 1
				1:
					x: contours[1].nodes[0].expandedTo[0].x * 0.48 + contours[1].nodes[2].expandedTo[0].x * 0.52
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 63 / 73 * thickness )
						angle: - 105 / 180 * Math.PI
						distr: 0
				2:
					x: contours[1].nodes[3].x
					y: contours[1].nodes[1].y - 194
					typeOut: 'line'
					expand:
						width: thickness
						angle: - 176.8 / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[0].expandedTo[0].x + 229 + 189 * width
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: Math.PI
						distr: 0.25
