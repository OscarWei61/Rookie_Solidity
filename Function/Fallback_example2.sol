// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;
    
    // Fallback function在以下的情況會被執行
    // 1.當一筆非由呼叫函式引起的交易被送往合約時
    // 2.當呼叫的函式不存在且Fallback函式存在時
    // 3.合約直接匯出ether但是receive()不存在時或msg.data非為空時

    // 觸發Fallback()還是receive()?
    //         接收ETH
    //            |
    //         msg.data是否為空?
    //          /       \
    //         是         否
    //         /           \
    //  receive()是否存在?  fallback()
    //        /       \
    //       是       否
    //   receive()     fallback()

    // Fallback有2300 gas限制
    // 其存在可以保證函數的花費控制在2300 gas以內
    // 測試時也需要確實的測試fallback function是否把執行花費控制住

    // Fallback function有以下特性
    // 可視性只能為 external
    // 當沒有和任何 payable function互動時，或沒有任何函式符合交易的 encoded data field，就會觸發

contract Fallback_Function_example2 {
    event Log(uint gas);

    // Fallback function 必須是 external 的
    fallback() external payable {
        emit Log(gasleft());
    }

    // 使用getBalance()來查看當前合約餘額
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendToFallback {
    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value} ("");
        require(sent, "Fail to send Ether");
    }
} 