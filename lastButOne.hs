--file: lastButOne.hs
-- gives you the element before the last element of a.

lastButOne a = head (drop(length a - 2) (a))
