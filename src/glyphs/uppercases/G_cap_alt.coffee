exports.glyphs['G_cap_alt'] =
	unicode: 'G'
	glyphName: 'G'
	characterName: 'LATIN CAPITAL LETTER G'
	altImg: 'alt-antique-G-1.svg'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 100 * width + 96 - (14),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * thickness * opticThickness * Math.sin( ( Math.PI / 2 ) - ( 3 / 180 * Math.PI ) ) + 15 + (5)
					)
					y: Math.min(
						( 338 / 700 ) * capHeight * crossbar,
						capHeight / 2 - 10
					)
					dirOut: - Math.PI / 2
					typeOut: 'line'
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle:( - 173 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				3:
					x: spacingLeft + (14/54) * thickness * opticThickness
					y: Math.max(
						95,
						contours[0].nodes[2].y + ( 50 / 54 ) * thickness * opticThickness + Math.cos( 81 / 180 * Math.PI ) * 0.75 * ( 58 / 54 ) * thickness * opticThickness + 20
					)
					dirIn: - Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness * opticThickness
						angle:( - 9 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[3].x
					y: Math.min(
						capHeight - 95,
						contours[0].nodes[5].y - ( 50 / 54 ) * thickness * opticThickness - Math.sin( 9 / 180 * Math.PI ) * 0.75 * ( 57 / 54 ) * thickness * opticThickness - 10
					)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle:( 9 ) / 180 * Math.PI
						distr: 0.25
				5:
					x: contours[0].nodes[2].x
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				6:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness * opticThickness
						angle:( 171 ) / 180 * Math.PI
						distr: 0.25
				7:
					x: contours[0].nodes[6].x
					y: Math.max(
						contours[0].nodes[6].expandedTo[0].y - 32,
						capHeight / 2 + 10
					)
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x - 40,
						contours[0].nodes[3].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[3].expandedTo[1].x ) * 0.5
					)
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[6].expandedTo[0]
					baseHeight: contours[0].nodes[6].expandedTo[0]
					noneAnchor: contours[0].nodes[6].expandedTo[0]
					opposite: contours[0].nodes[6].expandedTo[1]
					curveEnd: contours[0].nodes[5].expandedTo[0]
					rotationAngle: -15
					inverseOrder: true
					rotationCenter: contours[0].nodes[6].expandedTo[0]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[5].expandedTo[0].y - contours[0].nodes[6].expandedTo[0].y + overshoot
				)
		1:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[1].expandedTo[0]
					baseHeight: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					curveEnd: contours[0].nodes[2].expandedTo[0]
					rotationAngle: -15
					down: true
					rotationCenter: contours[0].nodes[1].expandedTo[0]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[2].expandedTo[0].y + overshoot
				)
