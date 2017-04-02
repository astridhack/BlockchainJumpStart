# Blockchain JumpStart

This is a tutorial for the Blockchain JumpStart. It uses an Ethereum private blockchain network deployed on Azure.

## The JumpStart Azure Ethereum Enterprise Consortium Network
You can get a high-level overview of the topology deployed by reviewing the Ethereum Node Status.
Navigate to http://jumpstartblockchain.westeurope.cloudapp.azure.com/ This page shows all node hostnames and the participant to which the node belongs. It also displays node connectivity with the peer count. Peer count is the minimum of the number of mining nodes in the network.

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
