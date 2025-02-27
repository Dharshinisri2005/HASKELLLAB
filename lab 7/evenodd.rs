use std::io;
fn main() {
  let mut input = String::new();

    println!("Please enter a number:");
    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read line");
    let i: i32 = input.trim().parse().expect("invalid");
        if i % 2 == 0 {
            println!("{} is even", i);
        } else {
            println!("{} is odd", i);
        }
    }

