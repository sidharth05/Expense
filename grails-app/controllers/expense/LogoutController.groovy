package expense

class LogoutController {

    def logout() {
        session.invalidate()
       redirect(controller: "login", action: "login")
    }
}
