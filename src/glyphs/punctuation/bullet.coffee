exports.glyphs['bullet'] =
	unicode: '•'
	glyphName: 'bullet'
	characterName: 'BULLET'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 18
		spacingRight: 50 * spacing + 18
		thickness: Math.max( 12, thickness )
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
					x: spacingLeft + (46/54) * thickness
					y: ( 251 / 600 ) * xHeight
					typeOut: 'line'
					expand:
						width: ( 92 / 54 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						xHeight - ( ( thickness + 195 ) / 600 ) * xHeight,
						contours[0].nodes[0].y
					)
					expand:
						width: ( 92 / 54 ) * thickness
						angle: 0
						distr: 0.5
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: - Math.PI / 2
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y - contours[0].nodes[0].expand.width / 2
					dirOut: Math.PI
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: - Math.PI / 2
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirOut: Math.PI / 2
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y + contours[0].nodes[1].expand.width / 2
					dirOut: 0
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Math.PI / 2
