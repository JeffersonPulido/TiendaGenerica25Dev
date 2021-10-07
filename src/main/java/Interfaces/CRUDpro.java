package Interfaces;

import java.util.List;

import Modelo.Proveedores;

public interface CRUDpro {
	//proveedores
    public List listar();
    public Proveedores list(int nitproveedor);
    public boolean add(Proveedores pro);
    public boolean edit(Proveedores pro);
    public boolean eliminar(int nitproveedor);
}
