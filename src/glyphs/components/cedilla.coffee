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
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 30 + (6)
					y: - 54
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 23 / 54 ) * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x + (5)
					y: contours[0].nodes[1].expandedTo[1].y
					# dirOut: Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[3].expandedTo[0].point ) + ( 20 / 180 * Math.PI )
					expand: Object({
						width: thickness * ( 24 / 54 ) * contrast
						angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point )
						distr: 0
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( ( contours[0].nodes[4].x ) - contours[0].nodes[2].expandedTo[1].x ) * ( 14 / 54 )
					y: - 29 + (0)
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 21 / 54 ) * contrast
						angle: 180 - 113 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x + 34 * width - (8)
					y: contours[0].nodes[5].expandedTo[0].y + ( contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[5].expandedTo[0].y ) * 0.5
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 26 / 54 )
						angle: 0 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[3].expandedTo[0].x - (9/54) * thickness
					y: - 97 - ( 19 / 54 ) * thickness
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 19 / 54 )
						angle: - 88 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[0].y + ( contours[0].nodes[4].expandedTo[0].y - contours[0].nodes[5].expandedTo[0].y ) * 0.5
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 27 / 54 ) * contrast
						angle: 180 + 'deg'
						distr: 0.5
					})
