package cac.backend.modelo;

import org.apache.commons.dbcp2.BasicDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;


public class Conexion {
    private static final String URL_DB = "jdbc:mysql://root:toor@localhost:3306/bdd_oradores_23054?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    //esto es un singleton:
    //(asegura que solamente haya una sola instancia de determinado objeto.)
    private static BasicDataSource dataSource;

    private Conexion() {
    }
    //pull de conexiones:
    private static DataSource getDataSource() {
        if (dataSource == null) {
            try {
                dataSource = new BasicDataSource();
                dataSource.setUrl(URL_DB);
                dataSource.setInitialSize(50);
            } catch (Exception ex) {
                throw new RuntimeException("Error de E/S al leer config de BBDD", ex);
            }
        }
        return dataSource;
    }
    //acá se devuelve la conexión autogestionada.
    public static Connection getConnection() throws SQLException {
        return getDataSource().getConnection();
    }
}