-- File: things.hs

doubleSmallNumber x = if x > 100
		          then x
		          else x*2


boomBangs xs = [if x < 10 then "Boom!" else "Bang!" | x <- xs, odd x]

length' xs = sum [1 | _ <- xs]


removeNonUpperCase st = [c | c <- st, c `elem`['A'..'Z']]

lucky :: (Integral a) => a -> String 
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry,you are out of luck."

sayMe ::  (Integral a) => a -> String
sayMe 1 = "ONE"
sayMe 2 = "TWO"
sayMe 3 = "THREE"
sayMe 4 = "FOUR"
sayMe 5 = "FIVE"
sayMe x = "not betwenn 1 and 5"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

--stupid way
addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVectors a b = (fst a + fst b, snd a + snd b)

--easy way
newAddVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
newAddVectors (x1,y1) (x2,y2) = (x1 + x2 , y1 + y2)


first :: (a,b,c) -> a
first (x, _, _) = x

second :: (a,b,c) -> b
second (_, y, _) = y

third :: (a,b,c) -> c
third (_, _, z) = z 

myLength :: (Num b) => [a] -> b
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

capital :: String -> String
capital "" = "Empty String!"
capital all@(x:xs) = "The first letter of" ++ all ++ "is" ++ [x]

bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= skinny                 = "You're underweight, you emo, you!"  
    | bmi <= normal                 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= fat                    = "You're fat! Lose some weight, fatty!"  
    | otherwise                     = "You're a whale, congratulations!"  
     where bmi = weight / height ^ 2
     	   skinny = 18.5
     	   normal = 25.0
     	   fat = 30.0


myMax :: (Ord a) => a -> a -> a
myMax a b 
	  | a > b 	    = a
	  | otherwise   = b



myCompare :: (Ord a) => a -> a -> Ordering
myCompare a b 
	  | a > b    = GT
	  | a == b   = EQ
	  |otherwise = LT

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
         where (f:_) = firstname
               (l:_) = lastname

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]


cylinder :: (RealFloat a) => a -> a -> a
cylinder r h = 
	let sideArea = 2 * pi * r * h
	    topArea = pi * r ^2
	in  sideArea + 2 * topArea 

--Let seems very similar to lambda 


