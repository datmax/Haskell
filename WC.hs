--file: ch01/WC.hs
--counts the chars of an text input


main = interact wordCount
	where wordCount input = show (length input) ++ "\n"