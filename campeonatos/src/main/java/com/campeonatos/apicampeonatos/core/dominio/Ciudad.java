package com.campeonatos.apicampeonatos.core.dominio;

import org.hibernate.annotations.GenericGenerator;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "ciudad")
public class Ciudad {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "secuencia_pais") 
	@GenericGenerator(name = "secuencia_campeonato", strategy = "increment")
	private long id;
	
	@Column(name = "ciudad", length = 250, unique = false)
	private String ciudad;
	
	@Column(name = "idpais", unique = false)
	private int idPais;
	
	public Ciudad() {
		super();
	}

	public Ciudad(long id, String ciudad, int idPais) {
		super();
		this.id = id;
		this.ciudad = ciudad;
		this.idPais = idPais;
	}

	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getCiudad() {
		return ciudad;
	}
	
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	
	public int getIdPais() {
		return idPais;
	}
	
	public void setIdPais(int idPais) {
		this.idPais = idPais;
	}
	
}
