// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract String_example {
    
    // 使用雙引號""或是單引號''來表示字串
    // 也可以使用反斜槓"\"來代表特殊字元
    string public data_moreGas = "test!";
    bytes32 public data_lessGas = "test!!!!";
    // 以bytes32儲存可以節省Gas
    
    function bytes32ToString(bytes32 _bytes32)
        public 
        pure returns (string memory) {
            uint8 i = 0;
            while(i < 32 && _bytes32[i] != 0){
                i++;
            }
            bytes memory bytesArray = new bytes(i);
            for (i = 0; i < 32 && _bytes32[i] != 0; i++){
                bytesArray[i] = _bytes32[i];
            }
            return string(bytesArray);
        }

}
      