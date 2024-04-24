// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PhotoNFT is ERC721URIStorage, Ownable {
    uint256 private _tokenIdCounter;

    constructor() ERC721("PhotoNFT", "PNFT") Ownable(msg.sender) {}

    function mintPNFT(
        address to,
        string memory tokenURI
    ) public onlyOwner returns (uint256) {
        _tokenIdCounter++;
        uint256 newTokenId = _tokenIdCounter;
        _mint(to, newTokenId);
        _setTokenURI(newTokenId, tokenURI);

        return newTokenId;
    }
}
