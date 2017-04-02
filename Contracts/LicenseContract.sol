pragma solidity ^0.4.10;
contract License {
    
    struct License {
    address owner;
    string name;
    uint numberOfUsers;
    }
    
    struct User{
        address user;
    }

    License[] public Licenses;
    mapping (uint => User[]) private licenseUsers;
    
    function addLicense(string licenseName, uint allowedUsers ) returns (uint licenseId)
    {
        Licenses.push(License(msg.sender,licenseName,allowedUsers));
    }
    
    modifier licenseOwnerOnly(uint licenseId) {
        if (msg.sender != Licenses[licenseId].owner) throw;
        _;
    }

    function addUserLicense(uint licenseId, address newUser) licenseOwnerOnly (licenseId) returns (bool success)
    {
        User[] u = licenseUsers[licenseId];
        License l = Licenses[licenseId];
        if (u.length < l.numberOfUsers)
        {
            u.push(User(newUser));
            return true;
        }
        else
        {
            return false;
        }
    }
    
    function UsedLicenses(uint licenseId) returns (uint numberOfLicensesUsed)
    {
        User[] u = licenseUsers[licenseId];
        return u.length;
    }
    
    function AvailableLicenses(string licenseName) returns (uint numberOfLicensesLeft)
    {
        uint numOfLicensedUsers;
        uint numOfUserLicenses;
        for (uint i = 0; i < Licenses.length; i++) {
            if (stringsEqual(licenseName,Licenses[i].name))
                numOfUserLicenses = Licenses[i].numberOfUsers;
                numOfLicensedUsers = licenseUsers[i].length;
                break;
        }
        if (numOfUserLicenses > 0)
            return numOfUserLicenses - numOfLicensedUsers;
        else
            throw;
    }
    
    function stringsEqual(string _a, string _b) internal returns (bool) {
		bytes memory a = bytes(_a);
		bytes memory b = bytes(_b);
		if (a.length != b.length)
			return false;
		for (uint i = 0; i < a.length; i ++)
			if (a[i] != b[i])
				return false;
		return true;
	}
}