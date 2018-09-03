exports.glyphs['i'] =
	unicode: 'i'
	glyphName: 'i'
	characterName: 'LATIN SMALL LETTER I'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 20
		spacingRight: 50 * spacing + 20
		distr : 0
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
					x: spacingLeft + (contours[0].nodes[0].expand.distr * contours[0].nodes[0].expand.width)
					y: descender
					dirOut: Math.PI / 2
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + (contours[0].nodes[1].y - contours[0].nodes[0].y)
					y: xHeight
					dirIn: Math.PI
					expand:
						width: ( 49 / 73) * thickness
						angle: - Math.PI / 2
						distr: 0
