var ERC721 = artifacts.require("ERC721")
var Depositer = artifacts.require("Depositer")

module.exports = function(deployer) {
  deployer.deploy(ERC721);
  deployer.deploy(Depositer);
};
