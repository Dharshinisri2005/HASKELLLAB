main :: IO () 
main = do 
    let strings = ["hello", "sowmya"] 
        lengths = map length strings 
        totalLength = foldl (+) 0 lengths 
    print totalLength
