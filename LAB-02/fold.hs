main :: IO () 
main = do 
    let filterAndFold filterFn foldFn = foldl foldFn 0 . filter filterFn 
        result = filterAndFold odd (+) [6,7,8,945,5] 
    print result
