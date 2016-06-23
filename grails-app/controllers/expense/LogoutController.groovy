package expense

class LogoutController {

    def index() {
        session.currentLogin = null
        session.invalidate()
        session.removeAttribute("currentLogin")
    }
}
