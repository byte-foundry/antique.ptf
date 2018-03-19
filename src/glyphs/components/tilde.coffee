# TODO: thickness + width
exports.glyphs['tilde'] =
	global: true
	glyphName: "asciitilde"
	characterName: "TILDE"
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y - 10
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x - 44 * width - (7)
					y: anchors[0].y
					dirOut: 100 / 180 * Math.PI
					expand:
						width: ( 27 / 54 ) * thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 33 / 142 )
					y: contours[0].nodes[4].y
					dirOut: 0
					type: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 28 / 54 ) * thickness
						angle: - 80 / 180 * Math.PI
						distr: 0
				2:
					x: anchors[0].x
					y: ( contours[0].nodes[0].y + contours[0].nodes[4].y ) / 2
					dirOut: Utils.lineAngle({x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y}) + (5 / 180 * Math.PI)
					type: 'smooth'
					tensionIn: 0.9
					tensionOut: 0.9
					expand:
						width: ( 27 / 54 ) * thickness
						angle: Math.PI + Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y}, {x: contours[0].nodes[4].x, y: contours[0].nodes[4].y}) + (25 / 180 * Math.PI)
						distr: 0.5
				3:
					x: contours[0].nodes[4].expandedTo[1].x - ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 33 / 142 )
					y: contours[0].nodes[0].y
					dirOut: 0
					type: 'smooth'
					tensionIn: 1.2
					expand:
						width: ( 28 / 54 ) * thickness
						angle: 280 / 180 * Math.PI
						distr: 1
				4:
					x: anchors[0].x + 44 * width + (7)
					y: anchors[0].y + 60
					dirIn: - 80 / 180 * Math.PI
					expand:
						width: ( 27 / 54 ) * thickness
						angle: 0
						distr: 0.25
