-- mylast.hs
-- gives you the last element of a.

mylast a = if length a == 0
	then a
	else drop (length a - 1)(a)