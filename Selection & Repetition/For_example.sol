// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract For {
    uint[] numbers = [1,2,3,4,5,6,7,8,9,10,11,12];

    function countEvenNumbers () public view returns (uint) {
        uint count = 0;

        for (uint i = 0; i < numbers.length; i++){
            if (isEvenNumber(numbers[i])){
                count ++;
            }
        }
        return count;
    }

    // 如果此function只想在合約內部使用、不想被外部調用的話，可以將public改為internal
    function isEvenNumber(uint _number) internal view returns(bool){
        return (_number % 2 == 0 ? true : false);
    }
} 