use std::io;

fn loan_eligibility(age: u32, income: u32) {
    if age < 21 {
        println!("Not eligible for a loan.");
    } else if age >= 21 && age <= 60 {
        if income > 50000 {
            println!("Eligible for a loan.");
        } else {
            println!("Not eligible due to low income.");
        }
    } else {
        println!("Need a guarantor for loan approval.");
    }
}

fn main() {
    let mut age = String::new();
    let mut income = String::new();

    println!("Enter age: ");
    io::stdin().read_line(&mut age).unwrap();
    let age: u32 = age.trim().parse().unwrap();

    println!("Enter monthly income: ");
    io::stdin().read_line(&mut income).unwrap();
    let income: u32 = income.trim().parse().unwrap();

    loan_eligibility(age, income);
}
