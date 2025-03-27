fn fibonacci(n: u32) -> Vec<u32> {
    let mut fib_seq = vec![0, 1];

    for _ in 2..n {
        let next = fib_seq[fib_seq.len() - 1] + fib_seq[fib_seq.len() - 2];
        fib_seq.push(next);
    }

    fib_seq
}

fn main() {
    let n = 10;
    let fib_numbers = fibonacci(n);
    println!("Fibonacci sequence: {:?}", fib_numbers);
}
