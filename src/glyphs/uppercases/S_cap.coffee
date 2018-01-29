# TODO: curved serifs
exports.glyphs['S_cap'] =
	unicode: 'S'
	glyphName: 'S'
	characterName: 'LATIN CAPITAL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[8].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 25
		spacingRight: 50 * spacing + 25
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: ( contours[0].nodes[8].expandedTo[1].x + contours[0].nodes[0].expandedTo[0].x ) * 0.5
			y: capHeight + diacriticHeight
		1:
			x: contours[0].nodes[2].expandedTo[0].x
			y: contours[0].nodes[2].expandedTo[0].y
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness
					y: contours[0].nodes[1].y + Math.min( 44, ( 44 / 700 ) * capHeight )
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						Math.min( 89, ( 89 / 700 ) * capHeight ),
						contours[0].nodes[2].y + ( 50 / 54 ) * thickness * contrast + 10
					)
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 0
						distr: 0.25
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 94 - (15),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max(
						( 113 / 700 ) * capHeight - (2),
						contours[0].nodes[2].y + ( 50 / 54 ) * thickness * contrast + Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75 + 10
					)
					# y: contours[0].nodes[2].y + ( 50 / 54 ) * thickness * contrast + ( contours[0].nodes[4].y - contours[0].nodes[2].y + ( 50 / 54 ) * thickness * contrast ) * ( ( 82 - (10) ) / 266 ) - Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75
					dirIn: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: - 170 / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[0].x + ( contours[0].nodes[7].x - contours[0].nodes[0].x ) * 0.5
					y: ( 354 / 700 ) * capHeight
					dirOut: Utils.lineAngle({x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y}, {x: contours[0].nodes[5].expandedTo[0].x, y: contours[0].nodes[5].expandedTo[0].y}) + (Math.min(14, 14 * width) / 180 * Math.PI)
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand:
						width: ( 62 / 54 ) * thickness
						angle: contours[0].nodes[4].dirOut + Math.PI / 2 + ( 2 / 180 * Math.PI )
						distr: 0.5
				5:
					x: contours[0].nodes[1].x + (1)
					y: Math.min(
						capHeight - ( 109 / 700 ) * capHeight - (0),
						contours[0].nodes[6].y - ( 50 / 54 ) * thickness * contrast - Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75 + 10
					)
					# y: contours[0].nodes[4].y + ( ( contours[0].nodes[6].y - ( 50 / 54 ) * thickness * contrast ) - contours[0].nodes[4].y ) * ( 184 / 260 ) + Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75
					dirOut: Math.PI / 2
					type: 'smooth'
					tensionIn: 1.1
					expand:
						width: ( 57 / 54 ) * thickness
						angle:( 180 + 9 ) / 180 * Math.PI
						distr: 0.75
				6:
					x: contours[0].nodes[5].expandedTo[1].x + ( contours[0].nodes[7].expandedTo[1].x - contours[0].nodes[5].expandedTo[1].x ) * ( 97 / 194 )
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 1
				7:
					x: contours[0].nodes[3].expandedTo[0].x - (13/54) * thickness
					y: Math.min(
						capHeight - Math.min( 89, ( 89 / 700 ) * capHeight ),
						contours[0].nodes[6].y - ( 50 / 54 ) * thickness * contrast - 10
					)
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 0
						distr: 0.75
				8:
					x: contours[0].nodes[7].x
					y: contours[0].nodes[7].y - Math.min( 38, ( 38 / 700 ) * capHeight )
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 0
						distr: 0.75
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[7].expandedTo[1]
					baseHeight: contours[0].nodes[7].expandedTo[1]
					noneAnchor: contours[0].nodes[7].expandedTo[1]
					opposite: contours[0].nodes[7].expandedTo[0]
					curveEnd: contours[0].nodes[6].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[7].expandedTo[1]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[6].expandedTo[1].y - contours[0].nodes[7].expandedTo[1].y + overshoot
				)
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[1].expandedTo[0]
					baseHeight: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					curveEnd: contours[0].nodes[2].expandedTo[0]
					rotationAngle: -15
					left: true
					down: true
					rotationCenter: contours[0].nodes[1].expandedTo[0]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[2].expandedTo[0].y + overshoot
				)
