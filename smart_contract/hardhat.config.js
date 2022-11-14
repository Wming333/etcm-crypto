// https://eth-goerli.g.alchemy.com/v2/U5bAXlAChhkUDmX8mu0iPmcOhGsGjfy0

require('@nomicfoundation/hardhat-chai-matchers');

module.exports = {
    solidity: '0.8.0',
    defaultNetwork: "goerli",
    networks: {
        goerli: {
            url: 'https://eth-goerli.g.alchemy.com/v2/U5bAXlAChhkUDmX8mu0iPmcOhGsGjfy0',
            accounts: ['d7bec49db08ddc67ac7d05e4a8245cdf67c694c360350216a1edb24e47b0c118']
        }
    }

}