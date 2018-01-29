# TODO: extra thickness + width
exports.glyphs['a'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	altImg: 'alt-antique-a-0.svg'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 35 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: ( contours[0].nodes[3].expandedTo[0].x + contours[1].nodes[3].expandedTo[0].x ) / 2
			y: xHeight + diacriticHeight
		1:
			x: (contours[0].nodes[4].expandedTo[0].x + contours[0].nodes[4].expandedTo[1].x ) / 2 + 15 / 54 * thickness
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[0].x + 10 + (13/80) * thickness
					y: contours[0].nodes[1].y - Math.min( 110, ( 110 / 600 ) * xHeight )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.min(
						xHeight - 92,
						# contours[0].nodes[2].y - contours[0].nodes[2].expand.width - ( Math.sin( contours[0].nodes[1].expand.angle ) * (( 1 - contours[0].nodes[1].expand.distr ) * contours[0].nodes[1].expand.width) ) - 10
						contours[0].nodes[2].y - ( 47 / 54 ) * thickness - ( Math.sin( 8 / 180 * Math.PI ) * ( 0.75 * ( 55 / 54 ) * thickness ) ) - 10
					)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 55 / 54 ) * thickness
						angle: 8 / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 90 / 181 )
					y: xHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 47 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 81 - (13),
						contours[1].nodes[2].expandedTo[1].x + 0.75 * ( 55 / 54 ) * thickness + 10
					)
					y: contours[0].nodes[1].y
					typeOut: 'line'
					type: 'smooth'
					expand:
						width: ( 55 / 54 ) * thickness
						angle: 171 / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[3].expandedTo[0].x
					y: 0
					expand:
						width: thickness
						angle: Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[1].nodes[2].expandedTo[1].y
					dirOut: - Math.PI / 2
					expand:
						width: ( 10 / 54 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 1
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 74 / 147 )
					y: - overshoot
					dirIn: 0
					type: 'smooth'
					expand:
						width: ( 51 / 54 ) * thickness * contrast
						angle: 66 / 180 * Math.PI
						distr: 0
				2:
					x: contours[1].nodes[3].x
					y: Math.max(
						98,
						contours[1].nodes[1].y + ( Math.cos( Math.PI / 2 - (66 / 180 * Math.PI) ) * ( 51 / 54 ) * thickness )
					) # TODO smaller xHeight
					dirIn: - Math.PI / 2
					typeOut: 'line'
					type: 'smooth'
					expand:
						width: ( 55 / 54 ) * thickness
						angle: 13 / 180 * Math.PI
						distr: 0.25
				3:
					x: spacingLeft + (13/54) * thickness
					y: ( 217 / 600 ) * xHeight * crossbar # TODO smaller xHeight
					dirOut: Math.PI / 2
					type: 'smooth'
					# typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				4:
					x: Math.max(
						contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[5].expandedTo[1].x - contours[1].nodes[3].expandedTo[0].x ) * 0.5,
						contours[1].nodes[3].expandedTo[1].x
					)
					y: contours[1].nodes[3].expandedTo[0].y + ( contours[1].nodes[5].expandedTo[1].y - contours[1].nodes[3].expandedTo[0].y ) * 0.5
					dirOut: Math.max(
						Utils.lineAngle({x: contours[1].nodes[3].expandedTo[0].x, y: contours[1].nodes[3].expandedTo[0].y}, {x: contours[1].nodes[5].expandedTo[1].x, y: contours[1].nodes[5].expandedTo[1].y}) - (28 / 180 * Math.PI),
						0 / 180 * Math.PI
					)
					type: 'smooth'
					expand:
						width: ( 40 / 54 ) * thickness * contrast * contrastExtremity
						angle: contours[1].nodes[4].dirOut - Math.PI / 2
						distr: 0.5
				5:
					x: contours[0].nodes[3].expandedTo[1].x
					y: Math.min(
						contours[0].nodes[0].y - 10,
						( xHeight - ( 202 / 600 ) * xHeight ) * crossbar
					)
					dirIn: - Math.PI / 2
					tensionIn: 1.5
					expand:
						width: ( 18 / 54 ) * thickness * contrast * contrastExtremity
						angle: 0
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[4].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		1:
			base: ['none', 'serif-vertical']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['none', 'serif-vertical']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
