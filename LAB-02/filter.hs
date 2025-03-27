main :: IO () 
main = do 
    let numbers = [12,3,4,2,12,3] 
        result = foldl (*) 1 (map (*2) (filter (<=10) numbers)) 
    print result
