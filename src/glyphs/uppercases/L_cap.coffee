# TODO: rotation serifs
exports.glyphs['L_cap'] =
	unicode: 'L'
	glyphName: 'L'
	characterName: 'LATIN CAPITAL LETTER L'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth
		spacingRight: 50 * spacing + 15
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors: # TODO
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
		1:
			x: contours[0].nodes[0].expandedTo[1].x + 40
			y: capHeight
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
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 53 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 50,
						contours[0].nodes[0].expandedTo[1].x + thickness
					)
					y: 0
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 53 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperLeftInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-horizontal', 'none']
			id: 'bottomrighttop'
			class: 'lowerTopHoriz'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				# [ 'skewX',( - 10 * serifRotate ) / 180 * Math.PI ],
				# [ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
			parameters:
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
			id: 'bottomrightbottom'
			class: 'lowerBottomHoriz'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				# [ 'skewX',( - 10 * serifRotate ) / 180 * Math.PI ],
				# [ 'translateX', ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
			parameters:
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
