# ErrorHandlingContract

This Solidity contract demonstrates basic error handling and validation mechanisms. It includes functions for safely updating a stored value and performing a division operation with proper checks.

## Description

The ErrorHandlingContract is a basic contract designed to show how to handle errors and conditions in Solidity through the use of require, assert, and revert. It includes:

    Updating the Stored Value: The updateValue function allows for updating a stored value, ensuring that the new value is positive and different from the current stored value.
    Safe Division: The divide function safely performs division, ensuring the denominator is not zero and the numerator is exactly divisible by the denominator.

Key Features:

    Validation: Ensures valid input using require for conditions like positivity and non-equality.
    Error Handling: Uses assert for invariant checks and revert for precise error messaging when conditions aren't met.

## Getting Started

To use this contract, you will need a Solidity environment where you can deploy and interact with smart contracts. The most common tool is Remix, an online IDE for Solidity.
Prerequisites:

    Solidity 0.8.28 or a compatible version
    Access to Remix IDE (https://remix.ethereum.org)

### Executing the Program

    Open Remix IDE.
    Create a new file by clicking the "+" icon in the left sidebar and naming it ErrorHandlingContract.sol.
    Copy and paste the following contract code into the file:

```javascript
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
```

### Compiling and Deploying the Contract

    Compile the Contract:
        Click on the Solidity Compiler tab in Remix.
        Set the compiler version to 0.8.28 (or a compatible version).
        Click Compile ErrorHandlingContract.sol.

    Deploy the Contract:
        Go to the Deploy & Run Transactions tab.
        Select ErrorHandlingContract from the dropdown menu.
        Click Deploy.

    Once the contract is deployed, it will appear under Deployed Contracts on the Remix interface.

### Interacting with the Contract

After deployment, you can interact with the contract by using the provided functions:

    updateValue:
        To update the stored value, enter a new positive value (greater than 0) in the input box and click updateValue.
        The contract will check if the new value is positive and different from the current stored value.

    divide:
        To perform a division operation, enter the numerator and denominator values.
        The contract will ensure that the denominator is not zero and that the numerator is exactly divisible by the denominator.
        If the conditions are met, the result will be returned.

## Authors

Metacrafter Chris_Narumi.
## License

This project is licensed under the MIT License. See the LICENSE.md file for details.
