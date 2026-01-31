const hre = require("hardhat");

async function main() {
  const USDC_ADDRESS = "0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48"; // Mainnet USDC
  
  const YieldVault = await hre.ethers.getContractFactory("YieldVault");
  const vault = await YieldVault.deploy(USDC_ADDRESS, "Yield Bearing USDC", "yUSDC");

  await vault.waitForDeployment();
  console.log(`Yield Vault deployed to: ${await vault.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
