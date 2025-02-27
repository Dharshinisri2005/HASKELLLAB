import System.Environment
countElements :: [a] -> Int
countElements [] = 0
countElements (_:xs) = 1 + countElements xs
main :: IO ()
main = do
    args <- getArgs
    case args of
        [x] -> do
            let n = readn x :: n [Int]
            putStrLn (show (countElements n))

