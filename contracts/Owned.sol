pragma solidity ^0.4.20;

/**
 *Base for contracts that specify access rules to owners contract owners.
 */

contract Owned {

    event LogNewOwner(address oldOwner, address newOwner);
    event LogDeleteOwner(address deleteOwner);

    address public owner;

    modifier onlyOwner {
        require(owner == msg.sender);
        _;
    }

    function Owned() public {
        owner = msg.sender;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        require(_newOwner != 0);
        emit LogNewOwner(owner, _newOwner);

        owner = _newOwner;
    }

    function deleteOwner(address _deleteOwner) public onlyOwner {
        emit LogDeleteOwner(_deleteOwner);

        owner = 0x0;
    }

}
