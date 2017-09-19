exports.glyphs['O'] =
	unicode: 'O'
	glyphName: 'O'
	characterName: 'LATIN CAPITAL LETTER O'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: (contours[0].nodes[0].expandedTo[0].x  + contours[0].nodes[2].expandedTo[0].x) * 0.5
			y: capHeight + diacriticHeight
			left: contours[0].nodes[0].expandedTo[0].x
			right: contours[0].nodes[2].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * thickness * opticThickness * Math.sin( ( Math.PI / 2 ) - ( 3 / 180 * Math.PI ) ) + 10 + (5)
					)
					y: Math.max(
						95,
						contours[0].nodes[1].y + ( 50 / 54 ) * thickness * opticThickness + 10
					) # TODO
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: - 170 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (13/54) * thickness * opticThickness
					y: contours[0].nodes[0].y
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: - 10 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].x
					y: Math.min(
						capHeight - 95,
						contours[0].nodes[4].y - ( 47 / 54 ) * thickness * opticThickness - 10
					) # TODO
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: 10 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				5:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: 170 + 'deg'
						distr: 0.25
					})
