# TODO: xHeight and crossbar
# TODO: contrast and contours[0].nodes[0].x
exports.glyphs['e'] =
	unicode: 'e'
	glyphName: 'e'
	characterName: 'LATIN SMALL LETTER E'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 35
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: (contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[3].expandedTo[0].x) / 2
			y: xHeight + diacriticHeight
		1:
			ogonek: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[0], contours[0].nodes[2].expandedTo[0], 30 + 40 * (0.5 + width / 2), true, 10 )
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
					y: Math.min(
						contours[0].nodes[1].expandedTo[0].y + 125,
						xHeight / 2 - 10
					)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * contrast * contrastExtremity
						angle: - 176 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 47 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: spacingLeft + (13/54) * thickness
					y: Math.max(
						98,
						contours[0].nodes[2].y + ( 47 / 54 ) * thickness + 10
					)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: - 3 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].x
					y: Math.min(
						xHeight - 98,
						contours[0].nodes[5].y - ( 47 / 54 ) * thickness - 10
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 2 + 'deg'
						distr: 0.25
					})
				5:
					x: contours[0].nodes[2].x
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 47 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				6:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				7:
					x: contours[0].nodes[6].x
					y: Math.max(
						contours[0].nodes[6].expandedTo[0].y * crossbar - 189,
						xHeight / 2 + 10
					)
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				8:
					x: contours[0].nodes[7].expandedTo[0].x
					y: contours[0].nodes[7].expandedTo[0].y + 0.25 * Math.min(
						( 47 / 54 ) * thickness * contrast,
						contours[0].nodes[6].expandedTo[0].y - contours[0].nodes[7].expandedTo[0].y - ( 50 / 600 ) * xHeight
					)
					typeOut: 'line'
					expand: Object({
						width: Math.min(
							( 47 / 54 ) * thickness * contrast,
							contours[0].nodes[6].expandedTo[0].y - contours[0].nodes[7].expandedTo[0].y - ( 50 / 600 ) * xHeight
						)
						angle: 90 + 'deg'
						distr: 0.25
					})
				9:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[8].expandedTo[0].y
					expand: Object({
						width: Math.min(
							( 47 / 54 ) * thickness * contrast,
							contours[0].nodes[6].expandedTo[0].y - contours[0].nodes[7].expandedTo[0].y - ( 50 / 600 ) * xHeight
						) * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
					})
	components:
		0:
			base: ['none', 'serif-vertical']
			id: 'bottomright'
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
		1:
			base: ['none', 'serif-vertical']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		2:
			base: ['none', 'serif-vertical']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[7].expandedTo[0].point
					opposite: contours[0].nodes[7].expandedTo[1].point
					noneAnchor: contours[0].nodes[7].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[7].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
