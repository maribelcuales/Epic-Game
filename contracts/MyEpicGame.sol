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

  // Create array to hold the default data of the characters 
  // This is helpful as we mint more new characters 
  // Array will display characters' HP, Attack, etc.  
  CharacterAttributes[] defaultCharacters;

  // Data passed in to the contract when it is created initializing the characters
  // Pass these values in from run.js 
  constructor(
    string[] memory characterNames,
    string[] memory characterImageURIs,
    uint[] memory characterHp,
    uint[] memory characterAttackDmg
  ) 
  {
    console.log("LET THE EPIC GAMES BEGIN!"); 
  }
}
