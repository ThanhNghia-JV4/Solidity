pragma solidity >=0.7.0 <0.9.0; //Khai bao trinh bien dich
// pragma solidity ^0.8.18;
contract firstContract{
    uint saveData; //mot so nguyen ko am

    function set(uint x) public {  // nhap vao thi ko return
        saveData = x; // khi nhap x thi luu vao saveData
    }

    function get() public view returns (uint x){ //xuat du lieu, view: cho mn thay
        return saveData;
    }

}