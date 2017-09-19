# TODO: curved serif on bottom part
exports.glyphs['y_alt_2'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	altImg: 'antique-j-like-y.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing  + 17 + serifWidth
		spacingRight: 50 * spacing + 17
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: ( contours[1].nodes[0].expandedTo[1].x + contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: contours[1].nodes[1].expandedTo[0].y
					expand: Object({
						width: ( 47 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						spacingLeft + 100 * width + 113 - (13),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 20
					)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[1].x + 0.75 * ( 47 / 54 ) * thickness
					y: Math.min(
						( 60 / 600 ) * xHeight,
						thickness
					)
					dirOut: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point )
					expand: Object({
						width: ( 45 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x
					y: descender - 10
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: Math.min(
							( 47 / 54 ) * thickness,
							( contours[1].nodes[1].y + Math.abs( contours[1].nodes[2].y ) ) - 15
						)
						angle: 180 + 90 + 'deg'
						distr: 1
					})
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['none', 'serif-oblique-acute']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		2:
			base: ['none', 'serif-oblique-obtuse']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1].point
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		# 4:
		# 	base: ['serif-curve-inside-auto', 'none']
		# 	id: 'bottom'
		# 	parentAnchors:
		# 		0:
		# 			baseWidth: contours[1].nodes[2].expandedTo[0]
		# 			baseHeight: contours[1].nodes[2].expandedTo[0].point
		# 			noneAnchor: contours[1].nodes[2].expandedTo[0].point
		# 			opposite: contours[1].nodes[2].expandedTo[1].point
		# 			curveEnd: contours[1].nodes[1].expandedTo[0]
		# 			# rotationAngle: -15
		# 			rotationCenter: contours[1].nodes[2].expandedTo[0].point
		# 	transformOrigin: contours[1].nodes[2].expandedTo[0].point
		# 	transforms: Array(
		# 		[ 'scaleX', -1 ]
		# 		# [ 'scaleY', -1 ]
		# 	)
