// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; //version (^ or >= indicates any version upper than that will work if ^ not used than it will take the specified version)


contract SimpleStorage {
    // basic types : boolean , uint , int , address , bytes
      bool hasFavouriteNumber = false;
      uint FavouriteNumber = 88;
      //or uint256 (bytes)
      int favouritenumber = -88;
      string favouriteNUmberintext = "88";

      //we can also put all the lines in a single line !!

      address myAddress = 0xb466319D1A747aC6167a53ADd7C60526493205F6;

      bytes32 favouuritebytes32 = "sexyy";


      uint256 public luckynumber;  //it gets initialized to 0 if no value is assigned     //public: visible externally and internally (creates a getter function for storage/state variables)
      

      uint256[] listofluckynumbers;  // [6, 478,  90]
                                     // [0...1.....2]

      function store(uint256 _luckynumber) public {
        luckynumber = _luckynumber;
        retrieve();    // here it costs smthng around 50200 gas  but if we dont use this line it costs less than that 

       //we can deploy and store values too

      }  
 
          // view , pure 

      function retrieve() public view returns (uint256) {
        return luckynumber;
      }






      struct Person{
        uint256 myluckynumber;
        string Name;
      }

     Person public pattt = Person(7, "bad");

    //can also do this way 

    // Person public myFriend = Person({myluckynumber: 7, Name: "baddie"});
 

   // what if so many friends ?

     Person public pat = Person(74, "badie");
     Person public patie = Person(75, "badiee");
     Person public patiee = Person(75555, "badieee");
     Person public patieee = Person(7555, "badieeee");
   

   //this is not the way though 


   // dynamic array 
  Person[] public listofpeople; // []

  // static array 
  // ''Person[3] public listofpeople;'' // [] anysize upto 3 



  function addPerson(string memory _name, uint256 _myluckynumber) public {
    
    //Person memory newPerson = Person(_myluckynumber,_name);
    //listofpeople.push(newPerson);

    //or can do this way inshort 

    listofpeople.push(Person(_myluckynumber,_name));

  }





}





