package com.campeonatos.apicampeonatos.interfaces.servicios;

import java.util.List;

import com.campeonatos.apicampeonatos.core.DTOs.TablaPosicionDto;

public interface IGrupoServicio {
	
	public List<TablaPosicionDto> obtenerPosiciones(int id);
	
}
