// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract BlogDatabase is Ownable {
  string name;
  string description;
  string created;
  address owner;
  string helpfile_beginner;
  string helpfile_advanced;
  string[] articles;
}