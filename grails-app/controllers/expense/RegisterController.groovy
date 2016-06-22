package expense

class RegisterController {

    def register() {

    }

    def save() {
        println params

        User myUser = new User(firstName: params.firstName, lastName: params.lastName, email: params.email, password:
                params.password)

        myUser.save()

        session.currentUser = myUser

        render(view: "list", model: [allUsers: session.currentUser])
    }

    def list() {

    }

}
