pragma solidity >=0.7.0 <0.9.0;

contract Firstcoin {

    address public minter; //nguoi tao coin
    mapping (address => uint) public balance;

    event sent(address from, address to, uint amount); // tao su kien chuyen tien from: N gui , to: N nhan, amount: so tien

    constructor () {
        minter = msg.sender; //nguoi da gui di cai lenh thuc thi do.  msg.sender(1 chuc nag da dc dinh nghia trong solidity) 
    }

    function mint(address receiver, uint amount) public { //gui tien
        require(msg.sender == minter); //yeu cau ban phai la minter moi thuc hien duoc chuc nang nay (tao ra coin, 1 luong coin)
        require(amount < 1e60);
        balance[receiver] += amount; //khi tao ra coin thi phai cong vao
    }
 
    function send(address receiver, uint amount) public { //chuyen tien
        require(amount <= balance[msg.sender], "Khong du tien de chuyen"); //so tien chuyen phai <= so tien hien co
        balance[msg.sender] -= amount; // tru tien nguoi chuyen
        balance[receiver] += amount; // cong tien cho nguoi nhan
        emit sent(msg.sender, receiver, amount);
    }
}