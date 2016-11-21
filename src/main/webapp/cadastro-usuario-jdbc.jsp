<!DOCTYPE html>
<%@page import="java.awt.print.Printable"%>
<%@page import="jdbc.Usuario"%>
<%@page import="java.util.List"%>
<html>
<head>
<%@ include file="header.html"%>
<header class='clear'><p class='tip3'><a href="index.html">Home</a></p></header>
<body>
<form class="form-horizontal" name="cadastroUsuarioJdbc" method="post">
<fieldset>

<!-- Form Name -->
<legend class='legend'>Cadastro de Aluno</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nome">Matrícula</label>  
  <div class="col-md-2">
  <input type="text" name="codigo" placeholder="insira a matrícula" class="form-control input-md test">
 
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="frequencia">Nome</label>  
  <div class="col-md-2">
  <input type="text" name="nome" placeholder="insira o nome" class="form-control input-md">
   
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nota">Curso</label>  
  <div class="col-md-2">
  <input type="text" name="senha" placeholder="insira o curso" class="form-control input-md">
    
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="button1id"></label>
  <div class="col-md-8">
    <input type="submit" name="op" value="Salvar" class="btn btn-success"></input>
    <input type="submit" name="op" value="Alterar" class="btn btn-primary"></input>
    <input  type="submit" name="op" value="Listar" class="btn btn-warning"></input>
    <input  type="submit" name="op" value="Excluir" class="btn btn-danger"></input>
  </div>
</div>

</fieldset>

<%
String listaStr = request.getParameter("op");
		

		  listaStr = (listaStr == null ? "0" : listaStr);
		  
		 if(listaStr.equals("Listar") || listaStr.equals("Excluir")){
			  %>
			  <div class="container">
    <div class="row">
      <div class="table-responsive">
        <table class="table table-hover" border="1">
          <thead>
            <tr>
              <th>Matricula</th>
              <th>Nome</th>
              <th>Curso</th>
            </tr>
          </thead>
          <%List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
          for (Usuario u:usuarios) {
        	  %>
          
          <tbody id="myTable">
            <tr>
              <td><%=u.getCodigo()%></td>
              <td><%=u.getNome()%></td>
              <td><%=u.getSenha()%></td>
            </tr> 
          </tbody>
          <%
    }
    %>
        </table>   
      </div>
      <div class="col-md-12 text-center">
      <ul class="pagination pagination-lg pager" id="myPager"></ul>
      </div>
	</div>
</div><%
		  }
		  %>

  
  
</body>
</html>