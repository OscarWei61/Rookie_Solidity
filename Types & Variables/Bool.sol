// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyBoolean {
    
    bool public myBoolean1 = false;
    bool public myBoolean2 = true;
    
    // 可以使用反面表述:myVar = !myVar。
    // 也可以使用邏輯運算:&&, ||

}

// Solidity並不支援布林值的自動轉換，所以不可以在condition statement中(if-else, while...)，或賦值給bool type變數時使用1和0分別代表true和false。