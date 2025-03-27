fn main() {
    let mut num = 1;

    while num <= 20 {
        if num % 2 != 0 {
            println!("{}", num);
        }
        num += 1;
    }
}

