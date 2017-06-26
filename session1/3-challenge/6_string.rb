# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
new_string = ""
	case return_odds
		when true
			string.split("").each_with_index do |key, value|
				if value % 2 != 0
					 new_string += key
				end
			end
		when false
			string.split("").each_with_index do |key, value|
				if value % 2 == 0
					new_string += key
				end
			end
	end
	new_string

end
