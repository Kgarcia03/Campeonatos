package com.campeonatos.apicampeonatos.interfaces.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.campeonatos.apicampeonatos.core.dominio.Campeonato;

@Repository
public interface ICampeonatoRepositorio extends JpaRepository<Campeonato, Long> {

}
