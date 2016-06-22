package expense

class EditController {

    def edit() {

    }

    def update() {
            println "Received parameters to update: ${params}"
            User myUser = User.get(params.id)

            myUser.firstName = params.firstName
            myUser.lastName = params.lastName
            myUser.email = params.email

            myUser.save(flush: true)
            render(view: "list", model: [allUsers: myUser])
        }

        def delete () {
            User PersonInstance = User.get(params.id)

            PersonInstance.delete(flush: true)

            redirect(action: "list")
        }

        def list() {

        }
    }
