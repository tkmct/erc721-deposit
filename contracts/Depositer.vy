# @dev Implement deposit ERC721

contract ERC721:
  def transferFrom(_from: address, _to: address, _tokenId: uint256): modifying
  def ownerOf(_tokenId: uint256) -> address: constant

# mapping of tokenType -> (tokenId -> tokenOwnerAddress)
nftMaps: public(map(address ,map(uint256, address)))

@public
def __init__():
  pass

@private
def processDeposit(
  _token: address,
  _tokenId: uint256,
  _depositer: address
):
  self.nftMaps[_token][_tokenId] = _depositer

@public
def deposit(
  _token: address,
  _tokenId: uint256
):
  _depositer: address = msg.sender
  assert ERC721(_token).ownerOf(_tokenId) == _depositer
  ERC721(_token).transferFrom(_depositer, self, _tokenId)

@public
@constant
def ownerOf(
  _token: address,
  _tokenId: uint256
) -> address:
  return self.nftMaps[_token][_tokenId]
