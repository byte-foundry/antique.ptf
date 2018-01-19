exports.glyphs['J_cap'] =
	unicode: 'J'
	glyphName: 'J'
	characterName: 'LATIN CAPITAL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
			x: (contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[0].expandedTo[1].x) / 2
			y: capHeight + diacriticHeight
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
					dirOut: - Math.PI / 2
					typeOut: 'line'
					type: 'smooth'
					expand:
						width: thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: thickness * opticThickness
						angle:( - 176 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * contrast * opticThickness
						angle:( 88 ) / 180 * Math.PI
						distr: 0
				3:
					x: spacingLeft + (13/54) * thickness
					y: Math.max(
						92,
						contours[0].nodes[2].y + ( 50 / 54 ) * thickness * contrast * opticThickness + Math.sin( Math.PI + contours[0].nodes[3].expand.angle ) * ( 58 / 54 ) * thickness * opticThickness + 10
					)
					dirIn: - Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: - 7 / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[3].expandedTo[0].y + 48
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['none', 'serif-vertical']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[4].expandedTo[1]
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
					base: contours[0].nodes[4].expandedTo[1]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
			transformOrigin: contours[0].nodes[4].expandedTo[1]
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
