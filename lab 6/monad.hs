getInput :: IO Int
getInput = do
    input <- getLine
    return (read input)

applyOp :: (Int -> Int -> Int) -> [Int] -> Int
applyOp operation = foldl operation 0

main :: IO ()
main = do
    putStrLn "Choose an operation (+ or *):"
    op <- getLine
    putStrLn "Enter the first number:"
    num1 <- getInput
    putStrLn "Enter the second number:"
    num2 <- getInput
    
    let operation = case op of
                      "+" -> (+)
                      "*" -> (*)
                      _   -> error "Invalid operation"
    
    let result = applyOp operation [num1, num2]
    putStrLn $ "The result is: " ++ show result
