# TODO: minus and hyphen-minus have the same unicode
exports.glyphs['minus'] =
	unicode: '−'
	glyphName: 'minus'
	characterName: 'MINUS SIGN'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 12
		spacingRight: 50 * spacing + 12
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
					x: spacingLeft
					y: ( 300 / 600 ) * xHeight
					typeOut: 'line'
					expand:
						width: ( 31 / 54 ) * thickness
						angle: Math.PI / 2
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 240 + 100 * width
					y: contours[0].nodes[0].y
					expand:
						width: ( 31 / 54 ) * thickness
						angle: Math.PI / 2
						distr: 0.5
