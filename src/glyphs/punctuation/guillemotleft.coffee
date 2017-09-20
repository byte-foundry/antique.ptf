exports.glyphs['guillemotleft'] =
	unicode: '«'
	glyphName: 'guillemotleft'
	characterName: 'LEFT-POINTING DOUBLE ANGLE QUOTATION MARK'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 20
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
						contours[0].nodes[1].expandedTo[1].x + 100 * width + 3,
						contours[0].nodes[1].expandedTo[0].x + 0.75 * (( 42 / 54 ) * thickness * Math.sqrt( width )) + 22
					)
					y: xHeight - ( 65 / 600 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 42 / 54 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + (10/54) * thickness
					y: contours[0].nodes[2].y + ( contours[0].nodes[0].y - contours[0].nodes[2].y ) * 0.5
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: ( 42 / 54 ) * thickness * Math.sqrt( width )
						angle: 180 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y - ( 284 / 600 ) * xHeight
					expand: Object({
						width: ( 42 / 54 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 180 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[1].nodes[1].expandedTo[1].x + 100 * width + 3,
						contours[1].nodes[1].expandedTo[0].x + 0.75 * (( 42 / 54 ) * thickness * Math.sqrt( width )) + 22
					)
					y: xHeight - ( 65 / 600 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 42 / 54 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 48 - (10),
						contours[0].nodes[0].expandedTo[0].x
					)
					y: contours[1].nodes[2].y + ( contours[1].nodes[0].y - contours[1].nodes[2].y ) * 0.5
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: ( 42 / 54 ) * thickness * Math.sqrt( width )
						angle: 180 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].y - ( 284 / 600 ) * xHeight
					expand: Object({
						width: ( 42 / 54 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 180 + 'deg'
						distr: 0
					})
