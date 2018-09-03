exports.glyphs['p'] =
	unicode: 'p'
	glyphName: 'p'
	characterName: 'LATIN SMALL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + serifWidth
		spacingRight: 50 * spacing + 41
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
					x: spacingLeft + (contours[0].nodes[0].expand.width * contours[0].nodes[0].expand.distr)
					y: descender
					typeOut: 'line'
					expand:
						width: ( 71 / 73 * thickness )
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: contours[0].nodes[0].expand.width
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].y + ( contours[1].nodes[3].y - contours[1].nodes[1].y ) * 0.5
					dirIn: Math.PI / 2
					typeOut: 'smooth'
					expand:
						width: ( 40 / 73 ) * thickness * contrast * contrastExtremity
						angle: 0
						distr: 1
				1:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirIn: 0
					typeOut: 'smooth'
					expand:
						width: ( 57 / 73 ) * thickness * contrast
						angle: - Math.PI / 2 - Math.min(
							Utils.lineAngle(
					        { x: contours[1].nodes[0].x - contours[1].nodes[0].expand.width, y: contours[1].nodes[0].y },
					        { x: contours[1].nodes[1].x, y: contours[1].nodes[1].y }
					    ),
							Math.asin(
								Math.min( 0.99, Math.max( - 0.99, # we don't want asin(1)
									(
										( contours[1].nodes[1].x - contours[1].nodes[0].x ) -
										( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].x ) / 2
									) / contours[1].nodes[1].expand.width
							))) # the bottom point of this node is always in the middle of the curve
						)
						distr: 0
				2:
					x: Math.max(
						contours[1].nodes[0].expandedTo[0].x + 238 + 200 * width - (16),
						contours[1].nodes[0].x + minSpace + ( 1 - contours[1].nodes[2].expand.distr ) * contours[1].nodes[2].expand.width
					) # 1 - contours[1].nodes[2].expand.distr ) * contours[1].nodes[2].expand.width (récupère la distr)
					y: contours[1].nodes[1].y * 0.5 + contours[1].nodes[3].y * 0.5
					dirIn: - Math.PI / 2
					typeOut: 'smooth'
					expand:
						width: ( 78 / 73 * thickness )
						angle: Math.PI
						distr: 0.2
				3:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
					y: - 15
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 57 / 73 ) * thickness * contrast
						angle: Math.PI / 2 + Math.max(
							Utils.lineAngle(
					        { x: contours[1].nodes[0].x - contours[1].nodes[0].expand.width, y: contours[1].nodes[0].y },
					        { x: contours[1].nodes[3].x, y: contours[1].nodes[3].y }
					    ),
							Math.asin(
								Math.max( - 0.99, Math.min( 0.99, # we don't want asin(1)
									(
										( contours[1].nodes[3].x - contours[1].nodes[0].x ) -
										( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].x ) / 2
									) / contours[1].nodes[3].expand.width
							)))
						) # the bottom point of this node is always in the middle of the curve
						distr: 0
