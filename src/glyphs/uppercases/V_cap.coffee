exports.glyphs['V_cap'] =
	unicode: 'V'
	glyphName: 'V'
	characterName: 'LATIN CAPITAL LETTER V'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 15 + serifWidth
		spacingRight: 50 * spacing + 15 + serifWidth
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
					x: spacingLeft + (13/54) * thickness * opticThickness
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness,
						angle: 0
						distr: 0.25
				1:
					x: (contours[0].nodes[0].expandedTo[0].x + contours[1].nodes[0].expandedTo[0].x) * 0.5
					y: 0
					typeIn: 'line'
					expand:
						width: ( 48 / 54 ) * thickness * opticThickness
						angle: 0
						distr: ( 9 / 48 )
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						spacingLeft + 115 + 100 * width - (13),
						#spacingLeft + contours[0].nodes[0].expand.width + 0.75 * ( 57 / 54 ) * thickness * opticThickness + 30
						contours[0].nodes[0].expandedTo[1].x + 0.75 *  (57 / 54) * thickness * opticThickness + 30
					)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 0.75
				1:
					x: (contours[0].nodes[0].expandedTo[1].x + contours[1].nodes[0].expandedTo[1].x) * 0.5
					# x: contours[1].nodes[0].expandedTo[1].x
					y: 0
					typeIn: 'line'
					expand:
						width: ( 48 / 54 ) * thickness * opticThickness * contrast
						angle: 0
						distr: 1 - ( 9 / 48 )
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		2:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)

		3:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
