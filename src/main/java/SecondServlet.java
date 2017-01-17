import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Mohru on 10.01.2017.
 */
@WebServlet(name = "SecondServlet")
public class SecondServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String surname = request.getParameter("surname");

        if (name != null)
            System.out.println(name);

        if (surname != null)
            System.out.println(surname);

        UserDAO userDao = new UserDAO();
        userDao.insertUser(new User(name, surname));

        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = new User("Piotr", "Nowak");

        request.setAttribute("user", user);

        /*List<User> users = new ArrayList<>();

        users.add(new User("Jan", "Kowalski"));
        users.add(new User("Jan1", "Kowalski1"));
        users.add(new User("Jan2", "Kowalski2"));
        users.add(new User("Jan3", "Kowalski3"));
        users.add(new User("Jan4", "Kowalski4"));*/

        UserDAO userDAO = new UserDAO();
        List<User> users = userDAO.getAllUsers();

        System.out.println(users.size());

        request.setAttribute("users", users);

        request.getRequestDispatcher("second.jsp").forward(request, response);
    }
}
