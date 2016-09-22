package aprovacao_ufg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AprovacaoController
 */
@WebServlet("/calculo")
public class AprovacaoController extends HttpServlet {
	@Override
	  protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
	
	    //Preparação dos parâmetros.
	    
	    String nome = req.getParameter("nome");

	    String frequenciaStr = req.getParameter("frequencia");
	    
	    float frequencia = frequenciaStr == null || frequenciaStr.isEmpty() ? -1 : Float.parseFloat(frequenciaStr);

	    String notaStr = req.getParameter("nota");
	    float nota = notaStr == null || notaStr.isEmpty() ? -1 : Float.parseFloat(notaStr);
        System.out.println(nome + frequencia + nota);
	    //Chamada ao Model.
	    AprovacaoModel.verifacarFrequencia(frequencia);
	    AprovacaoModel.verifacarNota(nota);
	    String resultado = AprovacaoModel.verficarAprovacao(nome);

	    //Passagem de atributos para o JSP.
	    req.setAttribute("resultadoAprovacao", resultado);

	    //Chamando o JSP.
	    String nextJsp = "/aprovacaoView.jsp";
	    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJsp);
	    dispatcher.forward(req, resp);
	  }

}
