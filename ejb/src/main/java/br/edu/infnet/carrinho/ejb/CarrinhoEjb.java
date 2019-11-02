package br.edu.infnet.carrinho.ejb;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.ejb.Stateful;

import br.edu.infnet.carrinho.modelo.Produto;

@Stateful
public class CarrinhoEjb {
	private Map<Integer, Produto> repo = new TreeMap<Integer, Produto>();
	private Integer count = 1;

	public Produto adicionar(Produto produto) {
		// Adicionar
		produto.setId(count);
		repo.put(count++, produto);
		return produto;
	}
	public void deletar(Integer id) {
		// Deletar
		repo.remove(id);
	}
	public List<Produto> listar(){
		// Listar
		return (List<Produto>) repo.values();
	}
}