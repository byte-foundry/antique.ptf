exports.glyphs['u'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
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
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y + 234
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 25 / 73* thickness )
						angle: 0
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x * 0.48 + contours[0].nodes[2].expandedTo[1].x * 0.52
					y: - 15
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 51 / 73* thickness )
						angle: - Math.PI / 2
						distr: 1
				2:
					x: 66
					y: 181
					dirIn: Math.PI / 2
					typeOut: 'smooth'
					expand:
						width: thickness
						angle: Math.PI
						distr: 1
				3:
					x: 66
					y: xHeight
					typeIn: 'line'
					expand:
						width: thickness
						angle: Math.PI
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 1
				1:
					x: contours[0].nodes[3].expandedTo[0].x + ( 158 + 189 * width )
					y: xHeight
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 1
