use std::io;
fn main() {
  let mut input = String::new();

    println!("Please enter a number:");
    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read line");
    let num: i32 = input.trim().parse().expect("invalid");
    if num > 0 {
        println!("{} is positive.", num);
    } else if num < 0 {
        println!("{} is negative.", num);
    } else {
        println!("{} is zero.", num);
    }
}
