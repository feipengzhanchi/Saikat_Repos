<%@include file="CommonPage.jsp" %>

<form action="Register" method="post">
<table align="center" border="1">
	<tr>
		<td> User Name </td>
		<td> <input type="text" name="username"/></td>
	</tr>
	<tr>
		<td> Password </td>
		<td> <input type="password" name="passwd"/></td>
	</tr>
	<tr>
		<td> Customer Name </td>
		<td> <input type="text" name="custname"/></td>
	</tr>
	<tr>
		<td> Gender </td>
		<td> 
			<input type="radio" name="gender" value="M"/>Male
			<input type="radio" name="gender" value="F"/>FeMale
		</td>
	</tr>
	<tr>
		<td> Mobile </td>
		<td> <input type="mobile" name="mobileno"/></td>
	</tr>
	<tr>
		<td> City </td>
		<td> 
			<select name="city">
				<option value="hyd">Hyderabad</option>
				<option value="mum">Mumbai</option>
				<option value="del">Delhi</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="Submit form"/> 
		</td>
	</tr>
</table>
</form>

</body>
</html>