use std::io;

fn main() {
    let mut numbers = Vec::new();

    println!("Enter numbers (0 to stop): ");
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input).unwrap();
        let num: i32 = input.trim().parse().unwrap();

        if num == 0 {
            break;
        }
        numbers.push(num);
    }

    println!("Even numbers:");
    let mut iter = numbers.into_iter();
    while let Some(num) = iter.next() {
        if num % 2 == 0 {
            println!("{}", num);
        }
    }
}
