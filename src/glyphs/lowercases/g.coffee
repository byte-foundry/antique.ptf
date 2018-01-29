# TODO: big thickness and descender
exports.glyphs['g'] =
	unicode: 'g'
	glyphName: 'g'
	characterName: 'LATIN SMALL LETTER G'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 35 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: (contours[1].nodes[1].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: Math.min(
						contours[0].nodes[2].expandedTo[1].y,
						xHeight / 2 - 10
					)
					dirOut: - Math.PI / 2
					expand:
						width: ( 12 / 54 ) * thickness * contrast * contrastExtremity
						angle: 211 / 180 * Math.PI
						distr: 1
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 77 / 150 )
					y: ( 53 / 600 ) * xHeight
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 51 / 54 ) * thickness * contrast
						angle: 68 / 180 * Math.PI
						distr: 0
				2:
					x: spacingLeft + (13/54) * thickness
					y: Math.max(
						156,
						contours[0].nodes[1].y + ( Math.cos( ( Math.PI / 2 ) - ( 68 / 180 * Math.PI ) ) * ( 51 / 54 ) * thickness ) + 10
					)
					dirIn: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 55 / 54 ) * thickness
						angle: 13 / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[2].x
					y: Math.min(
						xHeight - 98,
						contours[0].nodes[4].y - ( 47 / 54 ) * thickness - 10
					)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: thickness
						angle: 2 / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[1].x
					y: xHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 51 / 54 ) * thickness * contrast
						angle: - 67 / 180 * Math.PI
						distr: 0
				5:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						# contours[0].nodes[4].y - ( Math.sin( ( 68 / 180 * Math.PI ) ) * ( 51 / 54 ) * thickness ) - 10,
						contours[0].nodes[3].expandedTo[0].y,
						xHeight / 2 + 10
					)
					dirIn: Math.PI / 2
					expand:
						width: ( 12 / 54 ) * thickness * contrast * contrastExtremity
						angle: 208 / 180 * Math.PI
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 55 / 54 ) * thickness
						angle: Math.PI
						distr: 0.25
				1:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * ( ( 55 / 54 ) * thickness ) * Math.cos( 13 / 180 * Math.PI ) + 20
					)
					y: contours[1].nodes[3].expandedTo[0].y
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: thickness
						angle: 189 / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[4].expandedTo[0].x ) * ( 97 / 194)
					y: descender - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: Math.min(
							( 47 / 54 ) * thickness * contrast,
							- descender - overshoot - 10
						)
						angle: Math.PI / 2
						distr: 0
				3:
					x: contours[1].nodes[4].x
					y: Math.min(
						contours[0].nodes[1].y - 20,
						contours[1].nodes[2].y + ( 47 / 54 ) * thickness * contrast + 56
					)
					typeOut: 'line'
					dirIn: - Math.PI / 2
					expand:
						width: ( 55 / 54 ) * thickness * contrast * contrastExtremity
						angle: - 9 / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[0].y - contours[1].nodes[3].expandedTo[0].y ) * ( 22 / 53 )
					expand:
						width: thickness * contrast * contrastExtremity
						angle: 0
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['none', 'serif-vertical']
			id: 'bottomright'
			class: 'bottomLeftCurveInsideEnd'
			parentAnchors:
				0:
					base: contours[1].nodes[4].expandedTo[1]
					opposite: contours[1].nodes[4].expandedTo[0]
					noneAnchor: contours[1].nodes[4].expandedTo[1]
			transformOrigin: contours[1].nodes[4].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[4].expandedTo[1].x ) - 10
				)
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[1].nodes[4].y - contours[1].nodes[3].expandedTo[0].y )
					then (contours[1].nodes[4].y - contours[1].nodes[3].y) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[1].nodes[4].y - contours[1].nodes[3].expandedTo[0].y )
					then (contours[1].nodes[4].y - contours[1].nodes[3].y) / 2
					else serifCurve
				)
		2:
			base: ['none', 'serif-vertical']
			id: 'bottomleft'
			class: 'bottomLeftCurveEnd'
			parentAnchors:
				0:
					base: contours[1].nodes[4].expandedTo[0]
					opposite: contours[1].nodes[4].expandedTo[1]
					noneAnchor: contours[1].nodes[4].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[4].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[1].nodes[4].y - contours[1].nodes[3].expandedTo[0].y )
					then (contours[1].nodes[4].y - contours[1].nodes[3].y) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[1].nodes[4].y - contours[1].nodes[3].expandedTo[0].y )
					then (contours[1].nodes[4].y - contours[1].nodes[3].y) / 2
					else serifCurve
				)
