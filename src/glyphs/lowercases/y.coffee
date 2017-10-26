exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	altImg: 'alt-antique-y-0.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + serifWidth
		spacingRight: 50 * spacing + 35
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: ( contours[1].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) * 0.5
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
					dirOut: - 90 + 'deg'
					expand:
						width: ( 12 / 54 ) * thickness * contrast * contrastExtremity
						angle: 180 + 31 + 'deg'
						distr: 1
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 77 / 150 )
					y: ( 53 / 600 ) * xHeight
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 51 / 54 ) * thickness * contrast
						angle: 68 + 'deg'
						distr: 0
				2:
					x: spacingLeft + (13/54) * thickness
					y: Math.max(
						156,
						contours[0].nodes[1].y + ( Math.cos( ( Math.PI / 2 ) - ( 68 / 180 * Math.PI ) ) * ( 51 / 54 ) * thickness ) + 10
					)
					dirIn: - 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 55 / 54 ) * thickness
						angle: 13 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[2].x
					y: xHeight
					dirOut: 90 + 'deg'
					expand:
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
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
						angle: 180 + 'deg'
						distr: 0.25
				1:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * ( ( 55 / 54 ) * thickness ) * Math.cos( 13 / 180 * Math.PI ) + 20
					)
					y: contours[1].nodes[3].expandedTo[0].y
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness
						angle: 189 + 'deg'
						distr: 0.25
				2:
					x: contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[4].expandedTo[0].x ) * ( 97 / 194)
					y: descender - overshoot
					dirOut: 180 + 'deg'
					typeIn: 'smooth'
					expand:
						width: Math.min(
							( 47 / 54 ) * thickness * contrast,
							- descender - overshoot - 10
						)
						angle: 90 + 'deg'
						distr: 0
				3:
					x: contours[1].nodes[4].x
					y: Math.min(
						contours[0].nodes[1].y - 20,
						contours[1].nodes[2].y + ( 47 / 54 ) * thickness * contrast + 56
					)
					typeOut: 'line'
					dirIn: - 90 + 'deg'
					expand:
						width: ( 55 / 54 ) * thickness * contrast * contrastExtremity
						angle: - 9 + 'deg'
						distr: 0
				4:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[0].y - contours[1].nodes[3].expandedTo[0].y ) * ( 22 / 53 )
					typeIn: 'line'
					expand:
						width: thickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[0]
					opposite: contours[0].nodes[3].expandedTo[1]
					reversed: true
					noneAnchor: contours[0].nodes[3].expandedTo[0]
			transformOrigin: contours[0].nodes[3].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['none', 'serif-vertical']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[1]
					opposite: contours[0].nodes[3].expandedTo[0]
					noneAnchor: contours[0].nodes[3].expandedTo[1]
			transformOrigin: contours[0].nodes[3].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[3].expandedTo[1].x ) / 2 - 10
				)
		2:
			base: ['none', 'serif-vertical']
			id: 'topright2'
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
		3:
			base: ['serif-vertical', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
					noneAnchor: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[3].expandedTo[1].x ) / 2 - 10
				)
		4:
			base: ['none', 'serif-vertical']
			id: 'bottomright'
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
			parentParameters:
				serifHeight: Math.min(
					serifHeight,
					contours[1].nodes[4].y - contours[1].nodes[3].y
				)
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[4].expandedTo[1].x ) - 10
				)
		# 5:
		# 	base: ['none', 'serif-vertical']
		# 	id: 'bottomleft'
		# 	parentAnchors:
		# 		0:
		# 			base: contours[1].nodes[4].expandedTo[0]
		# 			opposite: contours[1].nodes[4].expandedTo[1]
		# 			noneAnchor: contours[1].nodes[4].expandedTo[0]
		# 			reversed: true
		# 	transformOrigin: contours[1].nodes[4].expandedTo[0]
		# 	transforms: Array(
		# 		[ 'scaleY', -1 ]
		# 	)
		# 	parentParameters:
		# 		serifHeight: Math.min(
		# 			serifHeight,
		# 			contours[1].nodes[4].y - contours[1].nodes[3].y
		# 		)
