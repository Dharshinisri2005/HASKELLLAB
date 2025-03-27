struct BankAccount {
    account_number: u32,
    holder_name: String,
    balance: f32,
}

impl BankAccount {
    fn deposit(&mut self, amount: f32) {
        self.balance += amount;
    }

    fn withdraw(&mut self, amount: f32) {
        if amount <= self.balance {
            self.balance -= amount;
        } else {
            println!("Insufficient balance!");
        }
    }

    fn display(&self) {
        println!(
            "Account: {}, Name: {}, Balance: ₹{:.2}",
            self.account_number, self.holder_name, self.balance
        );
    }
}

fn main() {
    let mut acc = BankAccount {
        account_number: 101,
        holder_name: "Alice".to_string(),
        balance: 5000.0,
    };

    acc.deposit(2000.0);
    acc.withdraw(1000.0);
    acc.display();
}
