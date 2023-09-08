package cac.backend.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

// cuando lo hagas en serio tiene que proveer métodos necesarios para el CRUD, incluso alguno como de ordenamiento.
public interface Modelo {

    //Todos los métodos abstractos de una interface son públicos por defecto.
    /**
     * Devuelve una lista de oradores existentes
     * @return
     */
   public List<Orador> getOradores();

    /**
     * Retorna un orador por ID
     * @param id él id del orador a retornar
     * @return El orador encontrado por ID o null si no existe
     */
   public Orador getOrador(int id);

    /**
     * Agrega un orador al modelo
     * @param orador El orador a agregar
     * @return La cantidad de registros modificados
     */
   public int addOrador(Orador orador);

    /**
     * Modifica un orador del modelo
     * @param orador El orador que contiene los datos para modificar
     * @return La cantidad de registros modificados
     */
   public int updateOrador(Orador orador);

    /**
     * Borra un orador por ID
     * @param id él id del orador a borrar
     * @return La cantidad de registros modificados
     */
   public int removeOrador(int id);
}
