//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/RoyaltyNFT.sol";

contract RoyaltyNFTTest is Test {
    RoyaltyNFT nft;
    address user = address(1);

    function setUp() public {
        nft = new RoyaltyNFT("ipfs://test/");
    }
    function testMintNFT() public {
        nft.mint(user);
        assertEq(nft.ownerOf(1), user);
    }
    function testOnlyOwnerCanMint() public {
        vm.prank(user);
        vm.expectRevert();
        nft.mint(user);
    }
}