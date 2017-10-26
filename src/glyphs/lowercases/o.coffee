exports.glyphs['o'] =
	unicode: 'o'
	glyphName: 'o'
	characterName: 'LATIN SMALL LETTER O'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
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
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
			left: contours[0].nodes[2].expandedTo[0].x
			right: contours[0].nodes[0].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * thickness * Math.sin( ( Math.PI / 2 ) - ( 3 / 180 * Math.PI ) ) + 10 + (5)
					)
					y: Math.max(
						98,
						contours[0].nodes[1].y + ( 47 / 54 ) * thickness + 10
					)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand:
						width: thickness
						angle: - 170 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand:
						width: ( 47 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
				2:
					x: spacingLeft + (13/54) * thickness
					y: contours[0].nodes[0].y
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: thickness
						angle: - 10 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[2].x
					y: Math.min(
						xHeight - 98,
						contours[0].nodes[4].y - ( 47 / 54 ) * thickness - 10
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand:
						width: thickness
						angle: 10 + 'deg'
						distr: 0.25
				4:
					x: contours[0].nodes[1].x
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand:
						width: ( 47 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
				5:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: thickness
						angle: 170 + 'deg'
						distr: 0.25
