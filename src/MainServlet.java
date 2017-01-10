import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Mohru on 10.01.2017.
 */
@WebServlet(name = "MainServlet")
public class MainServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        try (PrintWriter writer = response.getWriter()) {

            writer.println("<!DOCTYPE html>");
            writer.println("<head>");
            writer.println("<title>");
            writer.println("tytul");
            writer.println("</title>");
            writer.println("</head>");
            writer.println("<body>");
            writer.println("Jakis tekst");
            writer.println("<a href=\" /second.jsp\" >second</a>");
            writer.println("</body>");
            writer.println("</html>");
            writer.flush();
        }

    }
}
