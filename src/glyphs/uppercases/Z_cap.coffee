# TODO: rotation serifs
exports.glyphs['Z_cap'] =
	unicode: 'Z'
	glyphName: 'Z'
	characterName: 'LATIN CAPITAL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 18
		spacingRight: 50 * spacing + 22
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: (contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[1].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 100 * width + Math.max( 95, ( 40 + thickness ) )
					y: 0
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
				1:
					x: spacingLeft + 3
					y: 0
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
				2:
					x: Utils.onLine({
						y: ( 36 / 54 ) * thickness * opticThickness * contrast
						on: [ contours[2].nodes[0].expandedTo[0], contours[2].nodes[1].expandedTo[0] ]
					})
					y: ( 36 / 54 ) * thickness * opticThickness * contrast
					typeIn: 'line'
					expand:
						width: ( 36 / 54 ) * thickness * opticThickness * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].x - 4
					y: contours[1].nodes[0].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: contours[1].nodes[1].x + 3
					y: Math.min(
						Utils.onLine({
							x: contours[1].nodes[1].x + 3
							on: [ contours[2].nodes[0].expandedTo[1], contours[2].nodes[1].expandedTo[1] ]
						}),
						capHeight
					)
					typeIn: 'line'
					expand:
						width: if contours[1].nodes[2].y > capHeight then 0 else capHeight - contours[1].nodes[2].y
						angle: 180 + 90 + 'deg'
						distr: 1
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: Math.max(
							Utils.lineAngle({x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}) - Math.PI / 2,
							- Math.asin( Math.min( 1, (( 50 / 54 ) * thickness * opticThickness * contrast) / (( 57 / 54 ) * thickness * opticThickness)))
						)
						distr: 0
				1:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeIn: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: Math.max(
							Utils.lineAngle({x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}) - Math.PI / 2,
							- Math.asin( Math.min( 1, (( 50 / 54 ) * thickness * opticThickness * contrast) / (( 57 / 54 ) * thickness)))
						)
						distr: 1
	components:
		0:
			base: ['none', 'serif-horizontal']
			id: 'toptop'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-horizontal', 'none']
			id: 'topbottom'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'bottomtop'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['none', 'serif-horizontal']
			id: 'bottombottom'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
