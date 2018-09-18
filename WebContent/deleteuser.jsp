<%@ page import ="java.sql.*" %>
<%
   
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
   

   int id=Integer.parseInt(request.getParameter("id"));
PreparedStatement ps=con.prepareStatement("delete from clogin where id=?");
    System.out.println("hi");
	ps.setInt(1,id);

	ps.executeUpdate();
response.sendRedirect("deletesuccess.jsp");
%>
