import System.Environment (getArgs)
import Text.Read (readMaybe) 

data Color = Red | Green | Blue
    deriving (Show, Read)  

describeColor :: Color -> String
describeColor Red = "This is Red"
describeColor Green = "This is Green"
describeColor Blue = "This is Blue"

main :: IO ()
main = do
    args <- getArgs
    if length args /= 1
        then putStrLn "Please provide exactly one color (Red, Green, or Blue)."
        else do
            let color = readMaybe (head args) :: Maybe Color  
            case color of
                Just c  -> putStrLn (describeColor c) 
                Nothing -> putStrLn "Invalid color! Please enter Red, Green, or Blue."

