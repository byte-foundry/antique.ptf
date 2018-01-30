# TODO: contrast + hight thickness
exports.glyphs['K_cap'] =
	unicode: 'K'
	glyphName: 'K'
	characterName: 'LATIN CAPITAL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth
		spacingRight: 50 * spacing + 5 + serifWidth
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
					y: 0
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 124 - (14/54) * thickness * opticThickness,
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness * opticThickness + 15 + (15)
					)
					y: capHeight
					typeOut: 'line'
					expand:
						width: ((55 / 54) * thickness * opticThickness * contrast) / Math.sin(Math.PI - Utils.lineAngle({x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}, {x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}))
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						0,
						( 281 / 700 ) * capHeight * crossbar - Math.max(
							40,
							( 40 / 54 ) * thickness * opticThickness
						)
					)
					typeIn: 'line'
					expand:
						width: ( 45 / 54 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle({x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}, {x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}) + Math.PI / 2
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( 401 / 700 ) * capHeight * crossbar
						on: [ contours[1].nodes[0].expandedTo[0], contours[1].nodes[1].expandedTo[0] ]
					})
					y: ( 401 / 700 ) * capHeight * crossbar
					typeOut: 'line'
					expand:
						width: (56 / 54) * thickness * opticThickness / -Math.cos(contours[2].nodes[0].expand.angle - Utils.lineAngle({x: contours[2].nodes[1].x, y: contours[2].nodes[1].y}, {x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}) + Math.PI / 2)
						angle: Utils.lineAngle({x: contours[1].nodes[0].expandedTo[0].x, y: contours[1].nodes[0].expandedTo[0].y}, {x: contours[1].nodes[1].expandedTo[0].x, y: contours[1].nodes[1].expandedTo[0].y})
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[0].x + 1
					y: 0
					typeIn: 'line'
					expand:
						width: (58 / 54) * thickness * opticThickness / Math.sin(Math.PI - Utils.lineAngle({x: contours[2].nodes[1].x, y: contours[2].nodes[1].y}, {x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}))
						angle: Math.PI
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerLeftInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[2].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
					noneAnchor: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperLeftInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) / 2 - 10
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
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) / 2 - 10
				)
		5:
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
		6:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0]
					reversed: true
					scaleX: -1
		7:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[2].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
