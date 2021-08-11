pragma solidity ^0.5.11;

contract MappingExample {
         mapping(address => uint) public balances;   //address is key type that is binded to the retrun type 'uint'. Notice that balance input will be of address key type
             
                 function update(uint newBalance) public { //CREATE/UPDATE. this one will take input of type number
                          balances[msg.sender] = newBalance; //adds a new mapping if not present //Updates the new value if entry already present
                          } 
                 function increaseBalance(uint _increaseBy) public {   //input type will be of some kind of number .notice this is calling the func below: 'balanceOf'
                          update(balanceOf(msg.sender) + _increaseBy);  //increases balance by _increaseBy numbers
                          }       
                 function balanceOf(address _user) public view returns (uint) {   //GET VALUES because of 'returns'
                          return balances[_user];      //gets the entry from mapping    
                          }  
          }
          
//The contract above shows how to create, update, and get values from a mapping
// Mapping is for storign collection of data, kinda like an array. In Solidity you cannot iterate througha mapping(unless u do extra code). It is used for fast lookups. 
// In soldiity a getter is a func that returns a value. 
//so in this contract it looks like the address/person/msg.sender is bascially paying himself a balance lol