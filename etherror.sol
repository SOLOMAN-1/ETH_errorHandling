// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Error {
    function testRequirewithsum(uint _num) public pure returns (string memory) {
        
        require(_sumOfDigits(_num) % 2 != 0, "Sum of digits must be odd");
        return "The sum is a odd number";
    }

    function testRevert(uint _num) public pure returns (string memory){
       
        if (_sumOfDigits(_num) % 2 == 0) {
            revert("Sum must be odd");
        }
        return "Sum is odd";
    }
    function _sumOfDigits(uint _num) internal pure returns (uint) {
        uint sum = 0;
        while (_num != 0) {
            sum += _num % 10;
            _num /= 10;
        }
        return sum;
    }

   uint public  Number = 121;

    function testAssert() public view returns (string memory) {
       
        assert(_sumOfDigits(Number) % 2 != 0);
        return "Sum is to  be odd";
    }

    
}
