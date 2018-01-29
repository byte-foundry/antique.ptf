# TODO: contrast + hight thickness
exports.glyphs['M_alt'] =
	unicode: 'M'
	glyphName: 'M'
	characterName: 'LATIN CAPITAL LETTER M'
	altImg: 'alt-antique-M-1.svg'
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
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
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
						width: ( 57 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI
						distr: 0.25
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 180 - (14),
						#contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 57 / 54 ) * thickness * opticThickness + contours[2].nodes[1].expand.width + 30
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 57 / 54 ) * thickness * opticThickness + 30
					)
					y: Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[1].nodes[1].expandedTo[0].x ) / 2
					y: contours[3].nodes[0].y
					typeOut: 'line'
					expand:
						width: Math.min(
							( 43 / 54 ) * thickness * opticThickness,
							contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x - 60
						) * contrast
						angle: Utils.lineAngle({x: contours[2].nodes[1].x, y: contours[2].nodes[1].y}, {x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}) + Math.PI / 2
						distr: 0.6
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight
					expand:
						width: (39 / 54) * thickness * opticThickness * contrast / Math.sin(Utils.lineAngle({x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}, {x: contours[2].nodes[1].x, y: contours[2].nodes[1].y}))
						angle: 0
						distr: Math.min( 1, Math.max( 0, ( 0.45 / 54 ) * thickness * contrast ))
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[1].nodes[1].expandedTo[0].x ) / 2
					y: Math.min(
						( 148 / 700 ) * capHeight * crossbar,
						( 148 / 54 ) * thickness
					)
					typeOut: 'line'
					expand:
						width: Math.min(
							( 43 / 54 ) * thickness * opticThickness,
							contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x - 60
						)
						angle: Utils.lineAngle({x: contours[3].nodes[1].x, y: contours[3].nodes[1].y}, {x: contours[3].nodes[0].x, y: contours[3].nodes[0].y}) + Math.PI / 2
						distr: 0.4
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: capHeight
					expand:
						width: (39 / 54) * thickness * opticThickness / Math.sin(Utils.lineAngle({x: contours[3].nodes[0].x, y: contours[3].nodes[0].y}, {x: contours[3].nodes[1].x, y: contours[3].nodes[1].y}))
						angle: 0
						distr: Math.min( 1, Math.max( 0, 1 - ( 0.45 / 54 ) * thickness ))
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[3].nodes[0].expandedTo[0].x
					y: contours[3].nodes[0].expandedTo[0].y
					typeOut: 'line'
				2:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					typeOut: 'line'
				3:
					x: contours[3].nodes[0].expandedTo[1].x
					y: contours[3].nodes[0].expandedTo[1].y
					typeOut: 'line'
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
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[2].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) - 10
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
			base: ['none', 'serif-oblique-acute']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1]
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[3].nodes[1].expandedTo[0].x - contours[2].nodes[1].expandedTo[1].x ) / 2 - 10
				)
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[1].expandedTo[1].x - contours[3].nodes[0].expandedTo[1].x ) - 10
				)
		5:
			base: ['serif-oblique-acute', 'none']
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
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[0]
					noneAnchor: contours[3].nodes[1].expandedTo[0]
					opposite: contours[3].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[3].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[3].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[3].nodes[1].expandedTo[0].x - contours[2].nodes[1].expandedTo[1].x ) / 2 - 10
				)
		7:
			base: ['serif-oblique-acute', 'none']
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
