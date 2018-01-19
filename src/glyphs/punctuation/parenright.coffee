exports.glyphs['parenright'] =
	unicode: ')'
	glyphName: 'parenright'
	characterName: 'RIGHT PARENTHESIS'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 1
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + Math.max( 10, ( (10 * width) / 54 ) * thickness ) + 78,
						contours[0].nodes[1].expandedTo[1].x + Math.max( 10, ( (10 * width) / 54 ) * thickness ) + 33
					)
					y: capHeight
					dirOut: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y}) - (Math.max(10, (5 / 54) * thickness) / 180 * Math.PI)
					expand:
						width: ( 37 / 54 ) * thickness * contrast * contrastExtremity
						angle: 0
						distr: 0
				1:
					x: spacingLeft + (13/54) * thickness
					y: ( contours[0].nodes[0].y + contours[0].nodes[2].y ) / 2
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					tensionIn: 1.3
					tensionOut: 1.3
					expand:
						width: ( 35 / 54 ) * thickness
						angle: 0
						distr: 0.25
				2:
					x: contours[0].nodes[0].x
					y: ( 73 / 90 ) * descender
					dirIn: Utils.lineAngle({x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y}, {x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y}) + (Math.max(10, (5 / 54) * thickness) / 180 * Math.PI)
					expand:
						width: ( 37 / 54 ) * thickness * contrast * contrastExtremity
						angle: 0
						distr: 0
			transformOrigin: Object({x: (contours[0].nodes[2].expandedTo[0].x + spacingRight) / 2, y: 0})
			transforms: Array(
				['translateY', -( capHeight + (( 73 / 90 ) * descender) ) ],
				['rotate', Math.PI]
			)
