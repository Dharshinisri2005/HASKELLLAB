import System.Environment 

checksign :: Int ->String 

checksign 0 = "Zero" 

checksign x | x>0 ="positive" 

            |otherwise="negative" 

main ::IO ()  
main = do  
  args <- getArgs  
  case args of   
        [x]->do  

        let n=read x::Int 

        putStrLn(show(checksign n)) 
