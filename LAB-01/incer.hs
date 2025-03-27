inc :: Int -> Int
inc x = (x * x) + 10

main :: IO ()
main = print (inc 10)
