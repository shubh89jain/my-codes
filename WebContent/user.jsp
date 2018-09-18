<%@ page import ="java.sql.*" %>
<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{

}
</script>
<BODY background="backgroun.png" >

<center>
<BR><BR>
 
 <font size="+2" color="#FF5C0F"><h1><b>UNIVERSAL BANKING</b></h1></font>
<br>
 

<form  method=post action="usercheck.jsp" name="f" onSubmit='return call()'>
 <table>
 <tr>
 <td>
<tr><td><h3>SELECT BANK</td><td><SELECT NAME="bname"> 
<% 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");

	   PreparedStatement st=con.prepareStatement("select * from bank ");
	
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>


                  <option  ><%=rs.getString(2)%></option>
				  
<%}%>
  </SELECT></td></tr>
</table>
<br> <BR>
 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="back " onClick="window.location='login.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Home " onClick="window.location='index.jsp'">

 </form>
<center><a href="otherbanknewac.jsp"style="text-decoration : none"><font color="BLACK"><h1><b>Enter new<image src="moneybank.jpg"/>Details</b></h1> </a>

<br><center><BR><BR>

</center>

</BODY>
</HTML>
