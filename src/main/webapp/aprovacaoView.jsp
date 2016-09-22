<!DOCTYPE html>
<html lang="pt-BR">
<head>
<%@ include file="header.html"%>

<title>Cálculo Nota UFG</title>
</head>
</head>
<body>
<header class='clear'><p class='tip3'><a href="index.html">Home</a></p></header>
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend class='legend'>Cálculo de Aprovação na UFG</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nome">Nome</label>  
  <div class="col-md-2">
  <input id="nome" name="nome" type="text" placeholder="insira o nome" class="form-control input-md test" required="" value="${param.nome}">
 
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="frequencia">Frequência</label>  
  <div class="col-md-2">
  <input id="frequencia" name="frequencia" type="text" placeholder="insira a frequência" class="form-control input-md" required="" value="${param.frequencia}">
   
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nota">Nota</label>  
  <div class="col-md-2">
  <input id="nota" name="nota" type="text" placeholder="insira a nota" class="form-control input-md" required="" value="${param.nota}">
    
  </div>
</div>
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="button">Consultar</label>
  <div class="col-md-4">
    <button id="button" name="button" class="btn btn-primary">Submeter</button>
  </div>
</div>

</fieldset>

   <div class='resultado'> <p class='alert-success' role="alert">${resultadoAprovacao}</p></div>

</body>
</html>