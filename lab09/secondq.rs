use std::io;

fn get_price(item: &str, quantity: u32) -> f32 {
    let price = match item {
        "Burger" => 150.0,
        "Pizza" => 300.0,
        "Pasta" => 200.0,
        _ => {
            println!("Invalid item");
            return 0.0;
        }
    };

    let discount = if quantity > 3 { 0.1 } else { 0.0 };
    price * quantity as f32 * (1.0 - discount)
}

fn main() {
    let mut item = String::new();
    let mut quantity = String::new();

    println!("Enter menu item (Burger, Pizza, Pasta): ");
    io::stdin().read_line(&mut item).unwrap();
    let item = item.trim();

    println!("Enter quantity: ");
    io::stdin().read_line(&mut quantity).unwrap();
    let quantity: u32 = quantity.trim().parse().unwrap();

    let total_price = get_price(item, quantity);
    println!("Total Bill: ₹{:.2}", total_price);
}
