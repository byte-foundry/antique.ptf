exports.glyphs['X'] =
	unicode: 'X'
	glyphName: 'X'
	characterName: 'LATIN CAPITAL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 5
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( ( 54 / 54 ) * thickness ) / Math.sin( Utils.lineAngle( { x: spacingLeft - (0.25 * thickness), y: capHeight }, contours[0].nodes[1].point ) )
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: Math.max(
						contours[0].nodes[0].x - 0.25 * (58/54) * thickness + 100 * width + 119 - (40/54) * thickness,
						contours[0].nodes[0].x + 0.75 * (58/54) + thickness
					)
					y: 0
					expand: Object({
						width: ( ( 54 / 54 ) * thickness ) / Math.sin( Utils.lineAngle( { x: spacingLeft - (0.25 * thickness), y: capHeight }, contours[0].nodes[1].point ) )
						angle: 0 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: Utils.onLine({
					# 	y: capHeight / 2 - ( 8 / 54 ) * thickness
					# 	on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[0].point ]
					# })
					# y: capHeight / 2 - ( 8 / 54 ) * thickness
					x: Utils.onLine({
						y: capHeight / 2
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: capHeight / 2
					typeOut: 'line'
					expand: Object({
						width: ( 38 / 54 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) - Math.PI / 2
						distr: 1
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x - (12) # ( 12 / 54) * thickness * contrast
					y: capHeight
					expand: Object({
						width: - ( 50 / 54 ) * thickness / Math.sin( Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].expandedTo[1].point )) * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: Utils.onLine({
					# 	y: capHeight / 2 + ( 11 / 54 ) * thickness
					# 	on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[0].point ]
					# })
					# y: capHeight / 2 + ( 11 / 54 ) * thickness
					x: Utils.onLine({
						y: capHeight / 2
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: capHeight / 2
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 54 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point ) - Math.PI / 2
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + (12)
					y: 0
					expand: Object({
						width: contours[1].nodes[1].expand.width
						angle: 180 + 'deg'
						distr: 0.75
					})
