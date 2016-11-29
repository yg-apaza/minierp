SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE episerp.en_p1c_devolucion_ventas;
TRUNCATE TABLE episerp.en_p1c_preventa_realizadas;
TRUNCATE TABLE episerp.en_p1m_cartera_clientes;
TRUNCATE TABLE episerp.en_p1m_catalogo_ruta;
TRUNCATE TABLE episerp.en_p1m_cliente;
TRUNCATE TABLE episerp.en_p1m_clientes_rutas;
TRUNCATE TABLE episerp.en_p1m_documento_cliente;
TRUNCATE TABLE episerp.en_p1m_documento_usuario;
TRUNCATE TABLE episerp.en_p1m_empresa;
TRUNCATE TABLE episerp.en_p1m_factura_venta_cab;
TRUNCATE TABLE episerp.en_p1m_pagos_cuotas_cab;
TRUNCATE TABLE episerp.en_p1m_preventa_cab;
TRUNCATE TABLE episerp.en_p1m_punto_venta;
TRUNCATE TABLE episerp.en_p1m_sucursal;
TRUNCATE TABLE episerp.en_p1m_usuario;
TRUNCATE TABLE episerp.en_p1t_factura_venta_det;
TRUNCATE TABLE episerp.en_p1t_pagos_cuotas_det;
TRUNCATE TABLE episerp.en_p1t_preventa_det;
TRUNCATE TABLE episerp.en_p2c_devolucion_compras;
TRUNCATE TABLE episerp.en_p2m_almacen;
TRUNCATE TABLE episerp.en_p2m_clase_producto;
TRUNCATE TABLE episerp.en_p2m_documento_transportista;
TRUNCATE TABLE episerp.en_p2m_guia_rem_remitente;
TRUNCATE TABLE episerp.en_p2m_guia_rem_transportista;
TRUNCATE TABLE episerp.en_p2m_inventario_cab;
TRUNCATE TABLE episerp.en_p2m_producto;
TRUNCATE TABLE episerp.en_p2m_subclase_producto;
TRUNCATE TABLE episerp.en_p2m_transportista;
TRUNCATE TABLE episerp.en_p2m_unidad_transporte;
TRUNCATE TABLE episerp.en_p2t_inventario_det;
TRUNCATE TABLE episerp.en_p3m_asiento_cab;
TRUNCATE TABLE episerp.en_p3m_cuenta;
TRUNCATE TABLE episerp.en_p3m_cuenta_banco;
TRUNCATE TABLE episerp.en_p3m_libro_diario;
TRUNCATE TABLE episerp.en_p3m_plantilla_cab;
TRUNCATE TABLE episerp.en_p3t_asiento_det;
TRUNCATE TABLE episerp.en_p3t_plantilla_det;
TRUNCATE TABLE episerp.en_p4m_documento_proveedor;
TRUNCATE TABLE episerp.en_p4m_factura_compra_cab;
TRUNCATE TABLE episerp.en_p4m_proveedor;
TRUNCATE TABLE episerp.en_p4t_factura_compra_det;
TRUNCATE TABLE episerp.ta_gzz_banco;
TRUNCATE TABLE episerp.ta_gzz_canal_cliente;
TRUNCATE TABLE episerp.ta_gzz_canal_usuario;
TRUNCATE TABLE episerp.ta_gzz_estado_civil;
TRUNCATE TABLE episerp.ta_gzz_estado_factura;
TRUNCATE TABLE episerp.ta_gzz_estado_uni_transporte;
TRUNCATE TABLE episerp.ta_gzz_metodo_pago_factura;
TRUNCATE TABLE episerp.ta_gzz_moneda;
TRUNCATE TABLE episerp.ta_gzz_motivo_traslado;
TRUNCATE TABLE episerp.ta_gzz_tipo_cliente;
TRUNCATE TABLE episerp.ta_gzz_tipo_comprobante;
TRUNCATE TABLE episerp.ta_gzz_tipo_descuento;
TRUNCATE TABLE episerp.ta_gzz_tipo_destinatario;
TRUNCATE TABLE episerp.ta_gzz_tipo_devolucion;
TRUNCATE TABLE episerp.ta_gzz_tipo_doc_cliente;
TRUNCATE TABLE episerp.ta_gzz_tipo_doc_proveedor;
TRUNCATE TABLE episerp.ta_gzz_tipo_doc_transportista;
TRUNCATE TABLE episerp.ta_gzz_tipo_doc_usuario;
TRUNCATE TABLE episerp.ta_gzz_tipo_falla_producto;
TRUNCATE TABLE episerp.ta_gzz_tipo_pago_factura;
TRUNCATE TABLE episerp.ta_gzz_tipo_uni_transporte;
TRUNCATE TABLE episerp.ta_gzz_tipo_usuario;
TRUNCATE TABLE episerp.ta_gzz_unidad_med;

SET FOREIGN_KEY_CHECKS = 1;
