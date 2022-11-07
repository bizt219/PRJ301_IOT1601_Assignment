/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

/**
 *
 * @author binhp
 */
public class ViewDBContext extends DBContext<Student> {

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student get(int id) {
        try {
            String sql = "SELECT s.stdid, s.stdname, a.present, ses.sesid, g.gname \n"
                    + "FROM Student s INNER JOIN Attandance a \n"
                    + "ON s.stdid = a.stdid INNER JOIN [Session] ses \n"
                    + "ON a.sesid = ses.sesid INNER JOIN [Group] g \n"
                    + "ON ses.gid = g.gid\n"
                    + "WHERE s.stdid = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            Student s = null;
            Group g = null;
            while (rs.next()) {
                if (s == null) {

                    s = new Student();
                    s.setId(rs.getInt("stdid"));
                    s.setName(rs.getString("stdname"));

                    g = new Group();
                    g.setName(rs.getString("gname"));

                }
                Attendance atts = new Attendance();
                atts.setPresent(rs.getBoolean("present"));
                Session ses = new Session();
                ses.setId(rs.getInt("sesid"));
                g.getSes().add(ses);
                s.getGroups().add(g);
            }
            return s;
        } catch (SQLException ex) {
            Logger.getLogger(ViewDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<Student> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
