// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PhotoNFT is ERC721URIStorage, Ownable {
    uint256 private _tokenIdCounter;

    struct PhotoNFTs {
        string photographer;
        string city;
        string vieW;
        uint256 year;
    }

    PhotoNFTs[] photoNFTs;

    constructor() ERC721("PhotoNFT", "PNFT") Ownable(msg.sender) {}

    function mintPNFT(
        address to,
        string memory tokenURI,
        string memory _photographer,
        string memory _city,
        string memory _vieW,
        uint _year
    ) external onlyOwner returns (uint256) {
        _tokenIdCounter++;
        uint256 newTokenId = _tokenIdCounter;
        photoNFTs.push(PhotoNFTs(_photographer, _city, _vieW, _year));

        _mint(to, newTokenId);
        _setTokenURI(newTokenId, tokenURI);

        return newTokenId;
    }
}
