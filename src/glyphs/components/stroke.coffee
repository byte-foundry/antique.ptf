exports.glyphs['stroke'] =
	glyphName: "stroke"
	characterName: "stroke"
	anchors:
		0:
			left: parentAnchors[0].left
			right: parentAnchors[0].right
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].left
					y: 0 - overshoot
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 54 )
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: anchors[0].right
					y: xHeight + overshoot
					typeIn: 'line'
					expand: Object({
						width: thickness * ( 25 / 54 )
						angle: 0 + 'deg'
						distr: 0.5
					})
