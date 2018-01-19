exports.glyphs['tildeaccent'] =
	glyphName: "asciitilde"
	characterName: "TILDE"
	unicode: '~'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 45
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 33/54 * thickness * 0.75
					y: xHeight / 2
					dirOut: 100 / 180 * Math.PI
					expand:
						width: ( 33 / 54 ) * thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 33 / 142 )
					y: contours[0].nodes[4].y
					dirOut: 0
					type: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 38 / 54 ) * thickness
						angle: - 80 / 180 * Math.PI
						distr: 0
				2:
					x: (contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[4].expandedTo[1].x) / 2
					y: ( contours[0].nodes[0].y + contours[0].nodes[4].y ) / 2
					dirOut: Utils.lineAngle({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y}) - (2 / 180 * Math.PI)
					type: 'smooth'
					tensionIn: 0.9
					tensionOut: 0.9
					expand:
						width: ( 38 / 54 ) * thickness
						angle: Math.PI + Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y}, {x: contours[0].nodes[4].x, y: contours[0].nodes[4].y}) + (25 / 180 * Math.PI)
						distr: 0.5
				3:
					x: contours[0].nodes[4].expandedTo[1].x - ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 33 / 142 )
					y: contours[0].nodes[0].y
					dirOut: 0
					type: 'smooth'
					tensionIn: 1.2
					expand:
						width: ( 38 / 54 ) * thickness
						angle: 280 / 180 * Math.PI
						distr: 1
				4:
					x: spacingLeft + 100 * width + 101 - 33/54 * thickness * 1.5
					y: xHeight / 2 + 90
					dirIn: - 80 / 180 * Math.PI
					expand:
						width: ( 33 / 54 ) * thickness
						angle: 0
						distr: 0.25
