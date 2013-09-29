
Account := Object clone
Account balance := 0

Account withdraw := method(amt, self balance = self balance - amt)
Account deposit := method(amt, self balance = self balance + amt)

acct := Account clone
acct deposit(100) println
acct withdraw(50) println

Account testcall := method(
	call target println
)

acct testcall(1, 4, 10)