-- Implement a Lua program that simulates a simple bank account. Create a function createAccount that returns closures for depositing and withdrawing money from the account. The closures should maintain the account balance.

-- In your discussions, discuss the rationale of having balance in a closure.

function createAccount(initialBalance)
  local balance = initialBalance or 0

  -- Define the deposit function
  local function deposit(amount)
      balance = balance + amount
  end

  -- Define the withdraw function
  local function withdraw(amount)
      if amount <= balance then
          balance = balance - amount
      else
          print("Insufficient funds")
      end
  end

  -- Define the getBalance function
  local function getBalance()
      return balance
  end

  -- Return a table containing the closure functions
  return {
      deposit = deposit,
      withdraw = withdraw,
      getBalance = getBalance
  }
end

-- Create a bank account with an initial balance of $100
local account = createAccount(100)

-- Deposit and withdraw money
account.deposit(50)
account.withdraw(30)

-- Get and display the account balance
print("Account Balance: $" .. account.getBalance())  -- Should print "Account Balance: $120"