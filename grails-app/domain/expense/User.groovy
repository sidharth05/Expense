package expense

class User {

    String firstName
    String lastName
    String email
    String password

    static constraints = {
        email unique: true
    }
}
