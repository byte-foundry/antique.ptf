# TODO: bug in merge
exports.glyphs['H_cap'] =
	unicode: 'H'
	glyphName: 'H'
	characterName: 'LATIN CAPITAL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 75 + serifWidth
		spacingRight: 50 * spacing + 75 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 71 + (contours[0].nodes[0].expand.width * contours[0].nodes[0].expand.distr)
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight + 50
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + 240 * width + 249 - (15) # -(15) réprésente la distribution à rattraper sur le spacingleft
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 240 * width + 249 - (15),
						contours[0].nodes[0].expandedTo[1].x + minSpace + contours[1].nodes[0].expand.width * contours[1].nodes[0].expand.distr
					) # minSpace est le raccourci de thickness / 3, ici l'espace blanc minimum
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				1:
					x: contours[1].nodes[0].x
					y: capHeight + 50
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: crossbar * (30 + capHeight / 2)
					y: Math.min(
							capHeight * 0.75, # ne remonte plus après 0.75 * la capHeight
							Math.max(
								crossbar * (30 + capHeight / 2),
								capHeight * 0.25 # ne descend plus après 0.25 * la capHeight
							)
					)
					typeOut: 'line'
					expand:
						width: thickness - 5
						angle: Math.PI / 2
						distr: 0.45
				1:
					x: contours[1].nodes[0].x
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand:
						width: thickness - 5
						angle: Math.PI / 2
						distr: 0.45
