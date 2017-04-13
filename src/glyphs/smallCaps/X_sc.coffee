exports.glyphs['X_sc'] =
	#
	# TODO:
	# LATIN LETTER SMALL CAPITAL X have no unicode for now…
	#
	unicode: '§'
	#
	# TODO:
	# LATIN LETTER SMALL CAPITAL X have no unicode for now…
	#
	glyphName: 'xsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL X'
	base: 'X_cap'
	advanceWidth: base.advanceWidth
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'smallcap'
	]
	parameters:
		capHeight: scCapHeight
		thickness: scThickness
		width: scWidth
