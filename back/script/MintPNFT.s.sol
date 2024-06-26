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
            // memory tokenURI = "https://bafybeickdk6lqkpi3ehcpmaxweoopay7issorcjioksro4dknbx47m2fgm.ipfs.nftstorage.link/1.json";
            memory tokenURI = "ipfs://bafybeickdk6lqkpi3ehcpmaxweoopay7issorcjioksro4dknbx47m2fgm/1.json";
        string memory photographer = "Volkan Guneri";
        string memory city = "Athenes";
        string memory vieW = "Acropolis from rocks";
        uint256 year = 2024;

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
