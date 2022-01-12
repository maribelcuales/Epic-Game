// SPDX-License-Identifier: UNLICENSED 

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract MyEpicGame {
  // Hold out character's attributes in a struct. 
  // Add character's attributes (ex. defense, attack, etc.) 
  struct CharacterAttributes {
    uint characterIndex;
    string name;
    string imageURI;
    uint hp;
    uint maxHp; 
    uint attackDamage; 
  }

  constructor() {
    console.log("LET THE EPIC GAMES BEGIN!"); 
  }
}