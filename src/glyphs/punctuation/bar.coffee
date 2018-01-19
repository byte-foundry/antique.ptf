exports.glyphs['bar'] =
	unicode: '|'
	glyphName: 'bar'
	characterName: 'VERTICAL LINE'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 60
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: descender
					typeOut: 'line'
					expand:
						width: ( 28 / 54 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 28 / 54 ) * thickness
						angle: 0
						distr: 0.5
