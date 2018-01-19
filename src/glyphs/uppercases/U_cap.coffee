exports.glyphs['U_cap'] =
	unicode: 'U'
	glyphName: 'U'
	characterName: 'LATIN CAPITAL LETTER U'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth
		spacingRight: 50 * spacing + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[4].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[4].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
		1:
			x: contours[0].nodes[2].x
			y: contours[0].nodes[2].y
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * thickness * opticThickness * Math.sin( ( Math.PI / 2 ) - ( 3 / 180 * Math.PI ) ) + 10 + (5)
					)
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						95,
						contours[0].nodes[2].y + ( 50 / 54 ) * thickness * opticThickness + 10
					) # TODO
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness * opticThickness * contrast
						angle: - 170 / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				3:
					x: spacingLeft + (13/54) * thickness * opticThickness
					y: contours[0].nodes[1].y
					dirIn: - Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness * opticThickness
						angle: - 10 / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[3].x
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleftleft'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
					reversed: true
					noneAnchor: contours[0].nodes[4].expandedTo[0]
			transformOrigin: contours[0].nodes[4].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-vertical', 'none']
			id: 'topleftright'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[1]
					opposite: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[1]
			transformOrigin: contours[0].nodes[4].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) / 2 - 10
				)
		2:
			base: ['serif-vertical', 'none']
			id: 'toprightleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
					noneAnchor: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) / 2 - 10
				)
		3:
			base: ['serif-vertical', 'none']
			id: 'toprightright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
