exports.glyphs['ogonek'] =
	glyphName: 'ogonek'
	characterName: 'OGONEK'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
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
					x: anchors[0].x
					y: anchors[0].y
					dirOut:( 49 ) / 180 * Math.PI
					type: 'smooth'
					expand:
						width: 25 / 54 * thickness * contrast
						angle: 0
						distr: 1
				1:
					x: contours[0].nodes[0].x - 30
					y: contours[0].nodes[0].y - 69
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: 29 / 54 * thickness
						angle:( - 6 ) / 180 * Math.PI
						distr: 1
				2:
					x: (contours[0].nodes[1].x + contours[0].nodes[3].x ) / 2
					y: contours[0].nodes[1].y - 22 + 22 * (contrast - 1)
					dirOut: 0
					type: 'smooth'
					tensionOut: 1.2
					tensionIn: 1.1
					expand:
						width: 20 / 54 * thickness * contrast
						angle:( 93 ) / 180 * Math.PI
						distr: 1
				3:
					x: contours[0].nodes[1].x + 21 + 10 * width
					y: contours[0].nodes[1].y - 2
					dirIn: Math.PI / 2
					expand:
						width: 30 / 54 * thickness
						angle: Math.PI
						distr: 1
