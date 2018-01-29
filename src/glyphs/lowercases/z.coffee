# TODO: rotation serifs
exports.glyphs['z'] =
	unicode: 'z'
	glyphName: 'z'
	characterName: 'LATIN SMALL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
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
					expand:
						width: ( 47 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				1:
					x: spacingLeft + 3
					y: 0
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 47 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				2:
					x: Utils.onLine({
						y: ( 35 / 54 ) * thickness * contrast
						on: [ contours[2].nodes[0].expandedTo[0], contours[2].nodes[1].expandedTo[0] ]
					})
					y: ( 35 / 54 ) * thickness * contrast
					typeIn: 'line'
					expand:
						width: ( 35 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 47 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].x - 4
					y: contours[1].nodes[0].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 47 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				2:
					x: contours[1].nodes[1].x + 3
					y: Math.min(
						Utils.onLine({
							x: contours[1].nodes[1].x + 3
							on: [ contours[2].nodes[0].expandedTo[1], contours[2].nodes[1].expandedTo[1] ]
						}),
						xHeight
					)
					typeIn: 'line'
					expand:
						width: if contours[1].nodes[2].y > xHeight then 0 else xHeight - contours[1].nodes[2].y
						angle: 3 * Math.PI / 2
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
						width: ( 52 / 54 ) * thickness
						angle: Math.max(
							Utils.lineAngle({x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}) - Math.PI / 2,
							- Math.asin( Math.min( 1, (( 47 / 54 ) * thickness * contrast) / (( 52 / 54 ) * thickness)))
						)
						distr: 0
				1:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeIn: 'line'
					expand:
						width: ( 52 / 54 ) * thickness
						angle: Math.max(
							Utils.lineAngle({x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[1].x, y: contours[1].nodes[1].expandedTo[1].y}) - Math.PI / 2,
							- Math.asin( Math.min( 1, (( 47 / 54 ) * thickness * contrast) / (( 52 / 54 ) * thickness)))
						)
						distr: 1
	components:
		0:
			base: ['none', 'serif-horizontal']
			id: 'toptop'
			class: 'ZUpperTop'
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
			class: 'ZUpperBottom'
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
			class: 'ZLowerTop'
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
			class: 'ZLowerBottom'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
