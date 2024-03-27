// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Constructor_example {
    // constructor 為合約在被創建時只會跑一次的函數
    // 可以用於初始化或宣告某些我們希望一開始就被執行的變數
    uint a;

    // Example 1
    constructor () public {
        a = 0;
    }

    // Rules :
    // 一個Contract只能有一個建構子
    // 可視性可以為public or internal
    // 如果一個Contract被標示為internal，則其為Abstract Constract
    // contructor也可以像普通函數一樣有參數

    // Example 2
    constructor (uint new_a) public {
        a = new_a;
    }
}
      