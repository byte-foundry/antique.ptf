# TODO: rotation serifs
exports.glyphs['F_cap'] =
	unicode: 'F'
	glyphName: 'F'
	characterName: 'LATIN CAPITAL LETTER F'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth
		spacingRight: 50 * spacing + 20
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
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 53 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 50,
						contours[0].nodes[1].expandedTo[1].x + thickness
					)
					y: capHeight
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 53 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.min(
						( 345 / 700 ) * capHeight * crossbar,
						contours[1].nodes[1].expandedTo[1].y - ( 53 / 54 ) * thickness * opticThickness * contrast / 2 - 15
					)
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 53 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0.5
				1:
					x: Math.max(
						contours[1].nodes[1].x - 16 * width,
						contours[0].nodes[0].x + thickness
					)
					y: contours[2].nodes[0].y
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 53 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0.5
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
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
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
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
			base: ['serif-horizontal', 'none']
			id: 'toprightbottom'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
			# transformOrigin: contours[1].nodes[1].expandedTo[1]
			# transforms: Array(
			# 	[ 'skewX',( - 15 * serifRotate ) / 180 * Math.PI ],
			# 	[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			# )
			parentParameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[1].nodes[1].x - contours[1].nodes[0].x )
					then (contours[1].nodes[1].x - contours[1].nodes[0].x) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[1].nodes[1].x - contours[1].nodes[0].x )
					then (contours[1].nodes[1].x - contours[1].nodes[0].x) / 2
					else serifCurve
				)
		4:
			base: ['none', 'serif-horizontal']
			id: 'toprighttop'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			# 	[ 'skewX',( - 15 * serifRotate ) / 180 * Math.PI ],
			# 	[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
			parentParameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[1].nodes[1].x - contours[1].nodes[0].x )
					then (contours[1].nodes[1].x - contours[1].nodes[0].x) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[1].nodes[1].x - contours[1].nodes[0].x )
					then (contours[1].nodes[1].x - contours[1].nodes[0].x) / 2
					else serifCurve
				)
		5:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[2].nodes[1].x - contours[2].nodes[0].x )
					then (contours[2].nodes[1].x - contours[2].nodes[0].x) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[2].nodes[1].x - contours[2].nodes[0].x )
					then (contours[2].nodes[1].x - contours[2].nodes[0].x) / 2
					else serifCurve
				)
		6:
			base: ['serif-horizontal', 'none']
			id: 'middlebottom'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					scaleX: -1
			parentParameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[2].nodes[1].x - contours[2].nodes[0].x )
					then (contours[2].nodes[1].x - contours[2].nodes[0].x) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[2].nodes[1].x - contours[2].nodes[0].x )
					then (contours[2].nodes[1].x - contours[2].nodes[0].x) / 2
					else serifCurve
				)
