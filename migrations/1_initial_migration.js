var Migrations = artifacts.require("./Migrations.sol");
var Historywall = artifacts.require("./Historywall.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Historywall);
};
