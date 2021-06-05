<%@include file="../header.jsp"%>
<%@ page import="java.sql.*" %>
<%@ page import="cloths.*" %>
<div style="height: 600px">
<div class="container">
  <div class="row">
<%


			Connection con;
			PreparedStatement pst;
			ResultSet rs;
			
			
			try 
			{
				DbCon conn=new DbCon();
				con=conn.getDbcon();
						
				System.out.println("Database connection established....");
				pst=con.prepareStatement(" select * from users where reseaved=0");
			

			System.out.println("result :"+pst);
			rs=pst.executeQuery();
			
%>	
    <div class="col-sm">
      <br>
      <h2>Cloths Doner Request</h2>
     
      <br>
      <%
      while(rs.next())
		{
    	  %>
    	 <tr>
      <th scope="row"><%= rs.getString("Mobile").toUpperCase() %></th> <br>
      <td><%= rs.getString("Email").toUpperCase() %></td> <br>
      <td><%= rs.getString("Name").toUpperCase() %></td> <br>
      <td><%= rs.getString("Address").toUpperCase() %></td> <br>
      <td><%= rs.getString("Quantity").toUpperCase() %></td> <br>
      <td><%= rs.getString("donatedate").toUpperCase() %></td>
      <td> 
    	 <a href="http://localhost:8080/cloths/admin/process.jsp?oID=<%= rs.getString("ID") %>" class= "btn btn-primary" >Approve</a>
    	     	  <hr>
    	  <%
		}
		
      %>
    </div>
    
    <%
    }catch(Exception ex)
		{
		out.print(ex);
		}%>
    </div>
    

</div>