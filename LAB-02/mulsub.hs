main :: IO () 
main = do 
    let compose f g x = f (g x) 
        multiplyBy2 = (*2) 
        subtract3 = subtract 3 
        result = map (compose multiplyBy2 subtract3) [2,3,4,5] 
    print result
