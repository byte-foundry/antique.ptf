# TODO: rotation serifs
exports.glyphs['F_cap'] =
	unicode: 'F'
	glyphName: 'F'
	characterName: 'LATIN CAPITAL LETTER F'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth
		spacingRight: 50 * spacing + 20
	tags: [
		'all',
		'latin',
		'uppercase'
	]
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
					x: contours[0].nodes[0].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: thickness - 5
						angle: Math.PI / 2
						distr: 1
				1:
					x: contours[0].nodes[0].x + 393 * width
					y: contours[0].nodes[1].expandedTo[1].y
					typeIn: 'line'
					expand:
						width: thickness - 5
						angle: Math.PI / 2
						distr: 1
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: crossbar * (capHeight / 1.65)
					y: Math.min(
							capHeight * 0.75, # ne remonte plus après 0.75 * la capHeight
							Math.max(
								crossbar * (capHeight / 1.65),
								capHeight * 0.25 # ne descend plus après 0.25 * la capHeight
							)
					)
					typeOut: 'line'
					expand:
						width: thickness - 5
						angle: Math.PI / 2
						distr: 1
				1:
					x: contours[0].nodes[0].x + 353 * width
					y: contours[2].nodes[0].y
					typeIn: 'line'
					expand:
						width: thickness - 5
						angle: Math.PI / 2
						distr: 1
