//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
contract FakeNFT is ERC721
{
    uint256 constant price = 0.01 ether;
    uint256 tokenid = 1;
    constructor() ERC721("FAKE","FAKE")
    {

    }

    function mint() public payable
    {
        require(msg.value == price ,"Ether not sent correctly");
        _mint(msg.sender,tokenid);
        tokenid+=1;
    }


}