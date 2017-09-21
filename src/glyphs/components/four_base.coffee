exports.glyphs['four_base'] =
	glyphName: 'four'
	characterName: 'DIGIT FOUR'
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			exportReversed: true
			nodes:
				0:
					x: ( spacingLeft + contours[1].nodes[2].x ) * ( 154 / 227 ) - (7/54) * thickness
					y: capHeight
					typeOut: 'line'
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 48 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: spacingLeft
					y: contours[1].nodes[2].expandedTo[1].y + ( 8 / 54 ) * thickness - Math.min( 12, ( 12 / 54 ) * thickness )
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].point ) + Math.PI / 2
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			exportReversed: true
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[1].expandedTo[0].y - contours[1].nodes[1].expandedTo[0].y
						angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.max(
						( 226 / 700 ) * capHeight * crossbar - (20),
						0.75 * ( 50 / 54 ) * thickness + 30
					)
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[1].x + 100 * width + 60 + Math.max( 67, ( 67 / 54 ) * thickness )
					y: contours[1].nodes[1].y
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( 522 / 700 ) * capHeight
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					}) + 25 * width
					y: ( 522 / 700 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 10 / 54 ) * thickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: Utils.onLine({
						y: ( 522 / 700 ) * capHeight
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					}) + 25 * width + ( 10 / 54 ) * thickness
					y: Math.max(
						( 325 / 700 ) * capHeight - ( ( 80 / 54 ) * thickness - 80 ),
						contours[1].nodes[1].expandedTo[0].y
					)
					typeOut: 'line'
					expand: Object({
						width: ( 56 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
				2:
					x: contours[2].nodes[1].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 56 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[2].expandedTo[0].point
					noneAnchor: contours[2].nodes[2].expandedTo[0].point
					opposite: contours[2].nodes[2].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[2].nodes[2].expandedTo[1].point
					noneAnchor: contours[2].nodes[2].expandedTo[1].point
					opposite: contours[2].nodes[2].expandedTo[0].point
					reversed: true
			transformOrigin: contours[2].nodes[2].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[1].nodes[2].expandedTo[1].point
					noneAnchor: contours[1].nodes[2].expandedTo[1].point
					opposite: contours[1].nodes[2].expandedTo[0].point
					reversed: true
			transformOrigin: contours[1].nodes[2].expandedTo[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifHeight: Math.min(
					serifHeight,
					contours[1].nodes[2].expandedTo[0].x - contours[2].nodes[2].expandedTo[1].x - 10
				)
		3:
			base: ['serif-horizontal', 'none']
			id: 'middlebottom'
			parentAnchors:
				0:
					base: contours[1].nodes[2].expandedTo[0].point
					noneAnchor: contours[1].nodes[2].expandedTo[0].point
					opposite: contours[1].nodes[2].expandedTo[1].point
					scaleX: -1
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					contours[1].nodes[2].expandedTo[0].y - serifHeight - 10
				)
				serifHeight: Math.min(
					serifHeight,
					contours[1].nodes[2].expandedTo[0].x - contours[2].nodes[2].expandedTo[1].x - 10
				)
