package expense

class EditController {

    def beforeInterceptor = {
        
    }

    def edit() {
        if (!session.currentLogin) {
            redirect(controller: "login", action: "login")
            return
        }
        return([current: session.currentLogin])
    }

    def update() {
        if (!session.currentLogin) {
            redirect(controller: "login", action: "login")
            return
        }

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
        if (!session.currentLogin) {
            redirect(controller: "login", action: "login")
            return
        }

        println params

        User PersonInstance = User.get(params.id)

        PersonInstance.delete(flush: true)

        redirect(controller: "register", action: "register")
    }

    def list() {
        if (!session.currentLogin) {
            redirect(controller: "login", action: "login")
            return
        }

    }
}
