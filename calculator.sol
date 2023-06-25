pragma solidity ^0.5.0;

contract Calculator {
    function execute(int a, int b, string memory operand) public pure returns (int) {
        if (keccak256(bytes(operand)) == keccak256(bytes("+"))){
            return a + b;
        }
        if (keccak256(bytes(operand)) == keccak256(bytes("-"))){
            return a - b;
        }
        if (keccak256(bytes(operand)) == keccak256(bytes("*"))){
            return a * b;
        }
        if (keccak256(bytes(operand)) == keccak256(bytes("/"))){
            if (b == 0){
                return 0;
            }
            return a / b;
        }
        return 0;
    }
}
