use std::io;
fn main() {
    println!("Enter an integer: ");
    let mut input = String::new();
    io::stdin().read_line(&mut input)
        .expect("Failed to read line");
    let num: i32 = match input.trim().parse() {
        Ok(n) => n,      
        Err(_) => {
            println!("Please enter a valid integer");
            return;      
        }
    };
    if num % 2 == 0 {
        println!("Even");
    } else {
        println!("Odd");
    }
}

