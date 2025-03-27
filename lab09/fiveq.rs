fn update_salary(employee: (u32, &str, u32)) -> (u32, &str, u32) {
    let (id, name, salary) = employee;
    let new_salary = if salary < 50000 { salary + (salary / 10) } else { salary };
    (id, name, new_salary)
}

fn main() {
    let employee = (101, "Alice", 45000);
    let updated = update_salary(employee);
    println!("Updated Employee Data: {:?}", updated);
}
