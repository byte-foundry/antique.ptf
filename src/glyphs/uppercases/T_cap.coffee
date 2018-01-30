# TODO: rotation serifs
exports.glyphs['T_cap'] =
	unicode: 'T'
	glyphName: 'T'
	characterName: 'LATIN CAPITAL LETTER T'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 5
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[0].x + 125 + 100 * width,
						thickness * 2
					)
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: Math.max( 0, serifHeight * serifArc )
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.5
				1:
					x: contours[1].nodes[0].x
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.5
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'topleftbottom'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			# 	[ 'skewX',( - 15 * serifRotate ) / 180 * Math.PI ],
			# 	[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
			parameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].x )
					then (contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].x) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].x )
					then (contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].x) / 2
					else serifCurve
				)
		3:
			base: ['none', 'serif-horizontal']
			id: 'toplefttop'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			# 	[ 'skewX',( - 15 * serifRotate ) / 180 * Math.PI ],
			# 	[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
			parameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].x )
					then (contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].x) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].x )
					then (contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].x) / 2
					else serifCurve
				)
		4:
			base: ['serif-horizontal', 'none']
			id: 'toprightbottom'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
			parameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[0].nodes[1].x - contours[1].nodes[0].expandedTo[1].x )
					then (contours[0].nodes[1].x - contours[1].nodes[0].expandedTo[1].x) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[0].nodes[1].x - contours[1].nodes[0].expandedTo[1].x )
					then (contours[0].nodes[1].x - contours[1].nodes[0].expandedTo[1].x) / 2
					else serifCurve
				)
		5:
			base: ['none', 'serif-horizontal']
			id: 'toprighttop'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			# 	[ 'skewX',( - 15 * serifRotate ) / 180 * Math.PI ],
			# 	[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
			parameters:
				serifHeight: Math.min(
					serifHeight,
					if serifHeight + serifCurve > ( contours[0].nodes[1].x - contours[1].nodes[0].expandedTo[1].x )
					then (contours[0].nodes[1].x - contours[1].nodes[0].expandedTo[1].x) / 2
					else serifHeight
				)
				serifCurve: Math.min(
					serifCurve,
					if serifHeight + serifCurve > ( contours[0].nodes[1].x - contours[1].nodes[0].expandedTo[1].x )
					then (contours[0].nodes[1].x - contours[1].nodes[0].expandedTo[1].x) / 2
					else serifCurve
				)
