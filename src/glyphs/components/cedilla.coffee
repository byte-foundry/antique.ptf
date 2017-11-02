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
					expand:
						width: thickness * ( 26 / 54 ) * contrast
						angle: 0 + 'deg'
						distr: 0.5
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 27 + 0.25 * contours[0].nodes[1].expand.width
					y: - 44 - ( 4 / 54 ) * thickness
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 23 / 54 ) * contrast
						angle: 0 + 'deg'
						distr: 0.25
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeIn: 'line'
					# dirOut: Utils.lineAngle({x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y}, {x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y}) + (20 / 180 * Math.PI)
					dirOut: 37 + 'deg'
					expand:
						width: thickness * ( 17 / 54 ) * contrast
						angle: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y}, {x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y})
						angle: Math.PI / 2
						distr: 0
				3:
					x: contours[0].nodes[2].x * 18 / 40 + (contours[0].nodes[4].x - 0.25 * thickness * 26 / 54)  * 22 / 40
					y: contours[0].nodes[2].y + 5 + Math.sin(contours[0].nodes[3].expand.angle) * contours[0].nodes[3].expand.width
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					tensionIn: 0.6
					expand:
						width: thickness * ( 21 / 54 ) * contrast
						angle: (180 - 113) / 180 * Math.PI
						distr: 1
				4:
					x: contours[0].nodes[0].expandedTo[1].x + 34 * width - (8)
					y: (contours[0].nodes[3].y + contours[0].nodes[6].y ) * 0.5 + 3
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 26 / 54 )
						angle: 0 + 'deg'
						distr: 0.75
				5:
					x: contours[0].nodes[0].expandedTo[1].x + 34 * width - (8)
					y: (contours[0].nodes[3].y + contours[0].nodes[6].y ) * 0.5 - 4
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 26 / 54 )
						angle: 0 + 'deg'
						distr: 0.75
				6:
					x: contours[0].nodes[3].expandedTo[1].x - (9/54) * thickness
					y: contours[0].nodes[3].y - 68
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 19 / 54 )
						angle: - 93 + 'deg'
						distr: 1
				7:
					x: contours[0].nodes[2].x - 3 - contours[0].nodes[7].expand.width * 0.5
					y: ( contours[0].nodes[2].y + contours[0].nodes[6].expandedTo[0].y ) * 0.5
					dirIn: - 90 + 'deg'
					expand:
						width: thickness * ( 27 / 54 ) * contrast
						angle: 180 + 'deg'
						distr: 0.5
