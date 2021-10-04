package Interfaces;

import java.util.List;

import Modelo.Clientes;


public interface CRUDclientes {
	//CLIENTES
    public List listar();
    public Clientes list(int cedula_cliente);
    public boolean add(Clientes clientes);
    public boolean edit(Clientes clientes);
    public boolean eliminar(int cedula_cliente);
}
