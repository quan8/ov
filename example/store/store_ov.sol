pragma solidity >=0.5.16 <0.7.0;

import '../../api/Ownable.sol';
import '../../api/Validity.sol';

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Storage_OV is Ownable, Validity {

    uint256 number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) preValid() postValid() public {
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() preValid() public view returns (uint256)  {
        return number;
    }

    /**
     * @dev Return bool
     * @return true if the invariant holds; false otherwise
     */ 
    function isValid() external view returns (bool) {
        return number > 0;
    }
}