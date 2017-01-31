/**
 * Created by Mohru on 10.01.2017.
 */
public class User {

    private int id;
    private String name;
    private String surname;

    public User(String name, String surname) {
        this(0, name, surname);
    }

    public User(int id, String name, String surname) {
        this.id = id;
        this.name = name;
        this.surname = surname;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }
}
