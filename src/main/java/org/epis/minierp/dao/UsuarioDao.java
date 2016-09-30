package org.epis.minierp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.epis.minierp.model.Usuario;
import org.epis.minierp.util.DbUtil;

public class UsuarioDao
{
    private Connection connection;

    public UsuarioDao()
    {
        connection = DbUtil.getConnection();
    }

    public void addUser(Usuario usuario)
    {
        try
        {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into usuario(UsuNom,UsuApe,UsuCor,UsuCon) values (?, ?, ?, ?)");
            preparedStatement.setString(1, usuario.getFirstName());
            preparedStatement.setString(2, usuario.getLastName());
            preparedStatement.setString(3, usuario.getEmail());
            preparedStatement.setString(4, usuario.getPassword());
            preparedStatement.executeUpdate();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public void deleteUser(int userId)
    {
        try
        {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from usuario where UsuCod=?");
            preparedStatement.setInt(1, userId);
            preparedStatement.executeUpdate();

        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public void updateUser(Usuario user)
    {
        try
        {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update usuario set UsuNom=?, UsuApe=?, UsuCor=?, UsuCon=?" +
                            "where UsuCod=?");
            preparedStatement.setString(1, user.getFirstName());
            preparedStatement.setString(2, user.getLastName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPassword());
            preparedStatement.setInt(5, user.getUserid());
            preparedStatement.executeUpdate();
        } catch (SQLException e)
        {
        	e.printStackTrace();
        }
    }

    public List<Usuario> getAllUsers() {
        List<Usuario> users = new ArrayList<Usuario>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from usuario");
            while (rs.next()) {
            	Usuario user = new Usuario();
                user.setUserid(rs.getInt("UsuCod"));
                user.setFirstName(rs.getString("UsuNom"));
                user.setLastName(rs.getString("UsuApe"));
                user.setEmail(rs.getString("UsuCod"));
                user.setPassword(rs.getString("UsuCon"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }

    public Usuario getUserById(int userId)
    {
    	Usuario user = new Usuario();
        try
        {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from usuario where UsuCod=?");
            preparedStatement.setInt(1, userId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user.setUserid(rs.getInt("UsuCod"));
                user.setFirstName(rs.getString("UsuNom"));
                user.setLastName(rs.getString("UsuApe"));
                user.setEmail(rs.getString("UsuCor"));
                user.setPassword(rs.getString("UsuCon"));
            }
        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        return user;
    }
}
