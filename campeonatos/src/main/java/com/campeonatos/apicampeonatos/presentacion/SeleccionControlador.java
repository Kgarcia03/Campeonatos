package com.campeonatos.apicampeonatos.presentacion;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.campeonatos.apicampeonatos.core.dominio.Seleccion;
import com.campeonatos.apicampeonatos.interfaces.servicios.ISeleccionServicio;

@RestController
@RequestMapping("/selecciones")
public class SeleccionControlador {

	@Autowired
	private ISeleccionServicio servicio;

	@GetMapping("/listar")
	public List<Seleccion> listar() {
		return servicio.listar();
	}
}
