// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "hardhat/console.sol";

contract NFT is ERC721URIStorage {

    uint256 public tokenCount;
    constructor() ERC721("DApp NFT", "DAPP") {}
    function mint(string memory _tokenURI) external returns(uint256){
        tokenCount ++;
        _safeMint(msg.sender, tokenCount);
        _setTokenURI(tokenCount, _tokenURI);
        return(tokenCount);
    }
}