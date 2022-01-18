// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import '../extend/ERC20ex.sol';
import 'openzeppelin-solidity/contracts/utils/math/SafeMath.sol';
import 'openzeppelin-solidity/contracts/utils/Address.sol';
import './IGToken.sol';

contract Pomerium is IGToken, ERC20ex {
    using Address for address;
    using SafeMath for uint256;

    constructor() ERC20ex('Pomerium Token Test', 'PMRT', 18) {}

    function mint(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
    }

    function burn(uint256 amount) public virtual override {
        _burn(_msgSender(), amount);
    }
}
