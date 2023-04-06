pragma solidity >=0.7.0 <0.9.0;

contract Game{

    // uint public countPlayer = 0;

    // Player[] public players; // Array list

    // struct Player{
    //     string fullname;
    //     uint age;
    //     string sex;
    // }

    // function addPlayer(string memory fullname, uint age, string memory sex) public{
    //     players.push(Player(fullname, age, sex)); //truyen du lieu tu Player vao players
    //     countPlayer += 1;
    // }
    uint public countPlayer = 0;
    mapping(address => Player) public players;
    enum Level {beginner, Inter, Advande} // chi lay dc 1 DL
    struct Player{
        address addressPlayer;
        string fullname;
        Level myLevel;
        uint age;
        string sex;
    }

    function addPlater(string memory fullname, uint age, string memory sex) public{
        players[msg.sender] = Player(msg.sender, fullname, Level.Inter, age, sex);
        countPlayer += 1;
    }

    function getPlayer(address addressPlayer) public returns (Level){
        return players[addressPlayer].myLevel;
    }

}
