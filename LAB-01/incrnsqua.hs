sos ::[Int]->Int
sos = sum.map(^2)

main :: IO ()
main = do
    print (sos [1,2,3,4]) 
