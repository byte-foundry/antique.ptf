# TODO: junction when big width
exports.glyphs['k'] =
	unicode: 'k'
	glyphName: 'k'
	characterName: 'LATIN SMALL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + serifWidth
		spacingRight: 50 * spacing + serifWidth
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
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 106 - (13/54) * thickness,
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 15 + (15)
					)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: (( 51 / 54 ) * thickness * contrast) / Math.sin( Math.PI - Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point ) )
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						0,
						( 250 / 600 ) * xHeight * crossbar - Math.max(
							40,
							( 40 / 54 ) * thickness
						)
					)
					expand: Object({
						width: ( 45 / 54 ) * thickness * contrast
						angle: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point ) + Math.PI / 2
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( 344 / 600 ) * xHeight * crossbar
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: ( 344 / 600 ) * xHeight * crossbar
					typeOut: 'line'
					expand: Object({
						width: ( 51 / 54 ) * thickness
						angle: Math.max(
							Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) + Math.PI / 2,
							Utils.lineAngle( { x: contours[1].nodes[0].x + 0.25 * ( 55 / 54 ) * thickness, y: contours[1].nodes[0].y }, contours[1].nodes[1].point )
						)
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + 2
					y: 0
					expand: Object({
						width: ( 53 / 54 ) * thickness / Math.sin( Math.PI - Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) )
						angle: 180 + 'deg'
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
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[2].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		2:
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
		3:
			base: ['none', 'serif-vertical']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1].point
					opposite: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[1].point
			transformOrigin: contours[0].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x - 10
				)
		5:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0].point
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		6:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0].point
					noneAnchor: contours[2].nodes[1].expandedTo[0].point
					opposite: contours[2].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0].point
					reversed: true
					scaleX: -1
		7:
			base: ['none', 'serif-oblique-acute']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1].point
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[2].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
