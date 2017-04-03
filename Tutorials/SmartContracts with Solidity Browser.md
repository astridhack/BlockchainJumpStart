## Working with Smart Contracts

Once you have an Ethereum account set up with some Ether, you can try deploying and interacting with smart contracts on your private blockchain. For this you can use the Browser Solidity project, which integrates with Metamask and allows you to write, deploy and use smart contracts directly in your browser.


### Open Solidity browser and create a Smart Contract
```
In Chrome navigate to https://ethereum.github.io/browser-solidity/ and in the upper left click "New File"
```

 ![](/Images/New%20File.png)
 
A sample contract can be found in the "LicenseContract.sol" file [here](../Contracts/LicenseContract.sol) The License contract is a simple contract that just stores some state on the blockchain and does some basic validation on whom is allowed to assign users to a license. The owner of the license is the person that adds a new license to contract, as seen in the AddLicense function.
Copy and paste this code into the Solidity editor, and on the right, you should see the compiled bytecode of your contract, as well as buttons to create the contract on the blockchain or attach to an existing already deployed contract.

![](/Images/Deploy%20contract.png)


### Deploy the Smart Contract
```
To deploy the contract to the blockchain Click on the red [Create] button under the "License" contract 
section on the far right.
```
Metamask will ask you to confirm the transaction - deploying a new contract to the blockchain costs gas, which is payable in Ether from your account:

![](/Images/Accept%20transaction.png)

```
Accept the transaction.
``` 

On the right, you will see the message "Waiting for transaction to be mined..." Once the contract creation transaction is mined and included in your blockchain, the interface will show you the address of your new contract and allow you to interact with it.

```
Copy the contract address and save this on your computer for example in a text file using notepad.
``` 


### Use the Smart Contract
![](/Images/Add%20license.png)

You can add a license by sending a transaction to the contract function. To add a license named “JumpStart” with 20 user licenses
```
enter the data in the textbox and click the red [AddLicense] button. Accept the transaction from Metamask
``` 
After waiting for the transaction to be mined, you will get back data on the transaction. To view the created license 
```
enter a license id in the textbox (0 for the first license) and click on the blue “Licenses" button
```
The display show the license information:

<img src="/Images/check%20licenses.png" width="600" />

The "licenseOwnerOnly" modifier is designed to ensure that only the owner account will be able to change the user licenses using the "AddUserLicense" function. 
```
Switch your active Ethereum account in Metamask to a different account than the one used to create the transaction. 
Ensure that this account has some Ether so we can send transactions from it.
```

<img src="/Images/switch%20account.png" height="400" />
 
Now add a new user license. The address must be a valid account id, you can copy the account id from MetaMask.
```
In the addUserLicense enter the data in the textbox and click the red [addUserLicense] button.
```

<img src="/Images/addUserLicense.png" width="600" />

>This will result in an error because the Account used to send the transaction is not the owner of the License.
In MetaMask switch your account back. 
```
Click the red [AddUserLicense] button again. Accept the transaction in MetaMask.
```
This time the transaction is allowed and will be mined. You can check this by using the UsedLicenses or AvailableLicenses functions.

<img src="/Images/Available%20licenses.png" width="400" />
<img src="/Images/Used%20licenses.png" width="400" />
