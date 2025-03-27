main :: IO () 
main = do 
    let composeFilterMap filterFn mapFn = map mapFn . filter filterFn 
        result = composeFilterMap (\x -> x <= 5) (^2) [4,3,6,7,2,1] 
    print result
