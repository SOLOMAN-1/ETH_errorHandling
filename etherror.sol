// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Error {
    function testRequire(uint _num) public pure returns (string memory) {
      
        require(_num%2 == 0, "Number must be even");
        return "It is even number";
    }

    function testRevert(uint _num) public pure returns (string memory){
       
        if (_num%2 != 0) {
            revert("Number must be even");
        }
        return "Number is even";
    }

    uint public num=8;

    function testAssert() public view returns (string memory) {
       
        assert(num%2==0);
        return "Number is even";
    }

    
}
