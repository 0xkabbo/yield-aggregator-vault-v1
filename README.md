# Yield Aggregator Vault (ERC-4626)

This repository features a professional-grade Yield Aggregator. It utilizes the **ERC-4626** standard, the gold standard for yield-bearing vaults, ensuring that your vault shares are compatible with the broader DeFi ecosystem (like providing liquidity on Uniswap or using shares as collateral).



## Features
* **ERC-4626 Compliant**: Standardized API for depositing, withdrawing, and calculating yields.
* **Strategy Pattern**: Decoupled logic for lending assets to protocols like Aave, Compound, or Spark.
* **Efficient Rebalancing**: Built-in functions to shift liquidity based on interest rate fluctuations.

## How it Works
1. Users deposit `Underlying Assets` (e.g., USDC).
2. The vault mints `Vault Shares` representing their portion of the pool.
3. The `Vault` deploys assets into high-yield strategies.
4. As interest accrues, the value of each share increases relative to the underlying asset.

## Setup
1. `npm install`
2. Compile contracts: `npx hardhat compile`
3. Deploy: `npx hardhat run deploy.js`
