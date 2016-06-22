package expense

class LoginController {

    def login() {

    }

    def loginDetails() {
        println params

        def result = User.createCriteria().list {
            and {
                eq("firstName", "${params.firstName}")
                eq("password", "${params.password}")
            }
            return User.list()
        }
        session.currentLogin = result
        redirect(view: "index")
    }


}
