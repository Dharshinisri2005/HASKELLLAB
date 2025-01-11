getInput :: IO [Int]
getInput = do
    putStrLn "Enter a list of numbers separated by spaces:"
    input <- getLine
    return (map read (words input))

filterAndMap :: (a -> Bool) -> (a -> b) -> [a] -> [b]
filterAndMap filterFunc mapFunc = map mapFunc . filter filterFunc

main :: IO ()
main = do
    nums <- getInput
    let isEven = even
        double = (* 2)
        result = filterAndMap isEven double nums
    putStrLn $ "The doubled even numbers are: " ++ show result
