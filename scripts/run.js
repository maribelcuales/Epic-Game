const main = async () => {
  const gameContractFactory = await hre.ethers.gameContractFactory('MyEpicGame');
  const gameContract = await gameContractFactory.deploy();  
};