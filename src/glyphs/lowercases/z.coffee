# TODO: rotation serifs
exports.glyphs['z'] =
	unicode: 'z'
	glyphName: 'z'
	characterName: 'LATIN SMALL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 15
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 100 * width + Math.max( 94, ( 40 + thickness ) )
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 47 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + 3
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 47 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: Utils.onLine({
						y: ( 35 / 54 ) * thickness * contrast
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: ( 35 / 54 ) * thickness * contrast
					typeOut: 'line'
					expand: Object({
						width: ( 35 / 54 ) * thickness * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 47 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x - 4
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 47 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[1].x + 3
					y: Math.min(
						Utils.onLine({
							x: contours[1].nodes[1].x + 3
							on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
						}),
						xHeight
					)
					typeOut: 'line'
					expand: Object({
						width: if contours[1].nodes[2].y > xHeight then 0 else xHeight - contours[1].nodes[2].y
						angle: 180 + 90 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 52 / 54 ) * thickness
						angle: Math.max(
							Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ) - Math.PI / 2,
							- Math.asin( Math.min( 1, (( 47 / 54 ) * thickness * contrast) / (( 52 / 54 ) * thickness)))
						)
						distr: 0
					})
				1:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					expand: Object({
						width: ( 52 / 54 ) * thickness
						angle: Math.max(
							Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ) - Math.PI / 2,
							- Math.asin( Math.min( 1, (( 47 / 54 ) * thickness * contrast) / (( 52 / 54 ) * thickness)))
						)
						distr: 1
					})
	components:
		0:
			base: ['none', 'serif-horizontal']
			id: 'toptop'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-horizontal', 'none']
			id: 'topbottom'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'bottomtop'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['none', 'serif-horizontal']
			id: 'bottombottom'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
