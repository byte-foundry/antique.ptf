exports.glyphs['m'] =
	unicode: 'm'
	glyphName: 'm'
	characterName: 'LATIN SMALL LETTER M'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight + 31
	transforms: Array(
		['skewX', ( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 35
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
					x: 71
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0
				1:
					x: 71
					y: xHeight
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
						width: ( 25 / 73* thickness )
						angle: 0
						distr: 1
				1:
					x: contours[1].nodes[0].expandedTo[0].x * 0.50 + contours[1].nodes[2].expandedTo[0].x * 0.50
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 51 / 73* thickness )
						angle: - Math.PI / 2
						distr: 0
				2:
					x: contours[1].nodes[3].x
					y: contours[1].nodes[1].y - 194
					typeOut: 'line'
					expand:
						width: thickness
						angle: Math.PI
						distr: 0
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 158 + 169 * width
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: Math.PI
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[0].y
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 26 / 73* thickness )
						angle: 0
						distr: 1
				1:
					x: contours[2].nodes[0].expandedTo[0].x * 0.50 + contours[2].nodes[2].expandedTo[0].x * 0.50
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 51 / 73* thickness )
						angle: - Math.PI / 2
						distr: 0
				2:
					x: contours[2].nodes[3].x
					y: contours[1].nodes[2].y
					typeOut: 'line'
					expand:
						width: thickness
						angle: Math.PI
						distr: 0
				3:
					x: contours[1].nodes[3].expandedTo[0].x + 169 * width + 158
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: Math.PI
						distr: 0
