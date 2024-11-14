package com.campeonatos.apicampeonatos.aplicacion;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.campeonatos.apicampeonatos.core.dominio.Seleccion;
import com.campeonatos.apicampeonatos.interfaces.repositorios.ISeleccionRepositorio;
import com.campeonatos.apicampeonatos.interfaces.servicios.ISeleccionServicio;

@Service
public class SeleccionServicio implements ISeleccionServicio {

	@Autowired
	private ISeleccionRepositorio repositorio;
	
	@Override
	public List<Seleccion> listar()
	{
		return repositorio.findAll();
	}
	
}
