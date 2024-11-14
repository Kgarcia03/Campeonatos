package com.campeonatos.apicampeonatos.core.dominio;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "estadio")
public class Estadio {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "secuencia_pais") 
	private long id;
	@Column(name = "estadio", length = 250, unique = false)
	private String estadio;
	@Column(name = "capacidad")
	private int capacidad;
	@Column(name = "idciudad")
	private int idciudad;
	@Column(name = "foto", length = 250, unique = false)
	private String foto;
	
	public Estadio() {
		super();
	}

	public Estadio(long id, String estadio, int capacidad, int idciudad, String foto) {
		super();
		this.id = id;
		this.estadio = estadio;
		this.capacidad = capacidad;
		this.idciudad = idciudad;
		this.foto = foto;
	}

	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getEstadio() {
		return estadio;
	}
	
	public void setEstadio(String estadio) {
		this.estadio = estadio;
	}
	
	public int getCapacidad() {
		return capacidad;
	}
	
	public void setCapacidad(int capacidad) {
		this.capacidad = capacidad;
	}
	
	public int getIdciudad() {
		return idciudad;
	}
	
	public void setIdciudad(int idciudad) {
		this.idciudad = idciudad;
	}
	
	public String getFoto() {
		return foto;
	}
	
	public void setFoto(String foto) {
		this.foto = foto;
	}
	
}
