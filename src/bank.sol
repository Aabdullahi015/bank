// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract bank{
mapping(address => uint)public balances;
address public owner;

  function Deposit()public payable returns(uint) {
  balances[msg.sender] += msg.value;
  return balances[msg.sender];
}

  function Withdraw(uint _amount) public {
     require (balances[msg.sender]>= _amount);
    balances[msg.sender]-=_amount;
    payable(msg.sender).transfer(_amount);
     }
   
  function userDeposit() public view returns (uint) {
        return balances[msg.sender];
    } 

  function GetAccountbalance()public view returns(uint){
return(address(this).balance);
}
   }       
