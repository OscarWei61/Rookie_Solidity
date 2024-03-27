// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract While_example {
    uint [] public numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14];

    function countEvenNumbers() public view returns (uint) {
        uint count = 0;
        uint i = 0;

        while(i < numbers.length){
            if (isEvenNumber(numbers[i])) {
                count ++;
            }
            i ++;
        }
        return count;
    }

    function isEvenNumber(uint _number) private pure returns (bool) {
        return (_number % 2 == 0 ? true : false);
    }

}
      