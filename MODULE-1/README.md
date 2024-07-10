# Function and Error Handling Contract

## Introduction
The Function and Error Handling contract demonstrates the use of require(), assert(), and revert() statements in Solidity. It includes a function `HostelAdmission` that sets admission criteria based on age, gender, and fee payment status.

## Features
- **Function**: HostelAdmission(uint256 _age, bool _isMale, bool _isFeesPaid)
  - Validates age greater than 18 using `require()`.
  - Ensures male gender using `assert()`.
  - Checks fee payment status and reverts transaction if fees are not paid using `revert()`.

## Functions and Error Handling
### require(_age > 18, "Age must be greater than 18")
Ensures that the provided age is greater than 18. If not, the transaction reverts with the specified error message.

### assert(_isMale == true)
Verifies that the gender is male. If not, it asserts, indicating an internal consistency error if false.

### revert("You Passed the Test ")
Checks if You Passed the Test. If not, the transaction reverts with the message instructing the user to Give the Test Again.

## Usage
1. **Deployment**: Deploy the contract in a Solidity environment like Remix.
2. **Calling LicenseTest Function**: Provide parameters `_age`, `_isMale`, and `_test` to test the contract's behavior.
   - Example: `LicenseTest(20, true, true)`
   - Ensure to test different combinations to observe how require(), assert(), and revert() statements function.

## Considerations
- Ensure input values adhere to contract requirements to avoid transaction revertals.
- Use appropriate conditions for require(), assert(), and revert() based on your contract's logic and business rules.

## License
[MIT License](../../LICENSE)
