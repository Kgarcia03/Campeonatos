package com.campeonatos.apicampeonatos.aplicacion;

import java.util.List;

import org.springframework.stereotype.Service;

import com.campeonatos.apicampeonatos.core.DTOs.TablaPosicionDto;
import com.campeonatos.apicampeonatos.interfaces.servicios.IGrupoServicio;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Service
public class GrupoServicio implements IGrupoServicio {

	@PersistenceContext
	public EntityManager em;

	@Override
	public List<TablaPosicionDto> obtenerPosiciones(int idGrupo) {
		List<TablaPosicionDto> tablaPosiciones = em
				.createNativeQuery("SELECT * FROM fTablaPosicionesGrupo(:idgrupotabla)", TablaPosicionDto.class)
				.setParameter("idgrupotabla", idGrupo)
				.getResultList();
		return tablaPosiciones;
	}
}
