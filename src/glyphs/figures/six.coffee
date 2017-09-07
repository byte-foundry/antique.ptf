exports.glyphs['six'] =
	unicode: '6'
	glyphName: 'six'
	characterName: 'DIGIT SIX'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 35
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 20 / 54 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) * ( 77 / 157 )
					y: ( 402 / 700 ) * capHeight - (0)
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 53 / 54 ) * thickness * contrast
						angle: Math.PI / 2 + Math.acos( Math.max(
							Math.min(
								( ( ( contours[0].nodes[5].x - contours[0].nodes[6].expandedTo[1].x ) - ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[6].expandedTo[1].x ) * ( 41 / 82 ) ) ) / ( ( 53 / 54 ) * thickness ),
								Utils.lineAngle( contours[0].nodes[5].point, contours[0].nodes[6].expandedTo[1].point )
							),
							- 0.95
						))
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[5].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[5].expandedTo[1].x + 0.75 * thickness * Math.sin( ( Math.PI / 2 ) - ( 3 / 180 * Math.PI ) ) + 10 + (5)
					)
					y: Math.max(
						contours[0].nodes[3].expandedTo[0].y,
						( 297 / 700 ) * capHeight
					)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: 170 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[5].expandedTo[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 53 / 54 ) * thickness
						angle: - 171 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[5].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[5].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				5:
					x: spacingLeft + (13/54) * thickness
					y: Math.max(
						98,
						contours[0].nodes[4].y + ( 47 / 54 ) * thickness + 10
					)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: - 8 + 'deg'
						distr: 0.25
					})
				6:
					x: contours[0].nodes[5].x
					y: Math.min(
						capHeight - 98,
						contours[0].nodes[7].y - ( 50 / 54 ) * thickness - 10
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 6 + 'deg'
						distr: 0.25
					})
				7:
					x: contours[0].nodes[4].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				8:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[6].expandedTo[0].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 173 + 'deg'
						distr: 0.25
					})
				9:
					x: contours[0].nodes[8].x
					y: contours[0].nodes[8].expandedTo[0].y - Math.min( 32, ( 32 / 700 ) * capHeight )
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
