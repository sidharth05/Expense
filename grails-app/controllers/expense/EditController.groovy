package expense

class EditController {

    def beforeInterceptor = {
        if (!session.currentLogin) {
            redirect(controller: "login", action: "login")
            return false
        }
    }

    def edit() {
        return([current: session.currentLogin])
    }

    def update() {

        println "Received parameters to update: ${params}"
        User myUser = User.get(params.id)

        myUser.firstName = params.firstName
        myUser.lastName = params.lastName
        myUser.email = params.email
        myUser.password = params.password

        myUser.save(flush: true)
        render(view: "list", model: [current: myUser])
    }

    def delete() {

        println params

        User PersonInstance = User.get(params.id)

        PersonInstance.delete(flush: true)

        redirect(controller: "register", action: "register")
    }

    def list() {

    }
}
