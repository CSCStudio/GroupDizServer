#GDIZServer 

### DB tables structure
<table>
	<td> users </td> 
	<td></td> 
	<td> id </td> 
	<td> nickname </td>
	<td> identifier </td>
</table>
<table>
	<td> topics </td>
	<td></td>
	<td> id </td>
	<td> title </td> 
  <td> description </td> 
  <td> creator_id </td> 
  <td> code </td>
</table>
<table>
  <td> topic_participants </td>
  <td></td>
  <td> topic_id </td> 
  <td> user_id </td>
</table>
<table>
	<td> points </td>
	<td></td>
	<td> id </td>
	<td> title </td>
	<td> description </td>
	<td> topic_id </td>
	<td> user_id </td>
</table>
<table>
	<td> votes </td>
	<td></td>
	<td> user_id </td> 
	<td> point_id </td>
	<td> kind </td> 
</table>


### Deploy with capistrano
```
# Deploy server with capistrano, https://github.com/capistrano/capistrano
gem 'capistrano', '~> 3.2.1', require: false
gem 'capistrano-rvm', '~> 0.1.1'
gem 'capistrano-rails', '~> 1.1.1'
gem 'capistrano-bundler', '~> 1.1.2'
gem 'capistrano3-puma', '~> 0.6.1'
```