pragma solidity >=0.5.16 <0.7.0;

/**
 * @title Ownable
 * @dev Set & change owner
 */
contract Ownable {

    address private owner;
    
    // modifier to check if caller is owner
    modifier isOwner() {
        require(msg.sender == owner, "Caller is not owner");
        _;
    }
    
    // modifier to check if caller is owner
    modifier isCalledBy(address addr) {
        require(msg.sender == addr, "Caller is not the specified address");
        _;
    }
    
    /**
     * @dev Set contract deployer as owner
     */
    constructor() public {
        owner = msg.sender; // 'msg.sender' is sender of current call, contract deployer for a constructor
    }

    /**
     * @dev Return owner address 
     * @return address of owner
     */
    function getOwner() external view returns (address) {
        return owner;
    }
}