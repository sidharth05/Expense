package expense

class LoginController {

    def login() {

    }

    def loginDetails() {
        println params
        def email = params.email
        def password = params.password

        def result = User.findByEmailAndPassword(email, password)

        if (result) {
            session.currentLogin = result
        }
        render(view: "home", model: [current: session.currentLogin])
    }

    def home() {

    }

}
