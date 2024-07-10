// SPDX-License-Identifier: MIT

/*
Contract successfully uses require()
Contract successfully uses assert()
Contract successfully uses revert() statements
*/
pragma solidity ^0.8.20;

contract license {
    uint public age;
    bool public isMale;
    bool public test;

    function LicenseTest(uint256 _age, bool _isMale, bool _test) public {
        require(_age > 18, "Age must be greater than 18");
     
        assert(_isMale == true);
 
        if (_test == true) {
            revert("You Passed the test ");
        }

        age = _age;
        isMale = _isMale;
        test = _test;
    }
}
