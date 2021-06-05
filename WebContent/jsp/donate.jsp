<body>
<jsp:include page="../header.jsp"></jsp:include>
<%@ page import="java.sql.*" %>
<%@ page import="cloths.*" %>
<hr>
<%
if(session.getAttribute("Mobile")!=null)
{
%>
<div class="col-sm">
    <form action="../donatecloths" method="post" >
    <br>
    <label style="font-family: cursive;font-size: large;">  
    <% if(request.getParameter("reg")!=null)
    {%>
    <%= request.getParameter("reg") %>
    <%
    }
    %></label>
  
    
  <div class="form-group">
  
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="txtEmail" aria-describedby="emailHelp" placeholder="Enter email" <%=session.getAttribute("Email") %>"required="required">
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Mobile Number</label>
<input type="tel" minlength="10"class="form-control" maxlength="10"  name="txtmobile" value="<%=session.getAttribute("Mobile") %>"title="10 digit mobile number" required>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Full Name</label>
    <input type="text" class="form-control" name="txtName" aria-describedby="emailHelp" placeholder="Full Name" value="<%=session.getAttribute("Name") %>" required="required">
   
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">permanant 
    Address</label>
    <input type="Address" class="form-control" name="txtaddr" placeholder="enter complete address with tq and city" value="<%=session.getAttribute("Address") %>" required="required">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Quantity of Donation</label>
    <input type="Number" class="form-control" name="txtQuantity" placeholder="Number" required="required">
  </div>
  <br><br>
  <input type="submit" class="btn btn-primary" value="Register">
   
</form>
    </div>

  <hr>
  <div class="row">
<%

			
			Connection con;
			PreparedStatement pst;
			ResultSet rs,rs2;
			
			
			try 
			{
				DbCon conn=new DbCon();
				con=conn.getDbcon();
				
				pst=con.prepareStatement(" select * from Users where  Mobile="+session.getAttribute("Mobile")+" order by donatedate desc");
			

			System.out.println("result :"+pst);
			rs=pst.executeQuery();
			
			
%>	
    <div class="col-sm">
    
      <br>
       <h3>Your Last Donations History. </h3>
    <table class="table table-dark">
  <thead>
    <tr>
     <th scope="col">Mobile </th>
      <th scope="col">Email</th>
      <th scope="col">Name</th>
      <th scope="col">Address</th>
      <th scope="col">Quantity</th>
       <th scope="col"> Request date</th>
       <th scope="col">Is Recevied ?</th>
    </tr>
  </thead>
  <tbody>
  <%
      while(rs.next())
		{
    	  %>
    <tr>
      <th scope="row"><%= rs.getString("Mobile").toUpperCase() %></th>
      <td><%= rs.getString("Email").toUpperCase() %></td>
      <td><%= rs.getString("Name").toUpperCase() %></td>
      <td><%= rs.getString("Address").toUpperCase() %></td>
      <td><%= rs.getString("Quantity").toUpperCase() %></td>
      <td><%= rs.getString("donatedate").toUpperCase() %></td>
      <td><% 
      if (rs.getBoolean("reseaved")==true)
      {
      	%>Yes<%
      }else
      {
    	  %>No<%
      }
      %></td>
    </tr>
      <%
		}
		
      %>
    </tbody>
    </table>
   
      
    	 
    <br>	
     
      
    </div>
    
    <%
    }catch(Exception ex)
		{
		out.print(ex);
		}%>
    
    </div>  
    <%
    }%>
  