# 🏧 ATM Simulator — Dart

A simple command-line ATM simulator built using **Dart**. The project demonstrates basic ATM operations, cash validation, withdrawal limits, and currency conversion.

## ✨ Features

- **Deposit Money:** Add money to the account balance.
- **Withdraw Money:** Request money from the ATM.
- **Cash Validation:** Check whether the entered amount meets the ATM's accepted cash rules.
- **Withdrawal Limits:** Apply maximum deposit and withdrawal limits.
- **Multiple Currencies:** Choose between Shekel, Euro, Dollar, and Yuan.
- **Balance Management:** Update the account balance after deposits and withdrawals.
- **Input Validation:** Use `int.tryParse()` to check numeric user input.

## 💱 Supported Currencies

The program includes four currency options:

- Shekel
- Euro
- Dollar
- Yuan

The exchange rates are represented by a list of conversion values in the code.

## 🛠️ Technologies Used

- Dart
- `dart:io` for console input and output
- Lists and variables
- Functions
- Conditional statements (`if`, `else`)
- Loops (`do-while`)
- Switch statements
- Input validation

## 🚀 How to Run

1. Install the [Dart SDK](https://dart.dev/get-dart).
2. Clone the repository:

   ```bash
   git clone YOUR_REPOSITORY_URL
   ```

3. Navigate to the project directory:

   ```bash
   cd YOUR_PROJECT_FOLDER
   ```

4. Run the program:

   ```bash
   dart run main.dart
   ```

## 💻 Example Menu

```text
===============ATM==============
Enter the operation:
1- for the take money
2- get money
```

Choose an operation and follow the instructions displayed in the terminal.

## 📚 What I Learned

Through this project, I practiced:

- Organizing code into reusable functions.
- Working with lists and currency conversion values.
- Validating user input.
- Using loops to repeat operations.
- Applying conditional logic to ATM operations.
- Managing an account balance through deposits and withdrawals.
- Implementing basic transaction limits.

## 🔧 Future Improvements

- Fix input loops so users can exit operations.
- Improve currency conversion and exchange-rate accuracy.
- Correct withdrawal validation and balance calculations.
- Add transaction history.
- Add a clear exit option.
- Improve error handling and user messages.
- Separate ATM logic into classes.

## 👩‍💻 Author

**Salwa Alhajali**

GitHub: [Salwa-Alhajali](https://github.com/Salwa-Alhajali)

---

*This project was developed as a programming practice project while learning Dart.*
