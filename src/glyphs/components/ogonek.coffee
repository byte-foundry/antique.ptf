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
					dirOut: 49 + 'deg'
					type: 'smooth'
					expand: Object({
						width: 25 / 54 * thickness * contrast
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[0].x - 30
					y: contours[0].nodes[0].y - 69
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: 29 / 54 * thickness
						angle: - 6 + 'deg'
						distr: 1
					})
				2:
					x: (contours[0].nodes[1].x + contours[0].nodes[3].x ) / 2
					y: contours[0].nodes[1].y - 22 + 22 * (contrast - 1)
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					tensionIn: 1.1
					expand: Object({
						width: 20 / 54 * thickness * contrast
						angle: 93 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[1].x + 21 + 10 * width
					y: contours[0].nodes[1].y - 2
					dirIn: 90 + 'deg'
					expand: Object({
						width: 30 / 54 * thickness
						angle: 180 + 'deg'
						distr: 1
					})
