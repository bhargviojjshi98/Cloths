<%@ page import="java.sql.*" %>
<%@ page import="cloths.*" %>

<%

Connection con;
PreparedStatement pst;
ResultSet rs ;
			
			
			try 
			{
				Class.forName("com.mysql.jdbc.Driver");
				
				DbCon conn=new DbCon();
				con=conn.getDbcon();
						
				System.out.println("Database connection established....");
				if(request.getParameter("oID")!=null)
				{
					pst=con.prepareStatement("update users set reseaved=1 Where ID=?");
					pst.setInt(1, Integer.parseInt(request.getParameter("oID")));				
					int i=pst.executeUpdate();
					System.out.println("result :"+pst);
				}
				
				
				
				response.sendRedirect("http://localhost:8080/cloths/admin/dashboard.jsp");
			
				
			}
			catch (SQLException sqle)
			{
				System.out.println(sqle);
			}
			
%>		
