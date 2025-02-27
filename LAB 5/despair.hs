describePair :: (Int, Int) -> String
describePair (0, 0) = "Origin"
describePair (0, _) = "X-Axis"
describePair (_, 0) = "Y-Axis"
describePair _ = "Other"

main :: IO ()
main = do
    putStrLn "Enter the first integer:"
    xStr <- getLine
    let x = read xStr :: Int

    putStrLn "Enter the second integer:"
    yStr <- getLine
    let y = read yStr :: Int

    putStrLn (describePair (x, y))

