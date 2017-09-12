# TODO: contrast
exports.glyphs['x'] =
	unicode: 'x'
	glyphName: 'x'
	characterName: 'LATIN SMALL LETTER X'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 8 + serifWidth
		spacingRight: 50 * spacing + 8 + serifWidth
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
					x: spacingLeft + (17/54) * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( ( 53 / 54 ) * thickness ) / Math.sin( Utils.lineAngle( { x: spacingLeft - (0.25 * thickness), y: xHeight }, contours[0].nodes[1].point ) )
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: Math.max(
						contours[0].nodes[0].x - 0.25 * (55/54) * thickness + 100 * width + 115 - (37/54) * thickness,
						contours[0].nodes[0].x + 0.75 * (55/54) + thickness
					)
					y: 0
					expand: Object({
						width: ( ( 53 / 54 ) * thickness ) / Math.sin( Utils.lineAngle( { x: spacingLeft - (0.25 * thickness), y: xHeight }, contours[0].nodes[1].point ) )
						angle: 0 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: Utils.onLine({
					# 	y: xHeight / 2 - ( 8 / 54 ) * thickness
					# 	on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[0].point ]
					# })
					# y: xHeight / 2 - ( 8 / 54 ) * thickness
					x: Utils.onLine({
						y: xHeight / 2
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: xHeight / 2
					typeOut: 'line'
					expand: Object({
						width: ( 38 / 54 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) - Math.PI / 2
						distr: 1
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x - (12) # ( 12 / 54) * thickness * contrast
					y: xHeight
					expand: Object({
						width: - ( 50 / 54 ) * thickness / Math.sin( Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].expandedTo[1].point )) * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: Utils.onLine({
					# 	y: xHeight / 2 + ( 11 / 54 ) * thickness
					# 	on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[0].point ]
					# })
					# y: xHeight / 2 + ( 11 / 54 ) * thickness
					x: Utils.onLine({
						y: xHeight / 2
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: xHeight / 2
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 54 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point ) - Math.PI / 2
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + (12)
					y: 0
					expand: Object({
						width: contours[1].nodes[1].expand.width
						angle: 180 + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleftleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topleftright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2 - 10
				)
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomrightleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1].point
					noneAnchor: contours[0].nodes[1].expandedTo[1].point
					opposite: contours[0].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1].point
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[0].nodes[1].expandedTo[1].x - contours[2].nodes[1].expandedTo[0].x ) / 2 - 10
				)
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomrightright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleftleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1].point
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleftright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0].point
					noneAnchor: contours[2].nodes[1].expandedTo[0].point
					opposite: contours[2].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[0].nodes[1].expandedTo[1].x - contours[2].nodes[1].expandedTo[0].x ) / 2 - 10
				)
		6:
			base: ['serif-oblique-acute', 'none']
			id: 'toprightleft'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					noneAnchor: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2 - 10
				)
		7:
			base: ['serif-oblique-obtuse', 'none']
			id: 'toprightright'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1].point
			transformOrigin: contours[1].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
