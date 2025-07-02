pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract SocialProofNFT is ERC721URIStorage, Ownable {
    uint256 public counter;
    mapping(bytes32=>bool) public used;
    constructor() ERC721("SocialProofNFT","SPNFT"){}
    function mint(string calldata uri, bytes32 tweetHash) external {
        require(!used[tweetHash]);
        used[tweetHash]=true;
        unchecked{counter++;}
        _safeMint(msg.sender,counter);
        _setTokenURI(counter,uri);
    }
}
