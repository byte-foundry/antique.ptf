exports.glyphs['one_alt'] =
	unicode: '1'
	glyphName: 'one'
	characterName: 'DIGIT ONE'
	altImg: 'alt-antique-1-1.svg'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 4
		spacingRight: 50 * spacing + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 72 * width + (14/54) * thickness
					y: 0
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					expand:
						width: ( 58 / 54 ) * thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight - 75
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 47 / 54 ) * thickness * contrast * contrastExtremity
						angle: - Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: capHeight
					dirIn: - Math.PI / 2
					expand:
						width: thickness * contrast
						angle: 0
						distr: 0.15
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
