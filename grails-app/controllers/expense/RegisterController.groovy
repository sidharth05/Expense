package expense

class RegisterController {

    def register() {

    }

    def save() {
        println params

        User myUser = new User(firstName: params.firstName, lastName: params.lastName, email: params.email, password:
                params.password)

        myUser.save()

        render(view: "list", model: [allUsers: myUser])
    }

    def list() {
        [allUsers: User.list()]
    }
}
