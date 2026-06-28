//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/RoyaltyNFT.sol";

contract DeployRoyaltyNFT is Script {
    function run() external {
        vm.startBroadcast();
        new RoyaltyNFT("ipfs://bafybeiapm67osrgzzxgc2mh6ctr6wppunug5zsj6cvrktgjzu4anyvvmim/1.json");
        vm.stopBroadcast();
    }
}
