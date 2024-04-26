// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

import {Script} from "forge-std/Script.sol";
import {PhotoNFT} from "../src/PhotoNFT.sol";

contract MintPNFT is Script {
    function run() external returns (uint256) {
        vm.startBroadcast();
        PhotoNFT photoNFT = new PhotoNFT();
        vm.stopBroadcast();

        // Parameters of NFT to mint
        address to = msg.sender;
        string
            memory tokenURI = "ipfs://bafybeiaiy4f4z4ztc4j6it54t24ta52u6ksn7lxjeeexda3dsj7yhjc7a4";
        string memory photographer = "John Doe";
        string memory city = "New York";
        string memory vieW = "View on Manhatton";
        uint256 year = 2020;

        // NFT mint
        vm.startBroadcast();
        uint256 newTokenId = photoNFT.mintPNFT(
            to,
            tokenURI,
            photographer,
            city,
            vieW,
            year
        );
        vm.stopBroadcast();
        return newTokenId;
    }
}
