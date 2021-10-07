package Interfaces;

import java.util.List;

import Modelo.Productos;

public interface CRUDproductos {
	//PRODUCTOS
    public List listar();
    public Productos list(int codigo_producto);
    public boolean edit(Productos productos);
    public boolean eliminar(int codigo_producto);
}
