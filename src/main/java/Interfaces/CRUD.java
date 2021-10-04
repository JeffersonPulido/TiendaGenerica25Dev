package Interfaces;

import java.util.List;

import Modelo.Usuario;

public interface CRUD {
	//USUARIOS
    public List listar();
    public Usuario list(int cedula_usuario);
    public boolean add(Usuario user);
    public boolean edit(Usuario user);
    public boolean eliminar(int cedula_usuario);
}	

