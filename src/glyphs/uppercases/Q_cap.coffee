exports.glyphs['Q_cap'] =
	unicode: 'Q'
	glyphName: 'Q'
	characterName: 'LATIN CAPITAL LETTER Q'
	altImg: 'alt-antique-Q-0.svg'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
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
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 67 / 54 ) * thickness * contrast
						angle: Math.min(
							Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ) + (( 5 / 54 ) * thickness) / 180 * Math.PI,
							Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[1].point ) - ( 5 - 5 * width ) / 180 * Math.PI
						)
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 20 * width
					y: - ( 8 / 5 ) * overshoot
					dirIn: Math.min(
						Math.PI + Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ) + ( 25 / 180 * Math.PI ),
						Math.PI
					)
					expand: Object({
						width: ( 4 / 54 ) * thickness * contrast
						angle: contours[1].nodes[0].expand.angle
						distr: 0
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					dirOut: - 90 + 'deg'
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					dirIn: Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) + ( 20 / 180 * Math.PI )
					typeOut: 'line'
				2:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					dirOut: contours[1].nodes[1].dirIn
				3:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirIn: - 90 + 'deg'
					typeOut: 'line'
