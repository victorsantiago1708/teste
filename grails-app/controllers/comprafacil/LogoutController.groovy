package comprafacil

import grails.plugin.springsecurity.SpringSecurityUtils
import org.springframework.security.web.RedirectStrategy

//import javax.servlet.http.HttpServletResponse

class LogoutController {

    /** Dependency injection for RedirectStrategy. */
    RedirectStrategy redirectStrategy

    /**
     * Index action. Redirects to the Spring security logout uri.
     */
    def index() {

//        if (!request.post && SpringSecurityUtils.getSecurityConfig().logout.postOnly) {
//            response.sendError HttpServletResponse.SC_METHOD_NOT_ALLOWED // 405
//            return
//        }

        // TODO put any pre-logout code here
        redirectStrategy.sendRedirect request, response, SpringSecurityUtils.securityConfig.logout.filterProcessesUrl // '/logoff'
        response.flushBuffer()
    }
}
