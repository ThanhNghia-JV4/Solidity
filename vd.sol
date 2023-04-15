pragma solidity >=0.7.0 <0.9.0;

contract Event{
    // khai bao su kiến
    event IntegersAdded(uint x, uint y, uint result);

    function add(uint _x, uint _y) public returns (uint) {
    uint result = _x + _y;
    // kich hoat su kien cho ung dung dapp biet ham nay dang duoc chay
    emit IntegersAdded(_x, _y, result);
    return result;
    }
//code JS bat su kien
//     YourContract.IntegersAdded(function(error, result) {
//   // do something with result
//     })

    // Vi du: Trong mot app tai chinh. Ta lưu tru so du cua mot diachi dang uint
    mapping (address => uint) public accountBalance;
    // Hoac anh xa usernames voi userId
    mapping (uint => string) userIdToName;                                                  

}
//ke thua 
contract Doge {
  function catchphrase() public returns (string memory) {
    return "So Wow CryptoDoge";
  }
}

contract BabyDoge is Doge {
  function anotherCatchphrase() public returns (string memory) {
    return "Such Moon BabyDoge";
  }
}

//chi la vi du 