pragma solidity >=0.5.16 <0.7.0;

/**
 * @title Validity
 * @dev define validity of an object
 */
interface OVValidity {

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
    
    // modifier to  object's validity immediately after a function call
    modifier postValid() {
        _;
        require(this.isValid(), "Validity fails post-check");
    }
    

    //
    // The following modifiers are short-hand for OV language
    //
    
    // modifier to check object's validity before and after a function call
    modifier thisThis() {
        require(this.isValid(), "Validity fails pre-check");
        _;
        require(this.isValid(), "Validity fails post-check");
    }
    
    // modifier to check object's validity after a function call
    modifier botThis() {
        _;
        require(this.isValid(), "Validity fails post-check");
    } 
    
    // modifier to check object's validity before a function call
    modifier thisTop() {
        require(this.isValid(), "Validity fails pre-check");
        _;
    }
    
    // modifier that is simply not checking object's validity
    modifier botTop() {
        _;
    } 
}