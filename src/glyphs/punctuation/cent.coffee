exports.glyphs['cent'] =
	unicode: '¢'
	glyphName: 'cent'
	characterName: 'CENT SIGN'
	altImg: 'alt-antique-cent-0.svg'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 35 + serifWidth
		thickness: ( 47 / 54 ) * thickness
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
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * thickness * Math.sin( ( Math.PI / 2 ) - ( 3 / 180 * Math.PI ) ) + 10 + (5)
					)
					y: Math.min(
						contours[0].nodes[1].expandedTo[0].y + 125,
						xHeight / 2 - 10
					)
					dirOut: - Math.PI / 2
					typeOut: 'line'
					type: 'smooth'
					expand:
						width: thickness
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: thickness
						angle:( - 176 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 47 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				3:
					x: spacingLeft + (13/54) * thickness
					y: Math.max(
						98,
						contours[0].nodes[2].y + ( 47 / 54 ) * thickness + 10
					)
					dirIn: - Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: thickness
						angle:( - 3 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[3].x
					y: Math.min(
						xHeight - 98,
						contours[0].nodes[5].y - ( 47 / 54 ) * thickness - 10
					)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: thickness
						angle:( 2 ) / 180 * Math.PI
						distr: 0.25
				5:
					x: contours[0].nodes[2].x
					y: xHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 47 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				6:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: thickness
						angle: Math.PI
						distr: 0.25
				7:
					x: contours[0].nodes[6].x
					y: Math.max(
						contours[0].nodes[6].expandedTo[0].y - 131,
						xHeight / 2 + 10
					)
					expand:
						width: thickness
						angle: Math.PI
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[5].expandedTo[0].x
					y: - 50
					typeOut: 'line'
					expand:
						width: ( 30 / 54 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[1].nodes[0].x
					y: xHeight + 45
					typeOut: 'line'
					expand:
						width: ( 30 / 54 ) * thickness
						angle: 0
						distr: 0.5
