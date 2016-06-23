package expense

class LoginController {

    def login() {

    }

    def loginDetails() {
        println params
        def email = params.email
        def password = params.password

        def result = User.findByEmailAndPassword(email, password)
        println result

        if (result) {
            session.currentLogin = result

            render(view: "home", model: [current: session.currentLogin])
        }
        else
            render(view: "login", model: [invalid: result])
    }

    def home() {
        [current: session.currentLogin]
    }

}
