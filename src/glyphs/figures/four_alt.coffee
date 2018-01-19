exports.glyphs['four_alt'] =
	unicode: '4'
	glyphName: 'four'
	characterName: 'DIGIT FOUR'
	altImg: 'alt-antique-4-1.svg'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 19
		spacingRight: 50 * spacing + 14 + serifWidth
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
					x: contours[0].nodes[1].x + 105
					y: capHeight
					dirOut: - Math.PI / 2
					tensionOut: 1.2
					expand:
						width: ( 48 / 54 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: spacingLeft
					y: contours[1].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}) - (10 / 180 * Math.PI)
					expand:
						width: ( 50 / 54 ) * thickness
						angle: 0
						distr: 0
		1:
			skeleton: true
			closed: false
			exportReversed: true
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 1
				1:
					x: contours[0].nodes[1].x + 100 * width + 60 + Math.max( 67, ( 67 / 54 ) * thickness )
					y: Math.max(
						( 226 / 700 ) * capHeight * crossbar - (20),
						0.75 * ( 50 / 54 ) * thickness + 30
					)
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0.75
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[1].nodes[0].x + contours[1].nodes[1].x ) * ( 120 / 200 )
					y: contours[1].nodes[1].expandedTo[1].y + ( contours[1].nodes[1].x - contours[2].nodes[0].x )
					typeOut: 'line'
					expand:
						width: ( 56 / 54 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[2].nodes[0].x
					y: 0
					typeOut: 'line'
					expand:
						width: ( 56 / 54 ) * thickness
						angle: 0
						distr: 0.25
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifHeight: Math.min(
					serifHeight,
					contours[1].nodes[1].expandedTo[0].x - contours[2].nodes[0].expandedTo[1].x - 10
				)
		3:
			base: ['serif-horizontal', 'none']
			id: 'middlebottom'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					scaleX: -1
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					contours[1].nodes[1].expandedTo[0].y - serifHeight - 10
				)
				serifHeight: Math.min(
					serifHeight,
					contours[1].nodes[1].expandedTo[0].x - contours[2].nodes[0].expandedTo[1].x - 10
				)
