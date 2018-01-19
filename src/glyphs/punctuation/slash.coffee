exports.glyphs['slash'] =
	unicode: '/'
	glyphName: 'slash'
	characterName: 'SOLIDUS'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 10
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
						width: ( 28 / 54 ) * thickness * contrast
						angle: 0
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 100
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 28 / 54 ) * thickness * contrast
						angle: 0
						distr: 0
