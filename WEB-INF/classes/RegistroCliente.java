import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*; 
import objetos.Cliente;
import objetos.Cuenta;
import javax.servlet.annotation.WebServlet;

@WebServlet("/RegistroUsuario")
public class RegistroCliente extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response){

		try{

			String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
            String pass = getServletContext().getInitParameter("pass");


            int id = Integer.parseInt(request.getParameter("id"));
            
            int cuenta = Integer.parseInt(request.getParameter("usuario"));
            String contrasenia = request.getParameter("contrasenia");
            String nombre = request.getParameter("nombre");
            String genero = request.getParameter("genero");
            String nacimiento = request.getParameter("cumple");
            String correo = request.getParameter("correo");
            String telefono = request.getParameter("telefono");

			Usuario newCliente = new Usuario(id, cuenta, contrasenia, nombre, genero, nacimiento, correo, telefono);

			Cuenta newCuenta = new Cuenta(cuenta, contrasenia);
            
            Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/"+base+"?useSSL=false&allowPublicKeyRetrieval=true";
            Connection con = DriverManager.getConnection(url,usuario,pass);

			Statement stat = con.createStatement();

			String name = request.getParameter("nombre");
			int cuentas = Integer.parseInt(request.getParameter("usuario"));
            

			String sql2 = "INSERT INTO cuenta VALUES ("+ cuenta+" ,'" +contrasenia+ "');";
            String sql = "INSERT INTO usuario values("+id+", '" + cuenta + "', '" + contrasenia + "', "  + telefono + ", '"  + correo +   "');";
			stat.executeUpdate(sql2);
			stat.executeUpdate(sql);
			stat.close();
			con.close();

			RequestDispatcher disp = getServletContext().getRequestDispatcher("/RegistroUsuario.jsp");

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
