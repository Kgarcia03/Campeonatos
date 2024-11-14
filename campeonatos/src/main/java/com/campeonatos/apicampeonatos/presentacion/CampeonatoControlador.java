package com.campeonatos.apicampeonatos.presentacion;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.campeonatos.apicampeonatos.aplicacion.CampeonatoServicio;
import com.campeonatos.apicampeonatos.core.dominio.Campeonato;
import com.campeonatos.apicampeonatos.core.dominio.Grupo;

@RestController
@RequestMapping("/campeonatos")
public class CampeonatoControlador {

	@Autowired
	private CampeonatoServicio servicio;

	@GetMapping("/listar")
	public List<Campeonato> listar() {
		return servicio.listar();
	}
	
	@GetMapping("/grupos/{id}")
	public List<Grupo> listarGrupos(@PathVariable int id) {
		return servicio.listarGrupos(id);
	}

}
