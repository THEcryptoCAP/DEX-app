import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// REQUIREMENTS//
//1.Build an exchange that allows swapping ETH <> TOKEN
//2.DEX must charge a 1% fee on swaps
//3.When user adds liquidity, they must be given an LP Token that represents their share of the pool
//4.LP must be able to burn their LP tokens to receive back ETH and TOKEN

contract Exchange is ERC20 {
    // Future code goes here

    address public tokenAddress;
    //Exchange is inheriting ERC20, because our exchange itself is an ERC-20 contract
    // as it is responsible for minting and issuing LP Tokens
   constructor(address token) ERC20("ETH TOKEN LP Token", "lpETHTOKEN") {
    require(token != address(0), "Token address passed is a null address");
    tokenAddress = token;
  }
}
