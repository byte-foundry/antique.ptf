# TODO: curved serif on bottom part
exports.glyphs['y_alt_2'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	altImg: 'alt-antique-y-2.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing  + 17 + serifWidth
		spacingRight: 50 * spacing + 17
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: ( contours[1].nodes[0].expandedTo[1].x + contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
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
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: contours[1].nodes[1].expandedTo[0].y
					typeIn: 'line'
					expand:
						width: ( 47 / 54 ) * thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						spacingLeft + 100 * width + 113 - (13),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 20
					)
					y: xHeight
					typeOut: 'line'
					expand:
						width: thickness * contrast
						angle: 0
						distr: 0.75
				1:
					x: contours[0].nodes[1].x + 0.75 * ( 47 / 54 ) * thickness
					y: Math.min(
						( 60 / 600 ) * xHeight,
						thickness
					)
					dirOut: Utils.lineAngle({x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y})
					typeIn: 'smooth'
					expand:
						width: ( 45 / 54 ) * thickness * contrast
						angle: 0
						distr: 0.25
				2:
					x: contours[0].nodes[0].expandedTo[0].x
					y: descender - 10
					dirIn: 0
					expand:
						width: Math.min(
							( 47 / 54 ) * thickness,
							( contours[1].nodes[1].y + Math.abs( contours[1].nodes[2].y ) ) - 15
						) * contrast * contrastExtremity
						angle: 3 * Math.PI / 2
						distr: 1
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			class: 'obtuseLeftSerif'
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
			base: ['none', 'serif-oblique-acute']
			id: 'topright'
			class: 'acuteLeftSerif'
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
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		2:
			base: ['none', 'serif-oblique-obtuse']
			id: 'topright2'
			class: 'obtuseRightSerif'
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
			class: 'acuteRightSerif'
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
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		4:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottom'
			parentAnchors:
				0:
					baseWidth: contours[1].nodes[2].expandedTo[0]
					baseHeight: contours[1].nodes[2].expandedTo[0]
					noneAnchor: contours[1].nodes[2].expandedTo[0]
					opposite: contours[1].nodes[2].expandedTo[1]
					curveEnd: contours[1].nodes[1].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[1].nodes[2].expandedTo[0]
					inverseOrder: true
					left: true
