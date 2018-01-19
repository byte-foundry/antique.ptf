exports.glyphs['questiondown'] =
	unicode: '¿'
	glyphName: 'questiondown'
	characterName: 'INVERTED QUESTION MARK'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['translateX', - contours[0].nodes[3].expandedTo[0].x - spacingRight]
		['translateY', - xHeight],
		['skewX',( slant ) / 180 * Math.PI],
		['scaleY', -1],
		['scaleX', -1],
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 55
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
					x: spacingLeft + (14/54) * thickness
					y: contours[0].nodes[1].y - Math.min( 97, ( 97 / 700 ) * capHeight )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.min(
						capHeight - 89,
						# contours[0].nodes[2].y - contours[0].nodes[2].expand.width - ( Math.sin( contours[0].nodes[1].expand.angle ) * (( 1 - contours[0].nodes[1].expand.distr ) * contours[0].nodes[1].expand.width) ) - 10
						contours[0].nodes[2].y - ( 50 / 54 ) * thickness - ( Math.sin( 1 / 180 * Math.PI ) * ( 0.75 * ( 57 / 54 ) * thickness ) ) - 10
					)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 1 / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 98 / 196 )
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
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 57 / 54 ) * thickness + 10
					)
					y: contours[0].nodes[1].y - 25
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness
						angle:( 174 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[2].x - (5)
					y: ( 370 / 700 ) * capHeight - (10)
					dirIn: Utils.lineAngle({x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y}, {x: contours[0].nodes[4].x, y: contours[0].nodes[4].y}) - (10 / 180 * Math.PI)
					typeOut: 'line'
					tensionIn: 1.5
					expand:
						width: ( 48 / 54 ) * thickness * contrast
						angle: Utils.lineAngle({x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y}, {x: contours[0].nodes[4].x, y: contours[0].nodes[4].y}) - Math.PI / 2
						distr: 0.5
				5:
					x: contours[0].nodes[4].expandedTo[1].x + 10
					y: Math.max(
						( 170 / 700 ) * capHeight,
						thickness + 20
					)
					expand:
						width: ( 27 / 54 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 1
	components:
		0:
			base: ['dot', 'dotaccent_rounded']
			id: 'bottom'
			parentAnchors:
				0:
					x: contours[0].nodes[2].x
					y: 0
					optical: 60
