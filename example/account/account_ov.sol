pragma solidity >=0.5.16 <0.7.0;

import '../../api/Ownable.sol';
import '../../api/OVValidity.sol';

/**
 * @title Account
 * @dev Deposit, withdraw and get balance
 */
contract Account is Ownable, OVValidity {

    uint256 balance;
    
    // invariant: balance > 0 && balance < 1e30

    /**
     * @dev Deposit an amount to the account
     * @param amount value to deposit
     */
    function deposit(uint256 amount) thisThis() public {
        balance += amount;
    }
    
    /**
     * @dev Withdraw an amount from the account
     * @param amount value to withdraw
     */ 
    function withdraw(uint256 amount) thisThis() public {
        balance -= amount;
    }

    /**
     * @dev Return value 
     * @return value of the account
     */
    function get() thisTop() public view returns (uint256){
        return balance;
    }
    
    /**
     * The invariant
     * 
     * @dev Return bool
     * @return true if the invariant holds; false otherwise
     */ 
    function isValid() botThis() external view returns (bool) {
        return balance > 0 && balance < 1e30;
    }
}