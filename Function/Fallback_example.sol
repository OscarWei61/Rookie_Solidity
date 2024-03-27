// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;
    
contract Fallback_Function_example {
    mapping(address => uint) public balanceReceived;
    address payable owner;

    constructor() public {
        owner = payable(msg.sender);
    }

    function getOwner () public view returns(address){
        return owner;
    }

    function destoryContract() public {
        require(msg.sender == owner, "You are not the owner");
        selfdestruct(owner);
    }

    function receiveMoney() public payable {
        assert(balanceReceived[msg.sender] + msg.value >= balanceReceived[msg.sender]);
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        require(balanceReceived[msg.sender] >= _amount, "You don't have enough ether");
        assert(balanceReceived[msg.sender] >= balanceReceived[msg.sender] - _amount);
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }

    fallback() external payable {
        receiveMoney();
    }
} 