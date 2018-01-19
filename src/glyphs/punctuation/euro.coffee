# TODO: aperture
exports.glyphs['euro'] =
	unicode: '€'
	glyphName: 'euro'
	characterName: 'EURO SIGN'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 20
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
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 100 * width + 98 - (14),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * thickness * opticThickness * Math.sin( ( Math.PI / 2 ) - ( 3 / 180 * Math.PI ) ) + 15 + (5)
					)
					y: Math.min(
						contours[0].nodes[1].expandedTo[0].y + 39,
						capHeight / 2 - 10
					)
					dirOut: - Math.PI / 2
					typeOut: 'line'
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle:( - 173 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				3:
					x: contours[1].nodes[0].x + (14/54) * thickness * opticThickness + 37 * width
					y: Math.max(
						95,
						contours[0].nodes[2].y + ( 50 / 54 ) * thickness * opticThickness + Math.cos( 81 / 180 * Math.PI ) * 0.75 * ( 58 / 54 ) * thickness * opticThickness + 20
					)
					dirIn: - Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness * opticThickness
						angle:( - 9 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[3].x
					y: Math.min(
						capHeight - 95,
						contours[0].nodes[5].y - ( 50 / 54 ) * thickness * opticThickness - Math.sin( 9 / 180 * Math.PI ) * 0.75 * ( 57 / 54 ) * thickness * opticThickness - 10
					)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle:( 9 ) / 180 * Math.PI
						distr: 0.25
				5:
					x: contours[0].nodes[2].x
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				6:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness * opticThickness
						angle:( 171 ) / 180 * Math.PI
						distr: 0.25
				7:
					x: contours[0].nodes[6].x
					y: Math.max(
						contours[0].nodes[6].expandedTo[0].y - 42,
						capHeight / 2 + 10
					)
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 358 / 700 ) * capHeight + 44 + (8)
					dirOut: 0
					typeOut: 'line'
					expand:
						width: Math.min(
							( 32 / 54 ) * thickness * contrast,
							Math.max(
								10,
								contours[0].nodes[7].expandedTo[1].y - contours[1].nodes[0].y - 10
							)
						)
						angle: - Math.PI / 2
						distr: 0.75
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 10
					y: contours[1].nodes[0].y
					dirOut: 0
					typeOut: 'line'
					expand:
						width: Math.min(
							( 32 / 54 ) * thickness * contrast,
							Math.max(
								10,
								contours[0].nodes[7].expandedTo[1].y - contours[1].nodes[0].y - 10
							)
						)
						angle: - Math.PI / 2
						distr: 0.75
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: ( 358 / 700 ) * capHeight - 44 - (8)
					dirOut: 0
					typeOut: 'line'
					expand:
						width: Math.min(
							( 32 / 54 ) * thickness * contrast,
							Math.max(
								10,
								contours[0].nodes[7].expandedTo[1].y - contours[1].nodes[0].y - 10
							)
						)
						angle: - Math.PI / 2
						distr: 0.25
				1:
					x: contours[1].nodes[1].x
					y: contours[2].nodes[0].y
					dirOut: 0
					typeOut: 'line'
					expand:
						width: Math.min(
							( 32 / 54 ) * thickness * contrast,
							Math.max(
								10,
								contours[0].nodes[7].expandedTo[1].y - contours[1].nodes[0].y - 10
							)
						)
						angle: - Math.PI / 2
						distr: 0.25
