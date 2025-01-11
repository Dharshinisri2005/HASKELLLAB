applyOp :: Num a => (a -> a -> a) -> [a] -> a
applyOp operation = foldl operation 0

sumOfSquaresOfEvens :: [Int] -> Int
sumOfSquaresOfEvens = applyOp (+) . map (^2) . filter even

getInput :: IO [Int]
getInput = do
    putStrLn "Enter a list of numbers:"
    input <- getLine
    return (map read (words input))

main :: IO ()
main = do
    nums <- getInput
    let result = sumOfSquaresOfEvens nums
    putStrLn $ "The sum of the squares of all even numbers is: " ++ show result
