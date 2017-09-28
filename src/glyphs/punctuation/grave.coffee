exports.glyphs['graveaccent'] =
	glyphName: 'grave'
	characterName: 'GRAVE ACCENT'
	unicode: '`'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			x: 0
			y: 0
	parameters:
		spacingLeft: 50 * spacing + 100
		spacingRight: 50 * spacing + 100
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 35 / 54 ) * thickness * contrast * contrastExtremity * 0.4 + 28 * width
					y: contours[0].nodes[1].expandedTo[1].y - 60
					typeOut: 'line'
					expand: Object({
						width: ( 35 / 54 ) * thickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0.1
					})
				1:
					x: spacingLeft
					y: xHeight + diacriticHeight + 60
					type: 'smooth'
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
