fn average_temp(temps: &Vec<i32>) -> f32 {
    let sum: i32 = temps.iter().sum();
    sum as f32 / temps.len() as f32
}

fn min_max_temp(temps: &Vec<i32>) -> (i32, i32) {
    (*temps.iter().min().unwrap(), *temps.iter().max().unwrap())
}

fn main() {
    let temperatures = vec![28, 30, 29, 33, 35, 32, 31];
    
    println!("Average Temperature: {:.2}", average_temp(&temperatures));
    
    let (min, max) = min_max_temp(&temperatures);
    println!("Lowest: {}, Highest: {}", min, max);
}
