/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sss;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class action {
    
    public ResultSet act(String qry) throws SQLException{
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        data d=new data();
        con=d.dataset();
        pst=con.prepareStatement(qry);
        rs=pst.executeQuery();
        return rs;
        
    }
     
    public int insert(String qry)throws SQLException{
        Connection con;
        Statement st;
        data db=new data();
        con=db.dataset();
        String sql=qry;
        st=con.createStatement();
        int i=st.executeUpdate(sql);
        return i;
    }
}
