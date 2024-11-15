package com.campeonatos.apicampeonatos.core.dominio;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "campeonato")
public class Campeonato {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "secuencia_campeonato")
	private long id;
	@Column(name = "campeonato", length = 100, unique = true)
	private String nombre;
	@ManyToOne
	@JoinColumn(name = "idpais", referencedColumnName = "id")
	private Seleccion pais;
	@Column(name = "ano")
	private int ano;
	@JsonIgnore
	@OneToMany(mappedBy = "campeonato")
	private List<Grupo> grupos = new ArrayList<>();

	public Campeonato() {
	}

	public Campeonato(long id, String nombre, Seleccion pais, int año) {
		this.id = id;
		this.nombre = nombre;
		this.pais = pais;
		this.ano = año;
	}

	public Campeonato(long id, String nombre, Seleccion pais, int año, List<Grupo> grupos) {
		this.id = id;
		this.nombre = nombre;
		this.pais = pais;
		this.ano = año;
		this.grupos = grupos;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getAño() {
		return ano;
	}

	public void setAño(int año) {
		this.ano = año;
	}

	public Seleccion getPais() {
		return pais;
	}

	public void setPais(Seleccion pais) {
		this.pais = pais;
	}

	public List<Grupo> getGrupos() {
		return grupos;
	}

	public void setGrupos(List<Grupo> grupos) {
		this.grupos = grupos;
	}
}
