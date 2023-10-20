// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import "../src/Counter.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        uint privateKey = vm.envUint("PRIVATEKEY");
        address account = vm.addr(privateKey);
        vm.broadcast(privateKey);
        Counter counter = new Counter();
    }
}
