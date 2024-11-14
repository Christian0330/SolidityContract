# ErrorHandlerContract
## Description

The ErrorHandlerContract is a simple Solidity smart contract that demonstrates basic error handling techniques. It allows users to:

    Update a stored value if the new value is positive and different from the current value.
    Perform a division operation with checks to prevent division by zero and ensure the division yields an integer result.

This contract uses require and revert statements to handle input validation and error handling, making it an educational tool for learning Solidity basics and smart contract programming.

## Getting Started
Prerequisites:
To deploy and interact with this contract, you’ll need:

    Remix, an online IDE for developing Solidity contracts.
    A web3 provider such as MetaMask, if deploying on a live Ethereum network.

Installing Remix:
    Visit Remix in your browser.
    Create a new Solidity file (e.g., ErrorHandlerContract.sol).
    Copy and paste the contract code into this new file.

### Executing the Program

To run this program, follow these steps within Remix:

    Open Remix and create a new file named ErrorHandlerContract.sol.

    Copy the Contract Code: Paste the following Solidity code into the file:

```javascript
    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.28;

    contract ErrorHandlerContract {
        uint public storedValue;

        // Updates the stored value if the input is valid
        function updateValue(uint newValue) public {
            require(newValue > 0, "Input Error: Value must be positive.");
            require(newValue != storedValue, "Input Error: Value must differ from current stored value.");
            storedValue = newValue;
        }

        // Divides the numerator by the denominator if they meet conditions
        function safeDivide(uint numerator, uint denominator) public pure returns (uint) {
            require(denominator != 0, "Math Error: Division by zero is not allowed.");

            if (numerator % denominator != 0) {
                revert("Math Error: Numerator must be exactly divisible by the denominator.");
            }
            
            return numerator / denominator;
        }
    }
```

### Compiling and Deploying the Contract

    Compile the Contract:
        In Remix, click on the "Solidity Compiler" tab.
        Set the compiler version to 0.8.28.
        Click "Compile ErrorHandlerContract.sol" to compile the contract.

    Deploy the Contract:
        Go to the "Deploy & Run Transactions" tab.
        Select ErrorHandlerContract from the dropdown menu and click "Deploy".
        Once deployed, the contract functions will be available to interact with.

### Interacting with the Contract

The deployed contract provides two main functions:

    updateValue(uint newValue):
        This function updates the storedValue if the newValue is greater than zero and different from the current storedValue.
        Example Usage:
            Call updateValue with a positive integer, such as 10, to set the stored value.
        Error Handling:
            If newValue is not positive, the function will revert with "Input Error: Value must be positive."
            If newValue is the same as storedValue, it reverts with "Input Error: Value must differ from current stored value."

    safeDivide(uint numerator, uint denominator):
        This function divides numerator by denominator only if the denominator is not zero and the division yields an integer.
        Example Usage:
            Call safeDivide with values like 20 (numerator) and 5 (denominator) to get a result of 4.
        Error Handling:
            If denominator is zero, it reverts with "Math Error: Division by zero is not allowed."
            If numerator is not exactly divisible by denominator, it reverts with "Math Error: Numerator must be exactly divisible by the denominator."

## Authors

    Created by Metacrafter Chris_Narumi.

## License

This project is licensed under the MIT License. See the LICENSE.md file for details.
