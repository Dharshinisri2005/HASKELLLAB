struct EvenNumbers {
    current: u32,
    limit: u32,
}

impl EvenNumbers {
    fn new(limit: u32) -> Self {
        Self { current: 2, limit }
    }
}

impl Iterator for EvenNumbers {
    type Item = u32;
    
    fn next(&mut self) -> Option<Self::Item> {
        if self.current > self.limit {
            return None;
        }
        let even_number = self.current;
        self.current += 2;
        Some(even_number)
    }
}

fn main() {
    let evens = EvenNumbers::new(20); // Limit set to 20 for demonstration
    
    for num in evens.take(10) {
        println!("{}", num);
    }
}
