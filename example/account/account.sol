pragma solidity >=0.5.16 <0.7.0;

/**
 * @title Account
 * @dev Deposit, withdraw and get balance
 */
contract Account {

    uint256 balance;
    
    // invariant: balance > 0 && balance < 1e30

    /**
     * @dev Deposit an amount to the account
     * @param amount value to deposit
     */
    function deposit(uint256 amount) public {
        balance += amount;
    }
    
    /**
     * @dev Withdraw an amount from the account
     * @param amount value to withdraw
     */ 
    function withdraw(uint256 amount) public {
        balance -= amount;
    }

    /**
     * @dev Return value 
     * @return value of the account
     */
    function get() public view returns (uint256){
        return balance;
    }
}