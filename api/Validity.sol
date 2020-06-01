pragma solidity >=0.5.16 <0.7.0;

/**
 * @title Validity
 * @dev define validity of an object
 */
interface Validity {

    /**
     * The invariant condition of an object.
     * Subclass must implement this method speciyfing its invariant.
     */ 
    function isValid() external view returns (bool);
    
    // modifier to check object's validity prior a function call
    modifier preValid() {
        require(this.isValid(), "Validity fails pre-check");
        _;
    }
    
    // modifier to check object's validity immediately after a function call
    modifier postValid() {
        _;
        require(this.isValid(), "Validity fails post-check");
    }
}