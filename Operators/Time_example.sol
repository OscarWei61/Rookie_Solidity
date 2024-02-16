// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract BlockTime {
  
  // 都是以秒數為單位來表示時間
  uint256 public second = 1 seconds;
  uint256 public minute = 1 minutes;
  uint256 public hour = 1 hours;
  uint256 public day = 1 days;

  // 訪問當前區塊時間
  function getBlockTime() public view returns (uint256){
    return block.timestamp;
  }

}
      