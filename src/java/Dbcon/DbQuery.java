/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dbcon;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author HP
 */
public class DbQuery {
    Statement st,st1,st2;
    ResultSet rs,rs1,rs2;
    public DbQuery()
    {
        try {
            Dbcon db=new Dbcon();
            Connection con=db.getConnection();
            st=con.createStatement();
            st1=con.createStatement();
            st2=con.createStatement();
        } catch (Exception e) {
            System.err.println(e.toString());
        }
    }
    
    
    
    public int addStaff(String sname,String age,String gender,String hostel,String salary,String address,String designation,String phone,String email,String password ){
        int i=0;
        String lid="";
        try {
            st.executeUpdate("INSERT INTO login VALUES(NULL,'"+email+"','"+password+"','staff')");
            rs=st.executeQuery("SELECT MAX(login_id)FROM login");
            if(rs.next())
            {
               lid=rs.getString(1);
            }
            String str="INSERT INTO staff(login_id,staff_name,age,gender,hostel,salary,address,designation,phone,email)VALUES('"+lid+"','"+sname+"','"+age+"','"+gender+"','"+hostel+"','"+salary+"','"+address+"','"+designation+"','"+phone+"','"+email+"')";
            i=st1.executeUpdate(str);
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        
        return i;
    }
    public int addStudent(String studname,String age,String gender,String address,String fathname,String fathphone,String mothname,String mothphone,String guardname,String guardphone,String institute,String joindate,String roomid){
        int i=0;
        try {
            String str="INSERT INTO student(stud_name,age,gender,address,father_name,fath_phone,mother_name,moth_phone,guard_name,guard_phone,institute,join_date,room_id)VALUES('"+studname+"','"+age+"','"+gender+"','"+address+"','"+fathname+"','"+fathphone+"','"+mothname+"','"+mothphone+"','"+guardname+"','"+guardphone+"','"+institute+"','"+joindate+"','"+roomid+"')";
            i=st.executeUpdate(str);
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        
        return i;
    }
    public int addRoom(String roomno,String totbeds,String flr,String hostel){
        int i=0;
        try {
            String str="INSERT INTO room(room_no,tot_beds,flr,hostel)VALUES('"+roomno+"','"+totbeds+"','"+flr+"','"+hostel+"')";
            i=st.executeUpdate(str);
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        
        return i;
    }
    public ResultSet viewStaff()
    {
        try {
            String str="SELECT * FROM `staff`";
            rs=st.executeQuery(str);
            
        } catch (Exception e) {
            System.err.print(e.toString());
        }
        return rs;
    }
    
    public ResultSet viewRoom(String hostel)
    {
        try {
            String str="SELECT * FROM `room` WHERE hostel='"+hostel+"'";
            rs=st.executeQuery(str);
            
        } catch (Exception e) {
            System.err.print(e.toString());
        }
        return rs;
    }
    public ResultSet viewRoom()
    {
        try {
            String str="SELECT * FROM `room`";
            rs=st.executeQuery(str);
            
        } catch (Exception e) {
            System.err.print(e.toString());
        }
        return rs;
    }
    public ResultSet viewStudent(String hostel)
    {
        try {
            String str="SELECT student.*,room.* FROM student,room WHERE room.hostel='"+hostel+"' AND student.room_id=room.room_id ORDER BY room.room_no";
            rs=st.executeQuery(str);
            
        } catch (Exception e) {
            System.err.print(e.toString());
        }
        return rs;
    }
    public ResultSet login(String email,String password){
        try {
            String str="SELECT * FROM `login` WHERE user_name='"+email+"' AND PASSWORD='"+password+"'";
            rs=st.executeQuery(str);
        } catch (Exception e) {
            System.err.print(e.toString());
        }
        return rs;
    }  
    public int deleteStaff(String sid)
    {
        int i=0;
        try {
            i=st.executeUpdate("DELETE FROM staff WHERE staff_id='"+sid+"'");
            
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    public int deleteStudent(String stid)
    {
        int i=0;
        try {
            i=st.executeUpdate("DELETE FROM student WHERE student_id='"+stid+"'");
            
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    public int deleteRoom(String rid)
    {
        int i=0;
        try {
            i=st.executeUpdate("DELETE FROM room WHERE room_id='"+rid+"'");
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    public ResultSet viewOneStudent(String id)
    {
        try {
            String str="SELECT * FROM student WHERE student_id='"+id+"'";
            rs=st.executeQuery(str);
            
        } catch (Exception e) {
            System.err.print(e.toString());
        }
        return rs;
    }
    public int editStudent(String studname,String age,String gender,String address,String fathname,String fathphone,String mothname,String mothphone,String guardname,String guardphone,String institute,String joindate,String roomid,String stid )
    {
        int i=0;
        try {
            i=st.executeUpdate("UPDATE student SET stud_name='"+studname+"',age='"+age+"',gender='"+gender+"',address='"+address+"',father_name='"+fathname+"',fath_phone='"+fathphone+"',mother_name='"+mothname+"',moth_phone='"+mothphone+"',guard_name='"+guardname+"',guard_phone='"+guardphone+"',institute='"+institute+"',join_date='"+joindate+"',room_id='"+roomid+"' WHERE student_id='"+stid+"'");
            
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    public ResultSet viewOneStaff(String id)
    {
        try {
            String str="SELECT * FROM staff WHERE staff_id='"+id+"'";
            rs=st.executeQuery(str);
            
        } catch (Exception e) {
            System.err.print(e.toString());
        }
        return rs;
    }
    public int editStaff(String sname,String age,String gender,String hostel,String salary,String address,String designation,String phone,String email,String sid )
    {
        int i=0;
        try {
            i=st.executeUpdate("UPDATE staff SET staff_name='"+sname+"',age='"+age+"',gender='"+gender+"',hostel='"+hostel+"',salary='"+salary+"',address='"+address+"',designation='"+designation+"',phone='"+phone+"',email='"+email+"' WHERE staff_id='"+sid+"'");
            
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
     public ResultSet viewOneroom(String rid)
    {
        try {
            String str="SELECT * FROM room WHERE room_id='"+rid+"'";
            rs=st.executeQuery(str);
            
        } catch (Exception e) {
            System.err.print(e.toString());
        }
        return rs;
    }
    public int editRoom(String roomno,String totbeds,String flr,String hostel,String rid)
    {
        int i=0;
        try {
            i=st.executeUpdate("UPDATE room SET room_no='"+roomno+"',tot_beds='"+totbeds+"',flr='"+flr+"',hostel='"+hostel+"' WHERE room_id='"+rid+"'");
            
        } catch (Exception e) {
            System.err.println(e.toString());
        }
        return i;
    }
    public int addPhoto(String sid, String photo){
        int i=0;
        try {
            i=st.executeUpdate("UPDATE student SET photo='"+photo+"' WHERE student_id='"+sid+"'") ;
        }catch (Exception e){
            System.err.println(e.toString());
        }
        
        return i ;
    }
    
}