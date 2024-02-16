// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Mathematical_functions {
    
    // addmod(uintx, uint y, uint k) returns (uint) : 以高精度(arbitrary precision)計算(x + y) % k
    function callAddMod() public pure returns(uint) {
        return addmod(4, 5, 3); // 0
    }

    // mulmod(uintx, uint y, uint k) returns (uint) : 以高精度(arbitrary precision)計算(x * y) % k
    function callMulMod() public pure returns(uint) {
        return mulmod(4, 5, 3); // 2
    }

}
      