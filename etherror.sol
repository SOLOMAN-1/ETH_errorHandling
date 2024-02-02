// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Error {
    function testRequire(uint _num) public pure returns (string memory) {
        // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_num%2 == 0, "Number must be even");
        return "It is even number";
    }

    function testRevert(uint _num) public pure returns (string memory){
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_num%2 != 0) {
            revert("Number must be even");
        }
        return "Number is even";
    }

    uint public num=8;

    function testAssert() public view returns (string memory) {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that age is always greater than or equal to zer0
        // since it is impossible to update the value of num
        assert(num%2==0);
        return "Number is even";
    }

    
}
