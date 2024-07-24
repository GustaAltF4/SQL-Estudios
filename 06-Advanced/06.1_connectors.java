import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class yo {
    public static void main(String[] args) {
        String jdbcUrl = "jdbc:mysql://127.0.0.1:3306/hello_mysql";
       //jdbc:mysql://Hostname : Port/nombre de la base de datos o squema
        String user = "root";
        String password = "2015guscho12345";

        try {
            // Establecer la conexión a la base de datos
            Connection connection = DriverManager.getConnection(jdbcUrl, user, password);
            System.out.println("Conexión exitosa a la base de datos");

            // Crear una sentencia SQL
            String query = "SELECT * FROM users";
            Statement statement = connection.createStatement();

            // Ejecutar la consulta
            ResultSet resultSet = statement.executeQuery(query);

            // Imprimir los resultados
            while (resultSet.next()) {
                int id = resultSet.getInt("users_id");
                String name = resultSet.getString("name");
                String surname = resultSet.getString("surname");
                System.out.println("ID: " + id +" "+ name+" "+surname);
            }

            // Cerrar la conexión
            resultSet.close();
            statement.close();
            connection.close();
            System.out.println("Conexión cerrada");
        } catch (Exception e) {
            System.out.println("Error al conectarse a la base de datos: " + e.getMessage());
        }
    }
}
