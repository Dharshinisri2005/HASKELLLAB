import System.Environment 
iszero :: Int ->String 
iszero x |x==0 ="Zero" 
         |otherwise ="not Zero" 
main ::IO ()  
main = do  
  args <- getArgs  
  case args of   
        [x]->do  

        let n=read x::Int 

        putStrLn(show(iszero n)) 
