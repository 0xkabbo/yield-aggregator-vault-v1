// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract YieldVault is ERC4626, Ownable {
    constructor(
        IERC20 _asset,
        string memory _name,
        string memory _symbol
    ) ERC4626(_asset) ERC20(_name, _symbol) Ownable(msg.sender) {}

    /**
     * @dev Function to simulate yield generation for testing.
     * In a real production vault, this would be replaced by logic 
     * interacting with Aave, Compound, etc.
     */
    function harvest(uint256 yieldAmount) external onlyOwner {
        // This simulates interest being sent back to the vault
        // In reality, the strategy would call this.
        SafeERC20.safeTransferFrom(IERC20(asset()), msg.sender, address(this), yieldAmount);
    }

    /**
     * @dev Overriding decimals to match underlying asset
     */
    function decimals() public view virtual override(ERC4626, ERC20) returns (uint8) {
        return ERC20(asset()).decimals();
    }
}
