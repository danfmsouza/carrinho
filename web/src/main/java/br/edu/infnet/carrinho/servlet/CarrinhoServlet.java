package br.edu.infnet.carrinho.servlet;

import java.io.IOException;
//import java.io.PrintWriter;
import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.infnet.carrinho.ejb.CarrinhoEjb;
import br.edu.infnet.carrinho.modelo.Produto;

@WebServlet(name = "Carrinho", urlPatterns = "/Carrinho")
public class CarrinhoServlet extends HttpServlet {
	private static final long serialVersionUID = 5729397261145306745L;
	
	@Inject
	private CarrinhoEjb carrinho;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	    resp.setContentType("text/html");
	    String nome = req.getParameter("nome");
	    String preco = req.getParameter("preco");
	    
	    Produto produto = new Produto();
	    produto.setNome(nome);
	    produto.setPreco(Double.valueOf(preco));
	    
	    produto = carrinho.adicionar(produto);
//	    PrintWriter out = resp.getWriter();
//		out.println("Olá EJB! " + produto );
		
 		List<Object> produtos = carrinho.listar();
		req.setAttribute("listaProdutos", produtos);
		req.getRequestDispatcher("lista.jsp").forward(req, resp);
	}

}
