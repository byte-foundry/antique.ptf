exports.glyphs['a_alt'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	altImg: 'alt-antique-a-1.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
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
			x: ( contours[0].nodes[2].expandedTo[0].x + contours[1].nodes[0].expandedTo[1].x ) / 2
			y: xHeight + diacriticHeight
		1:
			x: ( contours[1].nodes[0].expandedTo[0].x + contours[1].nodes[0].expandedTo[1].x ) / 2 + 15 / 29 * thickness
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: Math.min(
						contours[0].nodes[2].expandedTo[1].y,
						xHeight / 2 - 10
					)
					dirOut: - Math.PI / 2
					expand:
						width: ( 12 / 54 ) * thickness * contrast * contrastExtremity
						angle: 215 / 180 * Math.PI
						distr: 1
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 77 / 150 )
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 51 / 54 ) * thickness * contrast
						angle: 68 / 180 * Math.PI
						distr: 0
				2:
					x: spacingLeft + (13/54) * thickness
					y: Math.max(
						98,
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
						contours[0].nodes[3].expandedTo[1].y,
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
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * ( ( 55 / 54 ) * thickness ) * Math.cos( 13 / 180 * Math.PI ) + 20
					)
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[1].nodes[0].x
					y: xHeight
					expand:
						width: thickness
						angle: 0
						distr: 0.75
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
