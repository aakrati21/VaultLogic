const hre = require("hardhat");

async function main() {
  const VaultLogic = await hre.ethers.getContractFactory("VaultLogic");
  const vault = await VaultLogic.deploy();
  await vault.waitForDeployment();
  console.log("✅ VaultLogic deployed to:", await vault.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
