getInput :: IO [Int]
getInput = do
    putStrLn "Enter a list of numbers separated by spaces:"
    input <- getLine
    return (map read (words input))

composeFilterMap :: (a -> Bool) -> (a -> b) -> [a] -> [b]
composeFilterMap filterFunc mapFunc = map mapFunc . filter filterFunc

main :: IO ()
main = do
    nums <- getInput
    let filterGreaterThanFive = (<= 5)
        square = (^ 2)
        result = composeFilterMap filterGreaterThanFive square nums
    putStrLn $ "The squared numbers less than or equal to 5 are: " ++ show result
