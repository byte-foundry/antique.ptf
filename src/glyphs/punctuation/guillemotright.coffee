exports.glyphs['guillemotright'] =
	unicode: '»'
	glyphName: 'guillemotright'
	characterName: 'RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 8
		spacingRight: 50 * spacing + 8
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
					x: spacingLeft + (10/54) * thickness
					y: xHeight - ( 65 / 600 ) * xHeight
					typeOut: 'line'
					expand:
						width: ( 42 / 54 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 0
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 3 - (10),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * (( 42 / 54 ) * thickness * Math.sqrt( width )) + 22
					)
					y: contours[0].nodes[2].y + ( contours[0].nodes[0].y - contours[0].nodes[2].y ) * 0.5
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 42 / 54 ) * thickness * Math.sqrt( width )
						angle: 0
						distr: 0.75
				2:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y - ( 284 / 600 ) * xHeight
					typeIn: 'line'
					expand:
						width: ( 42 / 54 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 0
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + 48 - (10),
						contours[0].nodes[1].expandedTo[1].x
					)
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand:
						width: ( 42 / 54 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 0
						distr: 0
				1:
					x: Math.max(
						contours[1].nodes[0].expandedTo[0].x + 100 * width + 3 - (10),
						contours[1].nodes[0].expandedTo[1].x + 0.75 * (( 42 / 54 ) * thickness * Math.sqrt( width )) + 22
					)
					y: contours[0].nodes[1].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 42 / 54 ) * thickness * Math.sqrt( width )
						angle: 0
						distr: 0.75
				2:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[0].nodes[2].y
					typeIn: 'line'
					expand:
						width: ( 42 / 54 ) * thickness * contrast * contrastExtremity * Math.sqrt( width )
						angle: 0
						distr: 0
