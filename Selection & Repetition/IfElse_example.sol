// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract IfElse {
    
    function isEvenNumber(uint _number) public pure returns(bool) {
        if (_number % 2 == 0){
            return true;
        } else {
            return false;
        }
    }

    function multi_if_else(uint _number) public pure returns(bool){
        // 也是可以使用多個if else來進行多元判斷
        if (_number % 2 == 0) {
            return true;
        } else if (_number % 3 == 0) {
            return true;
        } else {
            return false;
        }
    }

    // 三元運算式
    function isEvenNumber_tri(uint _number) public pure returns(bool) {
        return (_number % 2 == 0 ? true : false);
    }
}
      