package br.edu.infnet.carrinho.ejb;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import javax.ejb.Stateful;
import javax.ejb.StatefulTimeout;

import br.edu.infnet.carrinho.modelo.Produto;

@Stateful
@StatefulTimeout(unit=TimeUnit.MINUTES, value=30)

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
	public List<Object> listar(){
		// Listar
		return repo.values().stream().collect(Collectors.toList());
	}
}