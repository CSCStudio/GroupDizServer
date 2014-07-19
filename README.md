#GDIZServer 


### tables structure

users
<table>
	<td> id </td> 
	<td> nickname </td>
	<td> identifier </td>
</table>

topics
<table>
	<td> id </td>
	<td> title </td> 
  <td> description </td> 
  <td> creator_id </td> 
  <td> code </td>
</table>

topic_participants
<table>
 <td> topic_id </td> 
 <td> user_id </td>
</table>

points
<table>
	<td> id </td>
	<td> title </td>
	<td> description </td>
	<td> topic_id </td>
	<td> user_id </td>
</table>

votes
<table>
	<td> user_id </td> 
	<td> point_id </td>
	<td> kind </td> 
</table>