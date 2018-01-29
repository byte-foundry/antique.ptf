exports.glyphs['i'] =
	unicode: 'i'
	glyphName: 'i'
	characterName: 'LATIN SMALL LETTER I'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + serifWidth
		spacingRight: 50 * spacing + 35 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].x + 15 / 54 * thickness
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (27/54) * thickness
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					expand:
						width: thickness
						angle: 0
						distr: 0.5
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
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerRightStump'
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
		3:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
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
		4:
			base: ['none', 'serif-vertical']
			id: 'topright'
			class: 'upperRightStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
