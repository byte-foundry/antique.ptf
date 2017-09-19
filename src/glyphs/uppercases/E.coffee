# TODO: rotation serifs
exports.glyphs['E'] =
	unicode: 'E'
	glyphName: 'E'
	characterName: 'LATIN CAPITAL LETTER E'
	ot:
		advanceWidth: contours[3].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth
		spacingRight: 50 * spacing + 20
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: (contours[0].nodes[0].expandedTo[0].x + contours[3].nodes[1].expandedTo[1].x) * 0.5
			y: capHeight + diacriticHeight
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
						width: ( 53 / 54 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 60,
						contours[0].nodes[1].expandedTo[1].x + thickness
					)
					y: capHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 53 / 54 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: ( 365 / 700 ) * capHeight * crossbar
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: Math.min(
							( 53 / 54 ) * thickness * opticThickness * contrast,
							contours[1].nodes[1].expandedTo[1].y - contours[3].nodes[1].expandedTo[1].y - 30
						)
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: Math.max(
						contours[1].nodes[1].x - 26 * width,
						contours[0].nodes[0].x + thickness
					)
					y: contours[2].nodes[0].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: contours[2].nodes[0].expand.width
						angle: 90 + 'deg'
						distr: 0.5
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 53 / 54 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[1].nodes[1].x + 5,
						contours[0].nodes[0].x + thickness
					)
					y: 0
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 53 / 54 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
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
		2:
			base: ['serif-horizontal', 'none']
			id: 'toprightbottom'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
			# transformOrigin: contours[1].nodes[1].expandedTo[1].point
			# transforms: Array(
			# 	[ 'skewX', - 15 * serifRotate + 'deg' ],
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
		3:
			base: ['none', 'serif-horizontal']
			id: 'toprighttop'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					noneAnchor: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			# 	[ 'skewX', - 15 * serifRotate + 'deg' ],
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
		4:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1].point
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
		5:
			base: ['serif-horizontal', 'none']
			id: 'middlebottom'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0].point
					noneAnchor: contours[2].nodes[1].expandedTo[0].point
					opposite: contours[2].nodes[1].expandedTo[1].point
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
		6:
			base: ['serif-horizontal', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[1].point
					noneAnchor: contours[3].nodes[1].expandedTo[1].point
					opposite: contours[3].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[3].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ],
				# [ 'skewX', - 10 * serifRotate + 'deg' ],
				# [ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
			parentParameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[3].nodes[1].x - contours[3].nodes[0].x )
					then (contours[3].nodes[1].x - contours[3].nodes[0].x) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[3].nodes[1].x - contours[3].nodes[0].x )
					then (contours[3].nodes[1].x - contours[3].nodes[0].x) / 2
					else serifCurve
				)
		7:
			base: ['none', 'serif-horizontal']
			id: 'bottomrightbottom'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[0].point
					noneAnchor: contours[3].nodes[1].expandedTo[0].point
					opposite: contours[3].nodes[1].expandedTo[1].point
					reversed: true
			transformOrigin: contours[3].nodes[1].expandedTo[0].point
			transforms: Array(
				# [ 'skewX', - 10 * serifRotate + 'deg' ],
				# [ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
			parentParameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[3].nodes[1].x - contours[3].nodes[0].x )
					then (contours[3].nodes[1].x - contours[3].nodes[0].x) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[3].nodes[1].x - contours[3].nodes[0].x )
					then (contours[3].nodes[1].x - contours[3].nodes[0].x) / 2
					else serifCurve
				)
