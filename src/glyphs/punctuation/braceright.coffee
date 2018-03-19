exports.glyphs['braceright'] =
	unicode: '}'
	glyphName: 'braceright'
	characterName: 'BRACE RIGHT'
	ot:
		advanceWidth: contours[0].nodes[5].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI],
		['scaleX', -1],
		['translateX', contours[0].nodes[5].x + spacingRight]
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 5
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
					y: ( 310 / 700 ) * capHeight
					typeOut: 'line'
					expand:
						width: ( 16 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[0].x + 27 * width,
						contours[0].nodes[0].x + ( ( 16 / 54 ) * thickness ) / ( Math.tan( 50 / 180 * Math.PI ) )
					)
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: 0
					typeIn: 'line'
					expand:
						width: ( 20 / 54 ) * thickness * contrast
						angle: ( 127 / 180 ) * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[1].expandedTo[0].x + (27)
					y: contours[0].nodes[1].expandedTo[1].y + 28 + ( 20 / 54 ) * thickness
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 37 / 54 ) * thickness
						angle: Math.PI + ( 17 / 180 ) * Math.PI
						distr: 0.75
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: capHeight - ( 31 / 54 ) * thickness * contrast - ( 44 / 700 ) * capHeight
					dirOut: Math.PI / 2
					typeIn: 'line'
					expand:
						width:( 35 / 54 ) * thickness
						angle: Math.PI + ( - 9 / 180 ) * Math.PI
						distr: 1
				4:
					x: contours[0].nodes[3].expandedTo[0].x + 39
					y: contours[0].nodes[5].y
					dirIn: Math.PI
					typeOut: 'line'
					expand:
						width: ( 31 / 54 ) * thickness * contrast
						angle: Math.PI + ( - 80 / 180 ) * Math.PI
						distr: 1
				5:
					x: contours[0].nodes[4].expandedTo[0].x + 17 * width
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 31 / 54 ) * thickness * contrast
						angle: Math.PI - Math.PI / 2
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 310 / 700 ) * capHeight
					typeOut: 'line'
					expand:
						width: ( 16 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeIn: 'line'
					dirOut: 0
					expand:
						width: ( 20 / 54 ) * thickness * contrast
						angle: Math.PI + ( 50 / 180 ) * Math.PI
						distr: 1
				2:
					x: contours[1].nodes[1].expandedTo[0].x + (27)
					y: contours[1].nodes[1].expandedTo[1].y - 28 - ( 20 / 54 ) * thickness
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 37 / 54 ) * thickness
						angle: Math.PI + ( 17 / 180 ) * Math.PI
						distr: 0.75
				3:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[5].y + ( 31 / 54 ) * thickness * contrast + ( 44 / 700 ) * capHeight
					dirOut: Math.PI / 2
					typeIn: 'line'
					expand:
						width:( 35 / 54 ) * thickness
						angle: Math.PI + ( - 9 / 180 ) * Math.PI
						distr: 1
				4:
					x: contours[1].nodes[3].expandedTo[0].x + 39
					y: contours[1].nodes[5].y
					dirIn: Math.PI
					typeOut: 'line'
					expand:
						width: ( 31 / 54 ) * thickness * contrast
						angle: Math.PI + ( 80 / 180 ) * Math.PI
						distr: 1
				5:
					x: contours[1].nodes[4].expandedTo[0].x + 17 * width
					y: ( 82 / 90 ) * descender
					typeIn: 'line'
					expand:
						width: ( 31 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 1
