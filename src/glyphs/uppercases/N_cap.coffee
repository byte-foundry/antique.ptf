# TODO: contrast + hight thickness
exports.glyphs['N_cap'] =
	unicode: 'N'
	glyphName: 'N'
	characterName: 'LATIN CAPITAL LETTER N'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 49 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI
						distr: 0.25
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 107 - (14),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 49 / 54 ) * thickness * opticThickness + 30
					)
					y: Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 49 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[1].y
					typeOut: 'line'
					expand:
						width: Math.min(
							(48 / 54) * thickness * opticThickness / Math.sin(Utils.lineAngle({x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}, {x: contours[2].nodes[1].x, y: contours[2].nodes[1].y})),
							( 49 / 54 ) * thickness * opticThickness
						)
						angle: 0
						distr: Math.min( 0.55, Math.max( 0, 1 - ( 0.45 / 54 ) * thickness ))
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight
					typeIn: 'line'
					expand:
						width: Math.min(
							(48 / 54) * thickness * opticThickness / Math.sin(Utils.lineAngle({x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}, {x: contours[2].nodes[1].x, y: contours[2].nodes[1].y})),
							( 50 / 54 ) * thickness * opticThickness
						)
						angle: 0
						distr: Math.min( 1, Math.max( 0.45, ( 0.45 / 54 ) * thickness * contrast ))
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
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
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
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
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
		6:
			base: ['none', 'serif-oblique-acute']
			id: 'topleftright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1]
					# scaleY: -1
					# reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		7:
			base: ['none', 'serif-oblique-obtuse']
			id: 'bottomrightleft'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[0]
					# scaleX: -1
					# reversed: true
			# transformOrigin: contours[2].nodes[0].expandedTo[0]
			# transforms: Array(
			# 	[ 'scaleX', -1 ]
			# )
