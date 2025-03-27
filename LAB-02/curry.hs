main :: IO () 
main = do 
    putStrLn "Enter operation (+ or *):" 
    op <- getLine 
    putStrLn "Enter two numbers:" 
    num1 <- readLn 
    num2 <- readLn 
    let applyOp "+" = (+) 
        applyOp "*" = (*) 
        applyOp _   = error "Invalid operation"  -- Handle invalid input
    print (applyOp op num1 num2)
