// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Function_Overloading_example {
    // 在同一個作用域中我們可以對同樣 (名稱、可視性、回傳值相同)的函數進行Function Overloading
    // Solidity會根據我們輸入參數數量或者是輸入參數型態不同自動尋找符合的函數執行
    function getSum(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    function getSum(uint a, uint b, uint c) public pure returns(uint) {
        return a + b + c;
    }

    function callSumWithTwoArugments() public pure returns(uint) {
        return getSum(1, 2);
    }

    function callSumWithThreeArugments() public pure returns(uint) {
        return getSum(1, 4, 3);
    }


}
      