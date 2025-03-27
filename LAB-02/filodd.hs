main :: IO () 
main = do 
    let numbers = [23,5,43,4,5,6] 
        result = foldl (*) 1 (map (^2) (filter odd numbers)) 
    print result
