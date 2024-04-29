// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

import {Script} from "forge-std/Script.sol";
import {PhotoNFT} from "../src/PhotoNFT.sol";

contract MintPNFT2 is Script {
    // contract to interact with
    PhotoNFT public photoNFT =
        PhotoNFT(0x2f4e9E46F60e7C005E4F2D586af033FaA85bf9CF);

    function run() external returns (uint256) {
        vm.startBroadcast();

        // NFT parameters to mint
        address to = msg.sender;
        string
            memory tokenURI = "ipfs://bafybeibo32mw4iurh3yfzahximedyy25rif3oczttsuedkkfy6bl23c6ei.ipfs.nftstorage.link/1.json";
        string memory photographer = "Volkan Guneri";
        string memory city = "Athenes";
        string memory vieW = "Acropolis from rocks";
        uint256 year = 2024;

        // NFT creation
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
