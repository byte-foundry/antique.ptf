exports.glyphs['k'] =
	unicode: 'k'
	glyphName: 'k'
	characterName: 'LATIN SMALL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 106 - (13/54) * thickness,
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 15 + (15)
					)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: (( 51 / 54 ) * thickness) / Math.sin( Math.PI - Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point ) )
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						0,
						( 250 / 600 ) * xHeight - Math.max(
							40,
							( 40 / 54 ) * thickness
						)
					)
					expand: Object({
						width: ( 45 / 54 ) * thickness
						angle: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point ) + Math.PI / 2
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( 344 /600 ) * xHeight
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: ( 344 /600 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 51 / 54 ) * thickness
						angle: Math.max(
							Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) + Math.PI / 2,
							Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point )
						)
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + 2
					y: 0
					expand: Object({
						width: ( 53 / 54 ) * thickness / Math.sin( Math.PI - Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) )
						angle: 180 + 'deg'
						distr: 0
					})
