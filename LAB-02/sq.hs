main :: IO () 
main = do 
    let applyOp op = foldl1 op 
        evenNumbers = filter even [6,7,8,9,3,2] 
        squares = map (^2) evenNumbers 
        result = applyOp (+) squares 
    print result
