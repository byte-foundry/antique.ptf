exports.glyphs['J'] =
	unicode: 'J'
	glyphName: 'J'
	characterName: 'LATIN CAPITAL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * thickness * Math.sin( ( Math.PI / 2 ) - ( 3 / 180 * Math.PI ) ) + 10 + (5)
					)
					y: capHeight
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness
						angle: - 176 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast * opticThickness
						angle: 88 + 'deg'
						distr: 0
					})
				3:
					x: spacingLeft + (13/54) * thickness
					y: Math.max(
						92,
						contours[0].nodes[2].y + ( 50 / 54 ) * thickness * contrast * opticThickness + Math.sin( Math.PI + contours[0].nodes[3].expand.angle ) * ( 58 / 54 ) * thickness * opticThickness + 10
					)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: - 7 / 180 * Math.PI
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[3].expandedTo[0].y + 48
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['none', 'serif-vertical']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0].point
					noneAnchor: contours[0].nodes[4].expandedTo[0].point
					opposite: contours[0].nodes[4].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[4].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[0].nodes[4].y - contours[0].nodes[3].expandedTo[1].y )
					then (contours[0].nodes[4].y - contours[0].nodes[3].y) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[0].nodes[4].y - contours[0].nodes[3].expandedTo[1].y )
					then (contours[0].nodes[4].y - contours[0].nodes[3].y) / 2
					else serifCurve
				)
		3:
			base: ['none', 'serif-vertical']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[1].point
					noneAnchor: contours[0].nodes[4].expandedTo[1].point
					opposite: contours[0].nodes[4].expandedTo[0].point
			transformOrigin: contours[0].nodes[4].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[0].nodes[4].y - contours[0].nodes[3].expandedTo[0].y )
					then (contours[0].nodes[4].y - contours[0].nodes[3].y) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[0].nodes[4].y - contours[0].nodes[3].expandedTo[0].y )
					then (contours[0].nodes[4].y - contours[0].nodes[3].y) / 2
					else serifCurve
				)
				serifWidth: Math.min(
					serifWidth,
					( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) - 10
				)
