import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mohru on 17.01.2017.
 */
public class UserDAO {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/web-database2";
    private static final String DB_USER = "Admin";
    private static final String DB_PASSWORD = "password2@";
    private static final String DB_DRIVER = "com.mysql.jdbc.Driver";

    {
        try {
            Class.forName(DB_DRIVER).newInstance();
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             Statement statement = connection.createStatement()) {

            try (ResultSet result = statement.executeQuery("SELECT * FROM users")) {
                while (result.next()) {
                    User user = new User(result.getInt(1), result.getString(2), result.getString(3));

                    users.add(user);
                }
            }

            return users;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }

    public void insertUser(User user) {

        String query = "INSERT INTO users (name, surname) values (?, ?)";

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setString(1, user.getName());
            statement.setString(2, user.getSurname());

            statement.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
