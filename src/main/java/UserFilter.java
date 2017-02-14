import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Mohru on 31.01.2017.
 */
@WebFilter(filterName = "UserFilter", urlPatterns = {"/filtered", "/filtered.jsp"})
public class UserFilter implements Filter {

    FilterConfig config;

    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        User user = (User) config.getServletContext().getAttribute("loggedUserApplication");


        User user2 = (User) ((HttpServletRequest) req).getSession().getAttribute("loggedUserSession");

        if (user2.getName().startsWith("name")) {
            chain.doFilter(req, resp);
        } else {
            ((HttpServletResponse) resp).sendRedirect("/second");
        }
    }

    public void init(FilterConfig config) throws ServletException {
        this.config = config;
    }

}
