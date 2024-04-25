package br.com.projeto.controller;


import java.util.List;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.projeto.hibernate.HibernateUtil;
import br.com.projeto.model.Filme;

@Resource
public class FilmeController {

	private Result result;
	private Validator validator;

	public FilmeController(Result result, Validator validator) {

		this.result = result;
		this.validator = validator;
	}
	@Path("/filme/acessar")
	public void acessar(List<Filme> Filmes) {

		if (Filmes == null) {

			Filmes = HibernateUtil.buscar(new Filme());
		}

		result.include("Filmes", Filmes);
	}
	@Path("/filme/pesquisar")
	public void pesquisar(String pesquisa) {
	    Filme filmeFiltro = new Filme();
	    filmeFiltro.setTitulo(pesquisa);
	    List<Filme> filmes = HibernateUtil.buscar(filmeFiltro);

	    result.include("filmes", filmes);

	    result.of(this).acessar(filmes);
	}
	@Path("/filme/salvar")
	public void salvar(Filme filme) {
	    HibernateUtil.salvar(filme);

	    result.redirectTo(this).acessar(null);
	}
	@Path("/filme/editar/{id}")
	public void editar(Integer id) {
	    if(id != null) {
	        Filme filme = HibernateUtil.getById(id);
	        result.include("filmeEditar", filme);
	        result.include("formEditar", true);
	    }
	}
	
	@Path("/filme/excluir/{id}")
	public void excluir (Integer id) {
		if(id != null) {
			Filme filme = HibernateUtil.getById(id);
			HibernateUtil.excluir(filme);
			
			result.redirectTo(this).acessar(null);
		}
	}
	
	@Path("/filme/atualizar")
	public void atualizar(Filme filme) {
	    HibernateUtil.atualizar(filme);
	    result.redirectTo(this).acessar(null);
	}
	
}