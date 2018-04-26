# TODO: capHeight
exports.glyphs['B_cap'] =
	unicode: 'B'
	glyphName: 'B'
	characterName: 'LATIN CAPITAL LETTER B'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth
		spacingRight: 50 * spacing + 40
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
					x: spacingLeft + (14/54) * thickness * opticThickness
					y: 0
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * ( 39 / 84 ),
						contours[0].nodes[1].expandedTo[1].x
					)
					y: capHeight
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 98 - (14),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 57 / 54 ) * thickness * opticThickness + 10
					)
					y: Math.min(
						Math.max(
							contours[1].nodes[1].y - ( 50 / 54 ) * thickness * opticThickness * contrast - 10,
							( capHeight + ( 370 / 700 ) * capHeight * crossbar + 0.5 * contours[1].nodes[4].expand.width ) / 2
						),
						capHeight - ( 105 / 700 ) * capHeight
					)
					dirIn: Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle:( 182 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[2].x
					y: Math.max(
						Math.min(
							contours[1].nodes[4].y + ( 36 / 54 ) * thickness * opticThickness * contrast + Math.cos( (165 - 90) / 180 * Math.PI ) * ( 59 / 54 ) * thickness * opticThickness + 10,
							( capHeight + ( 370 / 700 ) * capHeight * crossbar + 0.5 * contours[1].nodes[4].expand.width ) / 2
						),
						capHeight / 2 + ( 105 / 700 ) * capHeight
					)
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 59 / 54 ) * thickness * opticThickness
						angle:( - 165 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[1].nodes[1].x
					y: ( 370 / 700 ) * capHeight * crossbar
					dirIn: 0
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 36 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0.5
				5:
					x: contours[0].nodes[1].x
					y: contours[1].nodes[4].y
					expand:
						width: ( 36 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0.5
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[5].expandedTo[1].y
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + ( contours[2].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * ( 50 / 91 ),
						contours[0].nodes[1].expandedTo[1].x
					)
					y: contours[2].nodes[0].y
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: - Math.PI / 2
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 105 - (14),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 57 / 54 ) * thickness * opticThickness + 10
					)
					y: Math.min(
						contours[2].nodes[1].y - ( 50 / 54 ) * thickness * opticThickness * contrast - 10,
						contours[2].nodes[0].y - ( 98 / 700 ) * capHeight
					)
					dirIn: Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle:( 182 ) / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[2].nodes[2].x
					y: Math.max(
						( 50 / 54 ) * thickness * opticThickness * contrast + 10,
						( 105 / 700 ) * capHeight
					)
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				4:
					x: contours[2].nodes[1].x
					y: 0
					dirIn: 0
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				5:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[0].y
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
					noneAnchor: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
