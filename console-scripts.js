const erc721 = await ERC721.deployed()
const depositer = await Depositer.deployed()

let accounts
web3.eth.getAccounts(function(err,res) { accounts = res })

const minter = accounts[0]

erc721.mint(minter, 1)
erc721.mint(minter, 2)
erc721.mint(minter, 3)
erc721.mint(minter, 4)
erc721.mint(accounts[1], 5)
erc721.mint(accounts[1], 6)
erc721.mint(accounts[1], 7)
erc721.mint(accounts[1], 8)
erc721.mint(accounts[2], 9)
erc721.mint(accounts[2], 10)
erc721.mint(accounts[2], 11)
erc721.mint(accounts[2], 12)
