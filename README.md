# Bank tech test Makers Academy

## Introduction
This is a simple bank tech test for makers academy to practice our Object Oriented design and Test Driven Development skills.

## Running the app
```
git clone https://github.com/tamasmagyarhunor88/bank_tech_test_makers.git
cd bank_tech_test_makers
bundle install
ruby bank.rb
```

to be continued...

## Requirements

* Account holder should be able to interact with your code via REPL like IRB or PRY.
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory, like in one IRB or PRY session ( ex. it doesn't need to be stored to a database)

## Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see:  

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```



### User stories:

```
As a Bank Account Holder
So I can keep my money on my bank account
I want to be able to deposit money

As a Bank Account Holder
So I can keep my money in my pocket as well
I want to be able to withdraw money

As a Bank Account Holder
So I can see where my money gone
I want to be able to print my bank statement
```
