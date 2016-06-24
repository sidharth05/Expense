package expense

class ConfirmUserFilters {

    def filters = {
        all(controller:'edit', action:'*') {
            before = {
                if (!session.currentLogin) {
                    redirect(controller: "login", action: "login")
                    return false
                }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
