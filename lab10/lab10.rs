use std::fs::File;
use std::io::{self, Read, Write};
use std::path::Path;

fn main() {
    let input_file = "input.txt.txt";
    let output_file = "output.txt";

    
    match read_file(input_file) {
        Ok(content) => {
            if content.is_empty() {
                println!("The file '{}' is empty.", input_file);
            } else {
                println!("File read successfully. Writing to '{}'...", output_file);
                if let Err(e) = write_file(output_file, &content) {
                    eprintln!("Error writing to file: {}", e);
                } else {
                    println!("File written successfully.");
                }
            }
        }
        Err(e) => eprintln!("Error reading file: {}", e),
    }
}

fn read_file(filename: &str) -> Result<String, io::Error> {
    let path = Path::new(filename);
    if !path.exists() {
        return Err(io::Error::new(io::ErrorKind::NotFound, "File not found"));
    }
    
    let mut file = File::open(filename)?;
    let mut contents = String::new();
    file.read_to_string(&mut contents)?;
    Ok(contents)
}

fn write_file(filename: &str, content: &str) -> Result<(), io::Error> {
    let mut file = File::create(filename)?;
    file.write_all(content.as_bytes())?;
    Ok(())
}
