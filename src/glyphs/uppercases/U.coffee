exports.glyphs['U'] =
	unicode: 'U'
	glyphName: 'U'
	characterName: 'LATIN CAPITAL LETTER U'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
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
			x: contours[0].nodes[4].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[4].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * thickness * opticThickness * Math.sin( ( Math.PI / 2 ) - ( 3 / 180 * Math.PI ) ) + 10 + (5)
					)
					y: capHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						95,
						contours[0].nodes[2].y + ( 50 / 54 ) * thickness * opticThickness + 10
					) # TODO
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 58 / 54 ) * thickness * opticThickness * contrast
						angle: - 170 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: spacingLeft + (13/54) * thickness * opticThickness
					y: contours[0].nodes[1].y
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: - 10 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].x
					y: capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleftleft'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0].point
					opposite: contours[0].nodes[4].expandedTo[1].point
					reversed: true
					noneAnchor: contours[0].nodes[4].expandedTo[0].point
			transformOrigin: contours[0].nodes[4].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topleftright'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[1].point
					opposite: contours[0].nodes[4].expandedTo[0].point
					noneAnchor: contours[0].nodes[4].expandedTo[1].point
			transformOrigin: contours[0].nodes[4].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) / 2 - 10
				)
		2:
			base: ['serif-vertical', 'none']
			id: 'toprightleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) / 2 - 10
				)
		3:
			base: ['serif-vertical', 'none']
			id: 'toprightright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
