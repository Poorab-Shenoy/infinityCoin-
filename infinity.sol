//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract infinity is ERC20 {
    address public owner;

    constructor() ERC20("infinity", "IFY") {
        _mint(msg.sender, 10000);
        owner = msg.sender;
    }

    function mint(address to, uint amt) external {
        require(owner == msg.sender, "only owner can send coin");
        _mint(to, amt);
    }

    function burn(uint amt) external {
        _burn(msg.sender, amt);
    }
}
