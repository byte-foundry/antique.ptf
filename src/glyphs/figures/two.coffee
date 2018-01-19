exports.glyphs['two'] =
	unicode: '2'
	glyphName: 'two'
	characterName: 'DIGIT TWO'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					y: contours[0].nodes[1].y - Math.max( 31, ( 99 / 700 ) * capHeight )
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.min(
						capHeight - 95,
						# contours[0].nodes[2].y - contours[0].nodes[2].expand.width - ( Math.sin( contours[0].nodes[1].expand.angle ) * (( 1 - contours[0].nodes[1].expand.distr ) * contours[0].nodes[1].expand.width) ) - 10
						contours[0].nodes[2].y - ( 47 / 54 ) * thickness - ( Math.sin( 2 / 180 * Math.PI ) * ( 0.75 * ( 55 / 54 ) * thickness ) ) - 10
					)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 2 / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 90 / 181 )
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 96 - (14),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 58 / 54 ) * thickness + 10
					)
					y: contours[0].nodes[1].y - ( 21 / 700 ) * capHeight
					dirIn: Math.PI / 2
					type: 'smooth'
					tensionOut: 1.4
					expand:
						width: ( 58 / 54 ) * thickness
						angle:( 171 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[2].x
					y: ( contours[0].nodes[5].expandedTo[0].y + contours[0].nodes[3].expandedTo[0].y ) * ( 100 / 200 )
					dirIn: Utils.lineAngle({x: contours[0].nodes[5].expandedTo[1].x, y: contours[0].nodes[5].expandedTo[1].y}, {x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y}) - (4 / 180 * Math.PI)
					type: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness * contrast
						angle: contours[0].nodes[4].dirIn + Math.PI / 2
						distr: 0.5
				5:
					x: contours[0].nodes[0].expandedTo[0].x + (14/54) * thickness * contrast
					y: contours[1].nodes[0].y + ( 50 / 54 ) * thickness + Math.min( 58, ( 58 / 700 ) * capHeight) * contrast
					typeOut: 'line'
					dirIn: Math.PI / 2
					tensionIn: 1.4
					expand:
						width: ( 57 / 54 ) * thickness * contrast
						angle: Math.PI
						distr: 0.75
				6:
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					expand:
						width: ( 57 / 54 ) * thickness * contrast
						angle: Math.PI
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: 0
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[3].expandedTo[0].x + 8
					y: 0
					expand:
						width: ( 50 / 54 ) * thickness
						angle: Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				# [ 'skewX',( - 10 * serifRotate ) / 180 * Math.PI ],
				# [ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
		1:
			base: ['none', 'serif-horizontal']
			id: 'bottomrightbottom'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				# [ 'skewX',( - 10 * serifRotate ) / 180 * Math.PI ],
				# [ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
		2:
			base: ['none', 'serif-curve-inside-auto']
			id: 'topleft'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[1].expandedTo[0]
					baseHeight: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					curveEnd: contours[0].nodes[2].expandedTo[0]
					rotationAngle: -15
					left: true
					# down: true
					rotationCenter: contours[0].nodes[1].expandedTo[0]
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[2].expandedTo[0].y - contours[0].nodes[1].expandedTo[0].y + overshoot
				)
