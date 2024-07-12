import Array "mo:base/Array";

actor FlightDetails {

    // Define a record to hold user details
    type UserDetails = {
        username: Text;
        password: Text;
        token: Text;
        address: Text;
        flightTicketId: Text;
        destination: Text;
        nationality: Text;
    };

    // Define a database to store multiple user details
    type UserDatabase = [UserDetails];

    // Variable to store the user database
    var userDatabase: UserDatabase = [];

    // Function to take user details as input and add to the database
    public query func registerUser(
        username: Text,
        password: Text,
        token: Text,
        address: Text,
        flightTicketId: Text,
        destination: Text,
        nationality: Text
    ): async UserDatabase {
        // Create a new user details record
        let newUser: UserDetails = {
            username = username;
            password = password;
            token = token;
            address = address;
            flightTicketId = flightTicketId;
            destination = destination;
            nationality = nationality;
        };

        // Add the new user to the database
        userDatabase := Array.append<UserDetails>(userDatabase, [newUser]);

        return userDatabase;
    };

    // Function to get all registered user details
    public query func getUserDatabase(): async UserDatabase {
        return userDatabase;
    }
};