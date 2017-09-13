exports.glyphs['R'] =
	unicode: 'R'
	glyphName: 'R'
	characterName: 'LATIN CAPITAL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
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
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (14/54) * thickness * opticThickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * ( 49 / 91 ),
						contours[0].nodes[1].expandedTo[1].x
					)
					y: capHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 105 - (14),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 57 / 54 ) * thickness * opticThickness + 10
					)
					y: Math.min(
						Math.max(
							contours[1].nodes[1].y - ( 50 / 54 ) * thickness * opticThickness * contrast - 10,
							( capHeight + ( 274 / 700 ) * capHeight * crossbar ) / 2
						),
						capHeight - ( 105 / 700 ) * capHeight
					)
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 182 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].x
					y: Math.max(
						Math.min(
							contours[1].nodes[4].y + ( 50 / 54 ) * thickness * opticThickness * contrast + Math.cos( (180 - 90) / 180 * Math.PI ) * ( 59 / 54 ) * thickness * opticThickness + 10,
							( capHeight + ( 274 / 700 ) * capHeight * crossbar ) / 2
						),
						contours[1].nodes[4].y + ( 105 / 700 ) * capHeight
					)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: - 180 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[1].nodes[1].x
					y: ( 330 / 700 ) * capHeight * crossbar + (25)
					dirIn: 0 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					# tensionIn: 0.8
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[4].y
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[5].expandedTo[1].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + ( contours[2].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * ( 50 / 91 ),
						contours[0].nodes[1].expandedTo[1].x
					)
					y: contours[2].nodes[0].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 105 - (14),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 57 / 54 ) * thickness * opticThickness + 10
					)
					y: Math.min(
						contours[2].nodes[1].y - ( 50 / 54 ) * thickness * opticThickness * contrast - 10,
						contours[2].nodes[0].y - ( 98 / 700 ) * capHeight
					)
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 182 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[2].nodes[2].x
					y: 0
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[2].nodes[3].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[3].expandedTo[0].point
					noneAnchor: contours[2].nodes[3].expandedTo[0].point
					opposite: contours[2].nodes[3].expandedTo[1].point
					obliqueEndPoint: contours[2].nodes[2].expandedTo[0].point
					reversed: true
					scaleX: -1
		4:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[2].nodes[3].expandedTo[1].point
					noneAnchor: contours[2].nodes[3].expandedTo[1].point
					opposite: contours[2].nodes[3].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[2].expandedTo[1].point
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[2].nodes[3].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
