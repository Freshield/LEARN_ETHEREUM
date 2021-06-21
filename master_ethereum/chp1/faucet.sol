pragma solidity ^0.4.19;

// our first contract is a faucet!
contract Faucet {
    
    // give out ether to anyone who asks
    function withdraw(uint withdraw_amount) public {
        
        // limit withdrawal withdraw_amount
        require(withdraw_amount <= 100000000000000000);
        
        // send the amount to the address that requested it
        msg.sender.transfer(withdraw_amount);
    }
    
    // accept any incoming amount
    function () public payable {}
}
