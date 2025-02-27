averageMarks :: [Int] -> Float 
averageMarks [] = 0   
averageMarks marks = fromIntegral (sum marks) / fromIntegral (length marks) 
readStudent :: IO (String, Int, [Int]) 
readStudent = do 
    putStrLn "Enter the student's name:" 
    name <- getLine 
    putStrLn "Enter the student's roll number:" 
    rollNumber <- readLn 
    putStrLn "Enter the student's marks (space-separated):" 
    marksInput <- getLine 
    let marks = map read (words marksInput) :: [Int] 
    return (name, rollNumber, marks) 
displayStudentAverages :: Int -> IO () 
displayStudentAverages 0 = return ()  
displayStudentAverages n = do  
    (name, _, marks) <- readStudent 
    let avgMarks = averageMarks marks  
    putStrLn $ name ++ " has an average of " ++ show avgMarks 
    displayStudentAverages (n - 1) 
main :: IO () 
main = do 
    putStrLn "Enter the number of students:" 
    numStudents <- readLn 
    displayStudentAverages numStudents 
