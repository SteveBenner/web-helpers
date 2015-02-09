# todo: DOES NOT WORK, FIX THIS
module Sass::Script::Functions
	# Simple string substitution in SASS via String#gsub
	#
	# @param string [String] string to search for a give pattern
	# @param string [String] a regular expression denoting the search pattern
	# @param string [String] replacement string
	#
	def gsub(string, pattern, replacement)
		assert_type string, :String
		assert_type pattern, :String
		assert_type replacement, :String
		Sass::Script::String.new(string.to_s(options).gsub(pattern, replacement))
	end

	declare :gsub, :args => [:string, :pattern, :replacement]
end