exports.glyphs['j'] =
	unicode: 'j'
	glyphName: 'j'
	characterName: 'LATIN SMALL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 45 + serifWidth
		spacingRight: 50 * spacing + 35
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness
					y: xHeight
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.min(
						contours[0].nodes[2].expandedTo[0].y + 48,

					)
					dirOut: - Math.PI / 2
					expand:
						width: ( 55 / 54 ) * thickness
						angle: 9 / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[0].expandedTo[0].x - 45
					y: contours[0].nodes[3].y
					typeOut: 'line'
					expand:
						width: Math.min(
							( 48 / 54 ) * thickness * contrast * contrastExtremity,
							- ( ( 53 / 90 ) * descender + 10 ) - 10
						)
						angle: - 82 / 180 * Math.PI
						distr: 0
				3:
					x: contours[0].nodes[2].expandedTo[1].x - 22 * width
					y: ( 53 / 90 ) * descender - 10
					dirOut: 0
					type: 'smooth'
					expand:
						width: Math.min(
							( 47 / 54 ) * thickness * contrast * contrastExtremity,
							- ( ( 53 / 90 ) * descender + 10 ) - 10
						)
						angle: 270 / 180 * Math.PI
						distr: 0
	components:
		0:
			base: ['dotaccent', 'dotaccent_rounded']
			id: 'title'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + ( 33 / 40 ) * diacriticHeight
					optical: 58
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					reversed: true
					noneAnchor: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		2:
			base: ['none', 'serif-vertical']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['none', 'serif-horizontal']
			id: 'bottom'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[0]
					noneAnchor: contours[0].nodes[3].expandedTo[0]
					opposite: contours[0].nodes[3].expandedTo[1]
			transformOrigin: contours[0].nodes[3].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
