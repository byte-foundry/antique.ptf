exports.glyphs['Q_alt'] =
	unicode: 'Q'
	glyphName: 'Q'
	characterName: 'LATIN CAPITAL LETTER Q'
	altImg: 'alt-antique-Q-1.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 20
	tags: [
		'all',
		'latin',
		'uppercase'
	]
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
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: - 170 /180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				2:
					x: spacingLeft + (13/54) * thickness * opticThickness
					y: contours[0].nodes[0].y
					dirIn: - Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: - 10 / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[2].x
					y: Math.min(
						capHeight - 95,
						contours[0].nodes[4].y - ( 47 / 54 ) * thickness * opticThickness - 10
					) # TODO
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: 10 / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				5:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].y
					dirIn: Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: 170 / 180 * Math.PI
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + 20 * width
					y: 0
					dirOut: Math.PI
					expand:
						width: ( 50 / 54 ) * thickness
						angle: Math.PI / 2
						distr: 0.75
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: - Math.PI / 2
					expand:
						width: ( 30 / 54 ) * thickness * contrast
						angle: 0
						distr: 0
