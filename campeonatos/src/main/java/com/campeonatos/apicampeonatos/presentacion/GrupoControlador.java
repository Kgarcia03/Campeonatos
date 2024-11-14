package com.campeonatos.apicampeonatos.presentacion;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.campeonatos.apicampeonatos.core.DTOs.TablaPosicionDto;
import com.campeonatos.apicampeonatos.interfaces.servicios.IGrupoServicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;


@RestController
@RequestMapping("/grupos")
public class GrupoControlador {

	@Autowired
	private IGrupoServicio servicio;
	
	@GetMapping("/{id}/posiciones")
	public List<TablaPosicionDto> listarPosicionesGrupos(@PathVariable int id) {
		return servicio.obtenerPosiciones(id);
	}
	
	
}
