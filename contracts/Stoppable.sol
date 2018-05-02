pragma solidity ^0.4.20;

import "./Owned.sol";

/**
 *Base for contracts that can stopped/resumed.
 */

 contract Stoppable is Owned {

    event LogSwitchStatus(bool switchStatus);

    bool public running;

    function Stoppable() public {
        running = true;
    }

    modifier onlyIfRunning {
        require(running);
        _;
    }

    function controlSwitch(bool _onOff) public onlyOwner {
        running = _onOff;

        emit LogSwitchStatus(running);
    }

 }
