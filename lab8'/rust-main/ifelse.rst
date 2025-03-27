use std::io;
fn main() {
    println!("Enter a number: ");
    let mut input = String::new();
    io::stdin().read_line(&mut input)
        .expect("Failed to read line");
    let num: i32 = match input.trim().parse() {
        Ok(n) => n,       
        Err(_) => {
            println!("Please enter a valid number");
            return;        
        }
    };
    if num > 0 {
        println!("The number {} is positive.", num);
    } else if num < 0 {
        println!("The number {} is negative.", num);
    } else {
        println!("The number is zero.");
    }
}

