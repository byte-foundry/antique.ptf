exports.glyphs['caron'] =
	global: true
	glyphName: 'caron'
	characterName: 'CARON'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	components:
		0:
			base: 'circumflex'
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
			transformOrigin: Object({x: anchors[0].x, y: anchors[0].y})
			transforms: Array(
				['translateY', -60]
				[ 'scaleY', -1 ],
			)
