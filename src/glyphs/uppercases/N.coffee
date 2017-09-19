exports.glyphs['N'] =
	unicode: 'N'
	glyphName: 'N'
	characterName: 'LATIN CAPITAL LETTER N'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth
		spacingRight: 50 * spacing + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: ( contours[1].nodes[1].expandedTo[0].x + contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (14/54) * thickness * opticThickness
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: ( 49 / 54 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 107 - (14),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 49 / 54 ) * thickness * opticThickness + 30
					)
					y: Math.max( 0, serifHeight * serifArc )
					expand: Object({
						width: ( 49 / 54 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: Math.min(
							( 48 / 54 ) * thickness * opticThickness / Math.sin( Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point ) ),
							contours[1].nodes[0].expand.width
						)
						angle: 0 + 'deg'
						distr: Math.min( 0.55, Math.max( 0, 1 - ( 0.45 / 54 ) * thickness ))
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight
					expand: Object({
						width: Math.min(
							( 48 / 54 ) * thickness * opticThickness / Math.sin( Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point ) ),
							contours[0].nodes[0].expand.width
						)
						angle: 0 + 'deg'
						distr: Math.min( 1, Math.max( 0.45, ( 0.45 / 54 ) * thickness ))
					})
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0].point
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[1].x - contours[2].nodes[1].expandedTo[1].x ) - 10
				)
		5:
			base: ['none', 'serif-oblique-acute']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					noneAnchor: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
		6:
			base: ['none', 'serif-oblique-acute']
			id: 'topleftright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1].point
					# scaleY: -1
					# reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		7:
			base: ['none', 'serif-oblique-obtuse']
			id: 'bottomrightleft'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0].point
					noneAnchor: contours[2].nodes[0].expandedTo[0].point
					opposite: contours[2].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[2].nodes[1].expandedTo[0].point
					# scaleX: -1
					# reversed: true
			# transformOrigin: contours[2].nodes[0].expandedTo[0].point
			# transforms: Array(
			# 	[ 'scaleX', -1 ]
			# )
