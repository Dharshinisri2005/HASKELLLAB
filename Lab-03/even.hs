eve :: Integer -> Bool  
eve n = n `mod` 2 == 0  -- Use backticks for `mod`

main :: IO ()  
main = do  
    let n = 46  
    print "The number is:"  
    print n  
    print (eve n)  
