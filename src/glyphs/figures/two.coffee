exports.glyphs['two'] =
	unicode: '2'
	glyphName: 'two'
	characterName: 'DIGIT TWO'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 28
		spacingRight: 50 * spacing + 25
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
					x: spacingLeft + (14/54) * thickness
					y: contours[0].nodes[1].y - Math.min( 31, ( 31 / 700 ) * capHeight )
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: Math.min(
						capHeight - 92,
						# contours[0].nodes[2].y - contours[0].nodes[2].expand.width - ( Math.sin( contours[0].nodes[1].expand.angle ) * (( 1 - contours[0].nodes[1].expand.distr ) * contours[0].nodes[1].expand.width) ) - 10
						contours[0].nodes[2].y - ( 47 / 54 ) * thickness - ( Math.sin( 2 / 180 * Math.PI ) * ( 0.75 * ( 55 / 54 ) * thickness ) ) - 10
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 2 / 180 * Math.PI
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 90 / 181 )
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 96 - (14),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 58 / 54 ) * thickness + 10
					)
					y: contours[0].nodes[1].y - ( 21 / 700 ) * capHeight
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: 171 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[2].x
					y: ( contours[0].nodes[5].expandedTo[0].y + contours[0].nodes[3].expandedTo[0].y ) * ( 100 / 200 )
					dirIn: Utils.lineAngle( contours[0].nodes[5].expandedTo[1].point, contours[0].nodes[3].expandedTo[0].point ) - ( 8 / 180 * Math.PI )
					type: 'smooth'
					expand: Object({
						width: ( 58 / 54 ) * thickness * contrast
						angle: contours[0].nodes[4].dirIn + Math.PI / 2
						distr: 0.5
					})
				5:
					x: contours[0].nodes[0].expandedTo[0].x + (14/54) * thickness * contrast + 3
					y: contours[1].nodes[0].y + ( 50 / 54 ) * thickness + Math.min( 58, ( 58 / 700 ) * capHeight) * contrast
					typeOut: 'line'
					dirIn: 90 + 'deg'
					expand: Object({
						width: ( 57 / 54 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0.75
					})
				6:
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					expand: Object({
						width: ( 57 / 54 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + 3
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[3].expandedTo[0].x + 2
					y: 0
					expand: Object({
						width: ( 50 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ],
				# [ 'skewX', - 10 * serifRotate + 'deg' ],
				# [ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
		1:
			base: ['none', 'serif-horizontal']
			id: 'bottomrightbottom'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					noneAnchor: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array(
				# [ 'skewX', - 10 * serifRotate + 'deg' ],
				# [ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
		2:
			base: ['none', 'serif-curve-inside-auto']
			id: 'topleft'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[1].expandedTo[0]
					baseHeight: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					curveEnd: contours[0].nodes[2].expandedTo[0]
					rotationAngle: -15
					left: true
					# down: true
					rotationCenter: contours[0].nodes[1].expandedTo[0].point
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[2].expandedTo[0].y - contours[0].nodes[1].expandedTo[0].y + overshoot
				)
