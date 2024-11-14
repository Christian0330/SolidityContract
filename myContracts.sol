// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract ErrorHandlingContract {
    uint public storedValue;

    // Set the stored value if it meets validation criteria
    function updateValue(uint newValue) public {
        require(newValue > 0, "Error: Value must be positive.");
        assert(newValue != storedValue); // Ensure the new value is different from the current one
        storedValue = newValue;
    }

    // Perform division if conditions are met
    function divide(uint numerator, uint denominator) public pure returns (uint) {
        require(denominator != 0, "Error: Cannot divide by zero.");

        if (numerator % denominator != 0) {
            revert("Error: Numerator must be exactly divisible by the denominator.");
        }
        
        return numerator / denominator;
    }
}
