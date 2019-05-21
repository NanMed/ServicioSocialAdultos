import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import objetos.Trabajador;
import javax.servlet.annotation.WebServlet; 
import java.util.Vector;

@WebServlet("/Login")
public class Login extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response){

		try{
            
            String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
            String pass = getServletContext().getInitParameter("pass");
            
            Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/"+base+"?useSSL=false&allowPublicKeyRetrieval=true";
            Connection con = DriverManager.getConnection(url,usuario,pass);

            String verifyRoll=request.getParameter("username");  

            int username = Integer.parseInt(request.getParameter("username"));
            
            String password = request.getParameter("password");            


            Statement stat = con.createStatement();

            String sql ="select * from usuario;";
            
            ResultSet res = stat.executeQuery(sql);


            Vector<Usuario> productos = new Vector<Usuario>();
            int checkCuenta;
            String nombre="";
            boolean checkLog = false;
            while(res.next()){
                
                if(res.getInt("cuenta")==username && res.getString("contrasenia").equals(password)){
                    nombre=res.getString("nombre");

                    checkLog=true;
                    break;
                }

            }

            stat.close();
            con.close();

            if(checkLog){
                request.setAttribute("response", nombre);
                request.setAttribute("response2", username);
                
            }
            if(checkLog){
                if(verifyRoll.charAt(0)== '1'){
                    
                    disp = getServletContext().getRequestDispatcher("/adminPass.jsp");
                }
                else if(verifyRoll.charAt(0)== '2'){
                    
                    disp = getServletContext().getRequestDispatcher("/usuarioPass.jsp");
                }
            }
            else{
                disp = getServletContext().getRequestDispatcher("/index.jsp");
            }


            if(disp!=null){
                disp.forward(request,response);
            }
		}
		catch(Exception e){
			try{
                e.printStackTrace();
            }
            catch(Exception e2){
                try{
                e.printStackTrace();
            }
            catch(Exception e3){
                e3.printStackTrace();
            }   
            }   
		}

	}

	

}
