? Core Function 1: Deposit funds into vault
    function deposit() external payable {
        require(msg.value > 0, "Must deposit more than zero");
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    ? Core Function 3: Transfer ownership of vault
    function transferOwnership(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "Invalid address");
        emit OwnershipTransferred(owner, _newOwner);
        owner = _newOwner;
    }

    // Helper: Check user balance
    function getBalance(address _user) external view returns (uint256) {
        return balances[_user];
    }
}
// 
update
// 
