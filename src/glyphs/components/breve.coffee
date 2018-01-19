# TODO: check all diacritHeight
exports.glyphs['breve'] =
	glyphName: 'breve'
	characterName: 'BREVE ACCENT'
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
					x: anchors[0].x - (45 * width + 116 - (14)) / 2
					y: Math.max(
						contours[0].nodes[1].expandedTo[0].y + 30,
						contours[0].nodes[1].expandedTo[1].y + ( 50 + ( 10 / 54 ) * thickness )
					)
					dirOut: - Math.PI / 2
					tensionOut: 1.2
					expand:
						width: ( 35 / 54 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0.75
				1:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 0
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.2
					expand:
						width: ( 30 / 54 ) * thickness
						angle: Math.PI + Math.PI / 2
						distr: 1
				2:
					x: anchors[0].x + (45 * width + 116 - (14)) / 2
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: - Math.PI / 2
					tensionIn: 1.2
					expand:
						width: ( 35 / 54 ) * thickness * contrast * contrastExtremity
						angle: 0
						distr: 1
