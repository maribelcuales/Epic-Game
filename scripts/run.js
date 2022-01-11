const main = async () => {
  // compile our contract and generate files needed under the artifacts directory
  const gameContractFactory = await hre.ethers.gameContractFactory('MyEpicGame');
  
  // hardhat creates a local Ethereum network then destroys it after completely running the script
  // it will be a fresh local blockchain each time the contract is ran    
  const gameContract = await gameContractFactory.deploy();
  
  // hardhat creates fake miners that lets our contracts be officially mined and deployed to our local blockchain 
  await gameContract.deployed();
  // this console log runs when we are deployed giving us also the address of the deployed contract 
  console.log("Contract deployed to:", gameContract.address);
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.log(error); 
    process.exit(1);
  }
}; 

runMain(); 