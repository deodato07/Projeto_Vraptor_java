package br.com.projeto.controller;


import java.util.List;

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

	public void acessar(List<Filme> Filmes) {

		if (Filmes == null) {

			Filmes = HibernateUtil.buscar(new Filme());
		}

		result.include("Filmes", Filmes);
	}

	public void pesquisar(String pesquisa) {
	    Filme filmeFiltro = new Filme();
	    filmeFiltro.setTitulo(pesquisa);
	    List<Filme> filmes = HibernateUtil.buscar(filmeFiltro);

	    result.include("filmes", filmes);

	    result.of(this).acessar(filmes);
	}

	public void salvar(Filme filme) {
	    HibernateUtil.salvar(filme);

	    result.redirectTo(this).acessar(null);
	}
}