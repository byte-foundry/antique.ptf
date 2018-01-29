# TODO: contrast
exports.glyphs['x'] =
	unicode: 'x'
	glyphName: 'x'
	characterName: 'LATIN SMALL LETTER X'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					expand:
						width: ((53 / 54) * thickness) / Math.sin(Utils.lineAngle({ x: spacingLeft - (0.25 * thickness), y: xHeight }, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}))
						angle: 0
						distr: 0.75
				1:
					x: Math.max(
						contours[0].nodes[0].x - 0.25 * (55/54) * thickness + 100 * width + 115 - (37/54) * thickness,
						contours[0].nodes[0].x + 0.75 * (55/54) + thickness
					)
					y: 0
					typeIn: 'line'
					expand:
						width: ((53 / 54) * thickness) / Math.sin(Utils.lineAngle({ x: spacingLeft - (0.25 * thickness), y: xHeight }, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}))
						angle: 0
						distr: 0.75
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: Utils.onLine({
					# 	y: xHeight / 2 - ( 8 / 54 ) * thickness
					# 	on: [ contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[0] ]
					# })
					# y: xHeight / 2 - ( 8 / 54 ) * thickness
					x: Utils.onLine({
						y: xHeight / 2
						on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
					})
					y: xHeight / 2
					typeOut: 'line'
					expand:
						width: ( 38 / 54 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle({x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}, {x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}) - Math.PI / 2
						distr: 1
				1:
					x: contours[0].nodes[1].expandedTo[0].x - (12) # ( 12 / 54) * thickness * contrast
					y: xHeight
					typeIn: 'line'
					expand:
						width: - (50 / 54) * thickness / Math.sin(Utils.lineAngle({x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}, {x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y})) * contrast
						angle: 0
						distr: 0.75
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: Utils.onLine({
					# 	y: xHeight / 2 + ( 11 / 54 ) * thickness
					# 	on: [ contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[0] ]
					# })
					# y: xHeight / 2 + ( 11 / 54 ) * thickness
					x: Utils.onLine({
						y: xHeight / 2
						on: [ contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1] ]
					})
					y: xHeight / 2
					typeOut: 'line'
					expand:
						width: ( 40 / 54 ) * thickness * contrast * contrastExtremity
						angle: Utils.lineAngle({x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}, {x: contours[2].nodes[1].x, y: contours[2].nodes[1].y}) - Math.PI / 2
						distr: 1
				1:
					x: contours[0].nodes[0].expandedTo[1].x + (12)
					y: 0
					typeIn: 'line'
					expand:
						width: contours[1].nodes[1].expand.width
						angle: Math.PI
						distr: 0.75
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleftleft'
			class: 'obtuseLeftSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topleftright'
			class: 'acuteLeftSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2 - 10
				)
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomrightleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[0].nodes[1].expandedTo[1].x - contours[2].nodes[1].expandedTo[0].x ) / 2 - 10
				)
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomrightright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleftleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[1]
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleftright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[0].nodes[1].expandedTo[1].x - contours[2].nodes[1].expandedTo[0].x ) / 2 - 10
				)
		6:
			base: ['serif-oblique-acute', 'none']
			id: 'toprightleft'
			class: 'acuteRightSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2 - 10
				)
		7:
			base: ['serif-oblique-obtuse', 'none']
			id: 'toprightright'
			class: 'obtuseRightSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
