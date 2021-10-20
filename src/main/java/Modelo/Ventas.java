package Modelo;

public class Ventas {
	int codigo_venta;
	int item;
	int codigo_detalle_venta;
	int codigo_producto;
	int cantidad_producto;
	String numeroComprobante;
	int cedula_usuario;
	int cedula_cliente;
	String nombreproducto;
	double valor_total;
	double valor_venta;
	double valoriva;
	
	double ivaventa;
	double total_venta;
	
	public Ventas(int codigo_venta, int item, int codigo_detalle_venta, int codigo_producto, int cantidad_producto,
			String numeroComprobante, int cedula_usuario, int cedula_cliente, String nombreproducto, double valor_total,
			double valor_venta, double valoriva, double ivaventa, double total_venta) {
		super();
		this.codigo_venta = codigo_venta;
		this.item = item;
		this.codigo_detalle_venta = codigo_detalle_venta;
		this.codigo_producto = codigo_producto;
		this.cantidad_producto = cantidad_producto;
		this.numeroComprobante = numeroComprobante;
		this.cedula_usuario = cedula_usuario;
		this.cedula_cliente = cedula_cliente;
		this.nombreproducto = nombreproducto;
		this.valor_total = valor_total;
		this.valor_venta = valor_venta;
		this.valoriva = valoriva;
		this.ivaventa = ivaventa;
		this.total_venta = total_venta;
	}

	public Ventas() {
		super();
	}

	public int getCodigo_venta() {
		return codigo_venta;
	}

	public void setCodigo_venta(int codigo_venta) {
		this.codigo_venta = codigo_venta;
	}

	public int getItem() {
		return item;
	}

	public void setItem(int item) {
		this.item = item;
	}

	public int getCodigo_detalle_venta() {
		return codigo_detalle_venta;
	}

	public void setCodigo_detalle_venta(int codigo_detalle_venta) {
		this.codigo_detalle_venta = codigo_detalle_venta;
	}

	public int getCodigo_producto() {
		return codigo_producto;
	}

	public void setCodigo_producto(int codigo_producto) {
		this.codigo_producto = codigo_producto;
	}

	public int getCantidad_producto() {
		return cantidad_producto;
	}

	public void setCantidad_producto(int cantidad_producto) {
		this.cantidad_producto = cantidad_producto;
	}

	public String getNumeroComprobante() {
		return numeroComprobante;
	}

	public void setNumeroComprobante(String numeroComprobante) {
		this.numeroComprobante = numeroComprobante;
	}

	public int getCedula_usuario() {
		return cedula_usuario;
	}

	public void setCedula_usuario(int cedula_usuario) {
		this.cedula_usuario = cedula_usuario;
	}

	public int getCedula_cliente() {
		return cedula_cliente;
	}

	public void setCedula_cliente(int cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}

	public String getNombreproducto() {
		return nombreproducto;
	}

	public void setNombreproducto(String nombreproducto) {
		this.nombreproducto = nombreproducto;
	}

	public double getValor_total() {
		return valor_total;
	}

	public void setValor_total(double valor_total) {
		this.valor_total = valor_total;
	}

	public double getValor_venta() {
		return valor_venta;
	}

	public void setValor_venta(double valor_venta) {
		this.valor_venta = valor_venta;
	}

	public double getValoriva() {
		return valoriva;
	}

	public void setValoriva(double valoriva) {
		this.valoriva = valoriva;
	}

	public double getIvaventa() {
		return ivaventa;
	}

	public void setIvaventa(double ivaventa) {
		this.ivaventa = ivaventa;
	}

	public double getTotal_venta() {
		return total_venta;
	}

	public void setTotal_venta(double total_venta) {
		this.total_venta = total_venta;
	}
	
	
	
}
