filterAndFold :: (a -> Bool) -> (b -> a -> b) -> b -> [a] -> b
filterAndFold filterFunc foldFunc initialVal = foldl foldFunc initialVal . filter filterFunc

getInput :: IO [Int]
getInput = do
    putStrLn "Enter a list of numbers:"
    input <- getLine
    return (map read (words input))

main :: IO ()
main = do
    nums <- getInput
    let isOdd = odd
        sumFunc = (+)
        result = filterAndFold isOdd sumFunc 0 nums
    putStrLn $ "The sum of all odd numbers is: " ++ show result
