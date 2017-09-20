exports.glyphs['w'] =
	unicode: 'w'
	glyphName: 'w'
	characterName: 'LATIN SMALL LETTER W'
	ot:
		advanceWidth: contours[3].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30 + serifWidth
		spacingRight: 50 * spacing + 30 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			thickness: Math.min(
				( 43 / 54 ) * thickness,
				Math.max(
					( contours[3].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 3,
					30
				)
			)
		1:
			thickness: Math.min(
				( 43 / 54 ) * thickness,
				(( contours[3].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) - 40 * 2) / 3.5 - 5 * width
			)
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 40
					y: 0
					expand: Object({
						width: anchors[1].thickness
						angle: 0 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[3].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5 - 0.25 * anchors[0].thickness
					y: xHeight - ( thickness / anchors[0].thickness ) * 50 + (63)
					typeOut: 'line'
					expand: Object({
						width: anchors[0].thickness * contrast
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
					expand: Object({
						width: anchors[1].thickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: anchors[0].thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[3].nodes[1].expandedTo[0].x
					y: contours[3].nodes[1].y
					expand: Object({
						width: anchors[1].thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 200 + ( 38 / 54 ) * thickness - (12),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 15
					)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[3].nodes[0].expandedTo[1].x - 40
					y: 0
					expand: Object({
						width: anchors[1].thickness * contrast
						angle: 0 + 'deg'
						distr: 1
					})
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) - 15
				)
		2:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[1].point
					noneAnchor: contours[3].nodes[0].expandedTo[1].point
					opposite: contours[3].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[3].nodes[1].expandedTo[1].point
			transformOrigin: contours[3].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)

		3:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[0].point
					noneAnchor: contours[3].nodes[0].expandedTo[0].point
					opposite: contours[3].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[3].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[3].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) - 15
				)
