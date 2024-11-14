package com.campeonatos.apicampeonatos.aplicacion;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.campeonatos.apicampeonatos.core.dominio.Campeonato;
import com.campeonatos.apicampeonatos.core.dominio.Grupo;
import com.campeonatos.apicampeonatos.interfaces.repositorios.ICampeonatoRepositorio;
import com.campeonatos.apicampeonatos.interfaces.servicios.ICampeonatoServicio;

@Service
public class CampeonatoServicio implements ICampeonatoServicio {

	@Autowired
	private ICampeonatoRepositorio repositorio;

	@Override
	public List<Campeonato> listar() {
		return repositorio.findAll();
	}

	@Override
	public List<Grupo> listarGrupos(long id) {
		var campeonatoBuscado = repositorio.findById(id);
		if (campeonatoBuscado.isPresent()) {
			var campeonato = campeonatoBuscado.get();
			return campeonato.getGrupos();
		}
		return null;
	}

}
