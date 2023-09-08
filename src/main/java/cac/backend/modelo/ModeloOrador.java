package cac.backend.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ModeloOrador implements Modelo{

    public static final String ADD_ORADOR_QUERY = "INSERT INTO oradores VALUES (null, ?, ?, ?)";
    public static final String GET_ALL_ORADORES_QUERY = "SELECT * FROM oradores;";
    public static final String GET_ORADOR_QUERY = "SELECT * FROM oradores WHERE id = ?";
    public static final String UPDATE_ORADOR_QUERY = "UPDATE oradores SET nombre=?, apellido=? WHERE id = ?";
    public static final String DELETE_ORADOR_QUERY = "DELETE FROM oradores WHERE id = ?";


    @Override
    public List<Orador> getOradores(){
        //acá se implementa la "magia" de MySQL..
        try(Connection con = Conexion.getConnection();
            PreparedStatement ps = con.prepareStatement(GET_ALL_ORADORES_QUERY);
            ResultSet rs = ps.executeQuery();){

            ArrayList<Orador> oradores = new ArrayList<>();
            while(rs.next()){
                oradores.add(rsToOrador(rs));
            }
            return oradores;
        }catch (SQLException ex){
            //patea la excepción al servlet.
            throw new RuntimeException("Error al leer orador de MySQL");
        }
    }

    @Override
    public Orador getOrador(int id) {
        try (Connection con = Conexion.getConnection();
            PreparedStatement ps = con.prepareStatement(GET_ORADOR_QUERY);){

            Orador ora = null;
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery();){
                rs.next();
                ora = rsToOrador(rs);
                return ora;
            }

        }catch (SQLException ex) {
            //patea la excepción al servlet.
            throw new RuntimeException("Error al leer orador con id "+ id +" de MySQL", ex);
        }
    }

    @Override
    public int addOrador(Orador orador) {

        try (Connection con = Conexion.getConnection();
            PreparedStatement ps = con.prepareStatement(ADD_ORADOR_QUERY);){

            int cantRegistrosAfectados;
            rellenarPreparedStatementWithDate(ps, orador);
            cantRegistrosAfectados = ps.executeUpdate();

            return cantRegistrosAfectados;
        } catch (SQLException ex) {
            throw new RuntimeException("Error al leer orador de MySQL", ex);
            //throw new RuntimeException(ex);
        }
    }

    @Override
    public int updateOrador(Orador orador) {
        try (Connection con = Conexion.getConnection();
             PreparedStatement ps = con.prepareStatement(UPDATE_ORADOR_QUERY);){

            int cantRegistrosAfectados;
            rellenarPreparedStatement(ps, orador);
            ps.setInt(3, orador.getId());
            cantRegistrosAfectados = ps.executeUpdate();

            return cantRegistrosAfectados;
        } catch (SQLException ex) {
            throw new RuntimeException("Error al leer orador de MySQL", ex);
            //throw new RuntimeException(e);
        }
    }

    @Override
    public int removeOrador(int id) {
        try( Connection con = Conexion.getConnection();
             PreparedStatement ps = con.prepareStatement(DELETE_ORADOR_QUERY);){

            int cantRegistrosAfectados;
            ps.setInt(1, id);
            cantRegistrosAfectados = ps.executeUpdate();
            return cantRegistrosAfectados;
        } catch (SQLException ex) {
            throw new RuntimeException("Error al borrar orador de MySQL", ex);
            //throw new RuntimeException(ex);
        }
    }

    private Orador rsToOrador(ResultSet rs) throws SQLException{
        int id =  rs.getInt(1);
        String nombre =  rs.getString(2);
        String apellido =  rs.getString(3);
        String fecha_alta =  rs.getString(4);
        return new Orador(id, nombre, apellido, fecha_alta);
    }

    private void rellenarPreparedStatementWithDate(PreparedStatement ps, Orador orador) throws SQLException {
        ps.setString(1, orador.getNombre());
        ps.setString(2, orador.getApellido());
        ps.setString(3, orador.getFechaDeAlta());
    }

    private void rellenarPreparedStatement(PreparedStatement ps, Orador orador) throws SQLException {
        ps.setString(1, orador.getNombre());
        ps.setString(2, orador.getApellido());
    }
}
