getInput :: IO [String]
getInput = do
    putStrLn "Enter a list of strings:"
    input <- getLine
    return (words input)

sumStringLengths :: [String] -> Int
sumStringLengths = foldl (+) 0 . map length

main :: IO ()
main = do
    strs <- getInput
    let result = sumStringLengths strs
    putStrLn $ "The sum of all string lengths is: " ++ show result
