// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

import {Script} from "forge-std/Script.sol";
import {PhotoNFT} from "../src/PhotoNFT.sol";

contract DeployPhotoNFT is Script {
    function run() external returns (PhotoNFT) {
        vm.startBroadcast();
        PhotoNFT photoNFT = new PhotoNFT();
        vm.stopBroadcast();
        return photoNFT;
    }
}
