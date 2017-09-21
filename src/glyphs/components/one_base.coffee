# TODO: make svg alt images
exports.glyphs['one_base'] =
	glyphName: 'one'
	characterName: 'DIGIT ONE'
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
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
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
					) + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 7 / 54 ) * thickness * contrast * contrastExtremity
						angle: - 60 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: capHeight - 75
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 40 / 54 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 0.15
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 40 / 54 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 0.15
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
