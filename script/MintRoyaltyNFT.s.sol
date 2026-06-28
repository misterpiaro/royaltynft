//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/RoyaltyNFT.sol";

contract MintRoyaltyNFT is Script {
    function run() external {
        vm.startBroadcast();
        RoyaltyNFT nft = RoyaltyNFT(0xb010f2C3DCe99E2af9caDb0Ca6009DA5210B6a84);
        nft.mint(0xb010f2C3DCe99E2af9caDb0Ca6009DA5210B6a84);
        vm.stopBroadcast();
    }
}