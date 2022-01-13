const main = async () => {
  const gameContractFactory = await hre.ethers.getContractFactory('MyEpicGame');
  const gameContract = await gameContractFactory.deploy(
    ["Inuyasha", "Sesshomaru", "Naraku"],   // Names 
    ["https://static.wikia.nocookie.net/inuyasha/images/b/b5/Inuyasha.png/revision/latest?cb=20151128185518", // Images
    "https://pbs.twimg.com/profile_images/1323023465826406404/tIEi3gy9_400x400.jpg", 
    "https://i.ytimg.com/vi/G2m-DEUeeYY/sddefault.jpg"],
    [300, 200, 100],  // HP values 
    [50, 50, 100]     // Attack damage values 
  );
  await gameContract.deployed();
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