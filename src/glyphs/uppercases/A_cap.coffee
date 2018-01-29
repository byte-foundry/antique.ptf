# TODO: contrast + hight thickness
exports.glyphs['A_cap'] =
	unicode: 'A'
	glyphName: 'A'
	characterName: 'LATIN CAPITAL LETTER A'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 15 + serifWidth
		spacingRight: 50 * spacing + 15 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: (contours[0].nodes[0].expandedTo[0].x + contours[1].nodes[0].expandedTo[1].x) * 0.5
			y: capHeight + diacriticHeight
		1:
			crossbar: Utils.lineLineIntersection(
				contours[0].nodes[0].expandedTo[1],
				contours[0].nodes[1].expandedTo[1],
				contours[1].nodes[0].expandedTo[0],
				contours[1].nodes[1].expandedTo[0]
			)
		2:
			x: (contours[1].nodes[0].expandedTo[0].x + contours[1].nodes[0].expandedTo[1].x) / 2 + 20 / 54 * thickness
			y: 0
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
						width: ( 57 / 54 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * Math.min( 0.5, 1 - 0.5 * contrast )
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 49 / 54 ) * thickness * opticThickness * contrast
						angle: 0
						distr: Math.max( 0, 1.5 - 0.75 * contrast )
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 116 - (14),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 57 / 54 ) * thickness * opticThickness + 30
					)
					y: 0
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.75
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 48 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		2:
			skeleton: true
			closed: false
			reversed: true
			nodes:
				0:
					x: Utils.onLine({
						y: Math.min(
							( 246 / 600 ) * xHeight * crossbar,
							anchors[1].crossbar.y - ( ( 27 / 54 ) * thickness * opticThickness ) / 600 * xHeight
						)
						on: [ contours[0].nodes[0], contours[0].nodes[1] ]
					})
					y: Math.min(
						( 246 / 600 ) * xHeight * crossbar,
						anchors[1].crossbar.y - ( ( 27 / 54 ) * thickness * opticThickness ) / 600 * xHeight
					)
					typeOut: 'line'
					expand:
						width: Math.max(
							4,
							Math.min(
								( 50 / 54 ) * thickness * opticThickness,
								contours[2].nodes[0].y - ( 20 / 600 ) * xHeight
							)
						) * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: Utils.onLine({
						y: contours[2].nodes[0].y
						on: [ contours[1].nodes[0], contours[1].nodes[1] ]
					})
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand:
						width: contours[2].nodes[0].expand.width
						angle: - Math.PI / 2
						distr: 0
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
			base: ['none', 'serif-oblique-acute']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		5:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
					scaleX: -1
					reversed: true
