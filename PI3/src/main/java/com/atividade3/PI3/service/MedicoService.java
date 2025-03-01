/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.atividade3.pi3.service;
import com.atividade3.PI3.Model.Medico;
import com.atividade3.PI3.repository.MedicoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service 
public class MedicoService {
    
    @Autowired 
    MedicoRepository medicoRepository;
    
    public Medico criarMedico(Medico medico) { 
    medico.setId(null);
    medicoRepository.save(medico); 
    return medico; 
    }
    
    public Medico getMedicoId(Integer medicoId) { 
    return medicoRepository.findById(medicoId).orElse(null); 
    }
    
    public Medico atualizarMedico(Integer medicoId, Medico medicoRequest) { 
    Medico medico = getMedicoId(medicoId); 
    medico.setNome(medicoRequest.getNome()); 
    medico.setRG(medicoRequest.getRG()); 
    medico.setSenha(medicoRequest.getSenha());
    medico.setEndereco(medicoRequest.getEndereco()); 
    medicoRepository.save(medico); 
    return medico; 
    }
    
    public List<Medico> listarTodosMedicos() { 
    return medicoRepository.findAll(); 
    }
    
    public void deletarMedico(Integer medicoId) { 
    Medico medico = getMedicoId(medicoId); 
    medicoRepository.deleteById(medico.getId()); 
    }
    
}