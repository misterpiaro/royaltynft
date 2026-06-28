//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/RoyaltyNFT.sol";

contract DeployRoyaltyNFT is script {
    function run() external {
        vm.startBroadcast();
        new RoyaltyNFT("ipfs//bafkreify4vfo55jkbyg2sga2lzj6d57vtblreu7rpzpi7ezz5aufdhkyei");
        vm.stopBroadcast();
    }
}