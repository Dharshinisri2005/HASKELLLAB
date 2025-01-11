compose :: (b -> c) -> (a -> b) -> a -> c
compose f g = f . g

getInput :: IO [Int]
getInput = do
    putStrLn "Enter a list of numbers separated by spaces:"
    input <- getLine
    return (map read (words input))

main :: IO ()
main = do
    nums <- getInput
    let multiplyBy2 = (* 2)
        subtract3 = subtract 3
        composedFunction = compose subtract3 multiplyBy2
        result = map composedFunction nums
    putStrLn $ "The result of the composed function is: " ++ show result
