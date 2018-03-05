exports.glyphs['t_alt2'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	altImg: 'alt-antique-t-2.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[3].expandedTo[1].x + 32
			y: contours[1].nodes[3].expandedTo[0].y + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[0].x - 32
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[0].x + 100 * width + 80
					y: 10
					dirOut: Utils.lineAngle({x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}, {x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}) + (5 / 180 * Math.PI)
					expand:
						width: ( 47 / 54 ) * thickness * contrast * contrastExtremity
						angle: 95 / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 105 / 194 )
					y: - overshoot / 2
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 47 / 54 ) * thickness * contrast * contrastExtremity
						angle: Math.PI / 2
						distr: 0
				2:
					x: contours[0].nodes[0].x + 45 * width + (13/54) * thickness
					y: Math.max(
						98,
						contours[1].nodes[1].y + ( 47 / 54 ) * thickness + 10
					)
					dirIn: - Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: thickness
						angle: - 3 / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[2].x
					y: xHeight + ( Math.min( 110, (thickness + 56) ) / 600 ) * xHeight
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
