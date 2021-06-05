// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage {
    uint public counter;
    address private _creator;
    
    constructor() ERC721("FreshieldNFT", "FNFT") {
        counter = 0;
        // _creator = msg.sender;
    }
    
    function createNFTs(string memory tokenURI) public returns (uint) {
        // require(msg.sender == _creator, "You do not have premission!");
        uint tokenId = counter;
        
        _safeMint(msg.sender, tokenId);
        _setTokenURI(tokenId, tokenURI);
        
        counter ++;
        
        return tokenId;
    }
    
    function burn(uint256 tokenId) public {
        require(_isApprovedOrOwner(msg.sender, tokenId), "You are not the owner nor approved!");
        super._burn(tokenId);
    }
}