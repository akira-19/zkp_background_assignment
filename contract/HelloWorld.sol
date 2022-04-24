// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/// @title A simple uint storage contract
contract HelloWorld {
    /// define state variable
    uint256 number;

    /// Store number.
    /// @param num the new value to store
    /// @dev stores uint in the state variable `number`
    function storeNumber(uint256 num) public {
        number = num;
    }

    /// Retrieve number.
    /// @dev views the state variable `number`
    function retrieveNumer() public view returns (uint256) {
        return number;
    }
}
