// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

contract HookMe {

    constructor() {    }

    fallback() external {
        console.log("%x", uint32(bytes4(msg.data[:4])));
    }
}
