module Main where

import Basic

main :: IO()
main = do
    {-let nums = [44,23,1,6,99,10000]-}
    {-let sorted_nums = qsort nums-}
    {-let rev_sorted_nums = rev sorted_nums-}


    {-{-Simple list manipulation-}-}
    {-putStrLn $ show sorted_nums-}
    {-putStrLn $ show rev_sorted_nums-}
    {-putStrLn $ echo_head rev_sorted_nums-}

    {-{-Demo infix user binary function-}-}
    {-putStrLn $ show $ bad_add 3 4-}
    {-putStrLn $ show $ 8 `bad_add` 3-}

    {-putStrLn $ show $ isOdd 331-}


    let mals = ["Duck", "Monkey", "Goat"]
    let items = zipWith repeat' mals [1..]
    let ters = map firstLetter mals

    putStrLn $ show $ listToStr $ askShout mals

    {-putStrLn $ show $ listToStr items-}
    {-putStrLn $ show $ listToStr ters-}

    -- Demo partial function application and mapping
    {-putStrLn $ show $ listToStr $ map (filter' isLowerAlpha) mals-}
