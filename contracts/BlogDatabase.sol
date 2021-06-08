// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract BlogDatabase is Ownable {
  // OpenZeppelin is providing _owner, as a private variable. It is possible to transfer ownership.
  string name;
  string description;
  string created;
  string helpfile_beginner;
  string helpfile_advanced;
  string[] articles;
  
  // Events
  event nameSet(string newValue);
  event descSet(string newValue);
  event createdSet(string newValue);
  event beginnerHelpSet(string newValue);
  event advancedHelpSet(string newValue);
  event newArticle(string articleCID);
  
  /** Setters */
  
  function setName(string memory newValue) public onlyOwner {
    name = newValue;
    emit nameSet(newValue);
  }
  
  function setDesc(string memory newValue) public onlyOwner {
    description = newValue;
    emit descSet(newValue);
  }
  
  function setCreated(string memory newValue) public onlyOwner {
    created = newValue;
    emit createdSet(newValue);
  }
  
  function setBeginnerHelp(string memory newValue) public onlyOwner {
    helpfile_beginner = newValue;
    emit beginnerHelpSet(newValue);
  }
  
  function setAdvancedHelp(string memory newValue) public onlyOwner {
    helpfile_advanced = newValue;
    emit advancedHelpSet(newValue);
  }
  
  /** Getters */
  
  function readName() public view returns (string memory) {
    return name;
  }
  
  function readDesc() public view returns (string memory) {
    return description;      
  }
  
  function readCreated() public view returns (string memory) {
    return created;
  }
  
  function readBeginnerHelp() public view returns (string memory) {
    return helpfile_beginner;
  }
  
  function readAdvancedHelp() public view returns (string memory) {
    return helpfile_advanced;
  }

  /** Article functions */
  
  function addNewArticle(string memory articleCID) public onlyOwner {
      articles.push(articleCID);
      emit newArticle(articleCID);
  }
  
  function getAllArticles() public view returns (string[] memory) {
      return articles;
  }
  
  function getSpecificArticle(uint8 which) public view returns(string memory) {
      return articles[which];
  }
  
}