  # Blockchain JumpStart

This is a tutorial for the Blockchain JumpStart hands-on lab. It uses an Ethereum private blockchain network deployed on Azure. You can deploy your own Ethereum network using [this](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/microsoft-azure-blockchain.azure-blockchain-service) walkthrough. 

This hands-on lab consist of the following steps
1. Connect to the Azure Ethereum Enterprisee Consortium Network
2. Install MetaMask and create a blockchain account
3. Initiate your account with some Ether
4. Use the Solidity browser to create and deploy a Smart Contract
5. Transact using your deployed Smart Contract

More information

* __Watch the learning videos on Microsoft Virtual Academy__
There is a complete series of videos on how to build blockchain applications for Azure, see https://mva.microsoft.com/en-US/training-courses/microsoft-blockchain-as-a-service-17104. 

* __Deploy an Ethereum Consortium network on Azure__
Follow this tutorial https://github.com/Azure/azure-quickstart-templates/tree/master/ethereum-consortium-blockchain-network to easily create a Ethereum Consortium Network on Azure, use the Chrome add-in MetaMask for interacting with the Blockchain and doing your first transactions and to deploy your first Smart Contract to the Blockchain. To access the Ethereum network with the Geth console see the attached document.

* __Explore all the different BaaS offerings__
There are many different Blockchain solutions available on Azure here https://azure.microsoft.com/en-us/marketplace/?term=blockchain you can find all off them. You can easily deploy different Blockchain networks and tools on Azure Virtual Machines.

* __Learn the Solidity language and Code a Smart Contract__
To learn how you can program a Smart Contract and find the language constructs and commands read the documentation here https://solidity.readthedocs.io/ . 

* __Try out the Visual Studio Code extension__
There is an extension for Visual Studio Code, https://marketplace.visualstudio.com/items?itemName=JuanBlanco.solidity, that makes it easy to program Smart Contracts with syntax highlighting and to compile your Smart Contracts so you Have the bytecode and ABI needed to deploy the contract to the blockchain. You can download Visual Studio Code for Windows, Mac and Linux here https://code.visualstudio.com/download 

* __Build Dapps with Visual Studio__
If you use the Visual Studio IDE there is an extension, https://marketplace.visualstudio.com/search?term=blockchain&target=VS, that gives you some template top build a Smart Contract and a Dapp   that easily integrates with Strato Blockchain, https://azuremarketplace.microsoft.com/en-us/marketplace/apps/blockapps.strato-blockchain-lts-vm?tab=Overview, a private Ethereum network by BlockApps. The tutorials to gets started with BlockApps are here http://developers.blockapps.net/dashboard/quick-starts .

* __Examine the Blockchain as a Service roadmap__
If you want to know more about Microsoft’s roadmap for Blockchain as a Service read the Project Bletchley whitepaper, https://github.com/Azure/azure-blockchain-projects/blob/master/bletchley/bletchley-whitepaper.md, and to understand what Cryplets are you can read https://github.com/Azure/azure-blockchain-projects/blob/master/bletchley/CryptletsDeepDive.md


## The JumpStart Azure Ethereum Enterprise Consortium Network
You can get a high-level overview of the topology deployed by reviewing the Ethereum Node Status.
Navigate to http://jumpstartbloc  kchain.westeurope.cloudapp.azure.com/ This page shows all node hostnames and the participant to which the node belongs. It also displays node connectivity with the peer count. Peer count is the minimum of the number of mining nodes in the network.

![](Images/Admin%20page.png)

The node status is refreshed every 10 seconds. Reload the page via the browser or "Reload" button to update the view.

## Create your Ethereum Account
To create an account on the network you can use MetaMask, a Chrome extension that provides an “identity vault” and connection to an Ethereum network, public, test or custom. MetaMask formulates a transaction to register the account in the network. This transaction, like any other transaction, will go to one of the transaction nodes, and eventually be mined into a block.
```
To install the extension Open Chrome and go to Customize and control Google Chrome (Overflow button)
then select More Tools; Extensions
```
![](Images/Chrome%20Extensions%20menu.png)
```
Select [Get More Extensions] and search for MetaMask. Select[ADD TO CHROME] to install the extension
```
![](Images/Add%20MetaMask.png)

Once installed, open MetaMask to create a new vault. By default, the vault will be connected to the Ropsten Test Network with a new Account. You will need to change this to connect to the deployed private consortium network, specifically to the load balancer in front of the transaction nodes that has an RPC endpoint at port 8545. The address is http://jumpstartblockchain.westeurope.cloudapp.azure.com:8545
```
Select Custom RPC in the Network list and Enter the network address of the Consortium Network and click [Save].
```
![](Images/MetaMask%20add%20custom%20network.png)

Open MetaMask again, you will have to login again to your vault. Now you are connected to the Consortium network so you can create an account on this network. ``` Select Switch Accounts and then the [+] button as shown below ```
![](Images/MetaMask%20add%20account.png)
