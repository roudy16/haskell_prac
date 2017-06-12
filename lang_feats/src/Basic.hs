module Basic where

qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (num:nums) =
    let lower = qsort [x | x <- nums, x < num]
        upper = qsort [x | x <- nums, x >= num]
    in lower ++ [num] ++ upper

rev :: [a] -> [a]
rev [] = []
rev (xs) =
    let rev_list = [last xs] ++ rev (init xs)
    in rev_list

bad_add :: Int -> Int -> Int
bad_add lhs rhs = lhs + rhs + 5

listToStr :: (Show a) => [a] -> String
listToStr [] = ""
listToStr [x] = show x
listToStr (x:xs) = show x ++ " " ++ listToStr xs

echo_head :: (Show a) => [a] -> String
echo_head [] = "Nothin' brah"
echo_head all@(x:_) = "First element of " ++ listToStr all ++ " is " ++ show x

isOdd :: Int -> Bool
isOdd = (`elem` [1,3..])

repeat' :: String -> Int -> String
repeat' x n
    | n <= 0    = ""
    | n == 1    = x
    | otherwise = x ++ repeat' x (n-1)

firstLetter :: String -> Char
firstLetter "" = '\0'
firstLetter (x:_) = x

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x       = x : filter' p xs
    | otherwise = filter' p xs

isLowerAlpha :: Char -> Bool
isLowerAlpha = (`elem` ['a'..'z'])
