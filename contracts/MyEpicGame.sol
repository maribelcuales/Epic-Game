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
    // Loop through all the characters and save their values to the contract 
    // Data will be used later when the NFTs are minted 
    for (uint i = 0; i < characterNames.length; i += 1) {
      defaultCharacters.push(CharacterAttributes({
        characterIndex: i,
        name: characterNames[i],
        imageURI: characterImageURIs[i],
        hp: characterHp[i],
        maxHp: characterHp[i],
        attackDamage: characterAttackDmg[i]
      }));

      CharacterAttributes memory c = defaultCharacters[i];
      console.log("Done initializing %s w/ HP %s, img %s", c.name, c.hp, c.imageURI);
    }
  }
}
