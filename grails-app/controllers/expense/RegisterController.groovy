package expense

class RegisterController {

    def register() {

    }

    def save() {
        println params

        User myUser = new User(firstName: params.firstName, lastName: params.lastName, email: params.email, password:
                params.password)

        myUser.save()



        session.currentLogin = myUser

        redirect(controller: "login", action: "home", params: [current: session.currentLogin])
    }

    def list() {

    }

}
