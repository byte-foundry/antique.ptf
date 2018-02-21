exports.glyphs['cedilla'] =
	glyphName: "cedilla"
	characterName: "CEDILLA"
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y + ( 4 / 54 ) * thickness
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 26 / 54 ) * contrast
						angle: 0
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 27 + 0.25 * contours[0].nodes[1].expand.width
					y: - 44 - ( 4 / 54 ) * thickness
					typeOut: 'line'
					typeIn: 'line'
					expand: Object({
						width: thickness * ( 23 / 54 ) * contrast
						angle: 0
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeIn: 'line'
					# dirOut: Utils.lineAngle({x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y}, {x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y}) + (20 / 180 * Math.PI)
					dirOut:( 37 ) / 180 * Math.PI
					expand: Object({
						width: thickness * ( 17 / 54 ) * contrast
						angle: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y}, {x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y})
						angle: Math.PI / 2
						distr: 0
					})
				3:
					x: contours[0].nodes[2].x * 18 / 40 + (contours[0].nodes[4].x - 0.25 * thickness * 26 / 54)  * 22 / 40
					y: contours[0].nodes[2].y + 5 + Math.sin(contours[0].nodes[3].expand.angle) * contours[0].nodes[3].expand.width
					dirOut: 0
					type: 'smooth'
					tensionIn: 0.6
					expand: Object({
						width: thickness * ( 21 / 54 ) * contrast
						angle: (180 - 113) / 180 * Math.PI
						distr: 1
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x + 34 * width - (8)
					y: (contours[0].nodes[3].y + contours[0].nodes[6].y ) * 0.5 + 3
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand: Object({
						width: thickness * ( 26 / 54 ) * contrast
						angle: 0
						distr: 0.75
					})
				5:
					x: contours[0].nodes[0].expandedTo[1].x + 34 * width - (8)
					y: (contours[0].nodes[3].y + contours[0].nodes[6].y ) * 0.5 - 4
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand: Object({
						width: thickness * ( 26 / 54 ) * contrast
						angle: 0
						distr: 0.75
					})
				6:
					x: Math.min(
						contours[0].nodes[0].expandedTo[1].x,
						contours[0].nodes[3].expandedTo[1].x - (9/54) * thickness
					)
					y: contours[0].nodes[1].y - Math.max( 43, ( 43 / 54 ) * thickness )
					y: contours[0].nodes[1].y - ( contours[0].nodes[5].x - contours[0].nodes[7].expandedTo[0].x )
					dirOut: 0
					type: 'smooth'
					expand: Object({
						# width: Math.min(
						# 	thickness * ( 19 / 54 ),
						# 	( contours[0].nodes[1].y - 10 ) - ( contours[0].nodes[3].y - 68 )
						# )
						width: thickness * ( 19 / 54 ) * contrast
						angle:( - 93 ) / 180 * Math.PI
						distr: 1
					})
				7:
					x: contours[0].nodes[2].x - 3 - contours[0].nodes[7].expand.width * 0.5
					# y: Math.min(
					# 	( contours[0].nodes[2].y + contours[0].nodes[6].expandedTo[0].y ) * 0.5,
					# 	contours[0].nodes[1].y - 10
					# )
					y: contours[0].nodes[1].y - 12
					dirIn: - Math.PI / 2
					expand: Object({
						width: thickness * ( 27 / 54 ) * contrast
						angle: Math.PI
						distr: 0.5
					})
