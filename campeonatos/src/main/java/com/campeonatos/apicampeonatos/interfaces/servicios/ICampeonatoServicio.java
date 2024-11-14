package com.campeonatos.apicampeonatos.interfaces.servicios;

import java.util.List;

import com.campeonatos.apicampeonatos.core.dominio.Campeonato;
import com.campeonatos.apicampeonatos.core.dominio.Grupo;

public interface ICampeonatoServicio {
	
	public List<Campeonato> listar(); 
	
	public List<Grupo> listarGrupos(long id);
}
