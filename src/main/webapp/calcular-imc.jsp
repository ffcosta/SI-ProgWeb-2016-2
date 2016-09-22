<!DOCTYPE html>
<html lang="pt-BR">
<head>
<%@ include file="header.html"%>
<%@ page import="java.text.NumberFormat" %>
<%@page import="java.text.DecimalFormat" %>

<title>Cálculo do IMC</title>
</head>

<body>
	<header class='clear'><p class='tip3'><a href="index.html">Home</a></p></header>
	<form class="form-horizontal">
		<fieldset>
		<div class="form-group">
				<img alt="" src="lib/imagem/tabelaIMC.jpg">
				<div class="col-md-3">
					
				</div>
			</div>

			<!-- Form Name -->
			<legend>Calculo do IMC</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="altura">Sua
					altura</label>
				<div class="col-md-2">
					<input id="altura" name="altura" type="text" placeholder="0.00"
						class="form-control input-md" required=""> <span
						class="help-block">m</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="peso">Seu peso</label>
				<div class="col-md-2">
					<input id="peso" name="peso" type="text" placeholder="00.00"
						class="form-control input-md" required=""> <span
						class="help-block">Kg</span>
				</div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectsexo"> Sexo</label>

				<div class="col-md-2">
					<select id="selectsexo" name="selectsexo" class="form-control">
						<option value="1">Homem</option>
						<option value="2">Mulher</option>
					</select> <span class="help-block">(O cálculo é diferenciado para
						homens e mulheres)</span>
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="singlebutton">Resultado</label>
				<div class="col-md-4">
					<button id="singlebutton" name="singlebutton"
						class="btn btn-primary">Calcular</button>
				</div>
				
			</div>

		</fieldset>
	</form>
	<%
	NumberFormat nf = NumberFormat.getInstance();
						DecimalFormat df = new DecimalFormat("#0.00");
    nf.setMaximumFractionDigits(2);
    nf.setMinimumFractionDigits(2);
		String alturaStr = request.getParameter("altura");
		alturaStr = (alturaStr == null ? "0" : alturaStr);
		String pesoStr = request.getParameter("peso");
		pesoStr = (pesoStr == null ? "0" : pesoStr);
		String sexoStr = request.getParameter("selectsexo");
		sexoStr = (sexoStr == null ? "1" : sexoStr);
		
		double altura = Double.parseDouble(alturaStr);
		double peso = Double.parseDouble(pesoStr);
		int sexo = Integer.parseInt(sexoStr);
		
		double imc = peso / (altura * altura);		
		
		if(sexo == 2){
			if(imc < 19.1){
				
				%><div class="alert alert-success resultado" role="alert"> IMC = <% out.print(df.format(imc)); %> - Abaixo do Peso
				<div class="col-md-5"> </div><%
			}
			else if(imc > 19.09 && imc < 25.9){
				%><div class="alert alert-success resultado" role="alert">IMC = <% out.print(df.format(imc)); %> - No peso normal
						<div class="col-md-5"></div><%
			}
			else if(imc > 25.8 && imc < 27.4){
				%><div class="alert alert-success resultado" role="alert"> IMC = <% out.print(df.format(imc)); %> - Marginalmente acima do peso
						<div class="col-md-5"></div><%
			}
			else if(imc > 27.3 && imc < 32.4){
				%><div class="alert alert-success resultado" role="alert">IMC = <% out.print(df.format(imc)); %> - Acima do peso ideal
						<div class="col-md-5"></div><%
			}
			else if(imc > 32.3){
				%><div class="alert alert-success resultado" role="alert"> IMC = <% out.print(df.format(imc)); %> - Obeso
						<div class="col-md-5"> </div><%
			}
				
		}
		if(sexo == 1){
			if(imc < 20.7){
				%><div class="alert alert-success resultado" role="alert">IMC = <% out.print(df.format(imc)); %> - Abaixo do Peso
				<div class="col-md-5"></div><%
			}
			else if(imc > 20.6 && imc < 26.5){
				%><div class="alert alert-success resultado" role="alert">IMC = <% out.print(df.format(imc)); %> - No peso normal
						<div class="col-md-5"></div><%
			}
			else if(imc > 26.4 && imc < 27.9){
				%><div class="alert alert-success resultado" role="alert">IMC = <% out.print(df.format(imc)); %> - Marginalmente acima do peso
						<div class="col-md-5"></div><%
			}
			else if(imc > 27.8 && imc < 31.2){
				%><div class="alert alert-success resultado" role="alert">IMC = <% out.print(df.format(imc)); %> - Acima do peso ideal
						<div class="col-md-5"></div><%
			}
			else if(imc > 32.1){
				%><div class="alert alert-success resultado" role="alert">IMC = <% out.print(df.format(imc)); %> - Obeso
						<div class="col-md-5"></div><%
			}
				
		}		
	%>
	

</body>
</html>