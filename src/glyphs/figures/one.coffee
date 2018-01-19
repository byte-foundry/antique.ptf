exports.glyphs['one'] =
	unicode: '1'
	glyphName: 'one'
	characterName: 'DIGIT ONE'
	altImg: 'alt-antique-1-0.svg'
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
					y: capHeight - 198
					dirOut: Math.max(
						50 - ( 23 * width ),
						0
					) / 180 * Math.PI
					type: 'smooth'
					expand:
						width: ( 7 / 54 ) * thickness * contrast * contrastExtremity
						angle: - 60 / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: capHeight - 75
					dirIn: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 40 / 54 ) * thickness * contrast
						angle: 0
						distr: 0.15
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
					dirIn: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 40 / 54 ) * thickness * contrast
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
