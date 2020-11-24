
DECLARE @x xml = '
<Operaciones>
	<FechaOperacion Fecha="2020-07-01">
			<Persona TipoDocuIdentidad="1" Nombre="Javith Aguero Hernandez" ValorDocumentoIdentidad="117370445" FechaNacimiento="1999-03-20" Email="aguerojavith@gmail.com" Telefono1="85343403" Telefono2="24197636"/>
			<Persona TipoDocuIdentidad="1" Nombre="Osvaldo Aguero Hernandez" ValorDocumentoIdentidad="12738545" FechaNacimiento="1994-10-13" Email="osadage@gmail.com" Telefono1="87541766" Telefono2="24197545"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="117370445" TipoCuentaId="1" NumeroCuenta="11000001"/>
			<Beneficiario NumeroCuenta="11000001" ValorDocumentoIdentidadBeneficiario="12738545" ParentezcoId="5" Porcentaje="25" />
			<Persona TipoDocuIdentidad="1" Nombre="Franco Quiros Ramirez" ValorDocumentoIdentidad="106030039" FechaNacimiento="1963-04-09" Email="fquiros@itcr.ac.cr" Telefono1="87128720" Telefono2="22124523"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="106030039" TipoCuentaId="1" NumeroCuenta="11000002"/>
			<Persona TipoDocuIdentidad="1" Nombre="Jessica De Los Angeles Soto Barquro" ValorDocumentoIdentidad="107130178" FechaNacimiento="1967-11-26" Email="jsoto@gmail.com" Telefono1="87158720" Telefono2="22124523"/>
			<Persona TipoDocuIdentidad="1" Nombre="Diego Eugenio Quiros Soto" ValorDocumentoIdentidad="113850654" FechaNacimiento="1989-03-27" Email="quirosDiego@gmail.com" Telefono1="85158720" Telefono2="22124523"/>
			<Beneficiario NumeroCuenta="11000002" ValorDocumentoIdentidadBeneficiario="113850654" ParentezcoId="3" Porcentaje="50" />
			<Beneficiario NumeroCuenta="11000002" ValorDocumentoIdentidadBeneficiario="107130178" ParentezcoId="9" Porcentaje="50" />
			<Movimientos Tipo="5" CodigoCuenta="11000001" Monto="100000.00" Descripcion="Sucursal Central" />
			<Movimientos Tipo="1" CodigoCuenta="11000001" Monto="3100.00" Descripcion="Soda Rustica" />
			<Movimientos Tipo="1" CodigoCuenta="11000001" Monto="25000.00" Descripcion="Cabletica" />
			<Movimientos Tipo="5" CodigoCuenta="11000002" Monto="500000.00" Descripcion="Sucursal Occidente" />
	</FechaOperacion>

	<FechaOperacion Fecha="2020-07-02">
			<Persona TipoDocuIdentidad="1" Nombre="Javith Aguero Hernandez" ValorDocumentoIdentidad="117370445" FechaNacimiento="1999-03-20" Email="aguerojavith@gmail.com" Telefono1="85343403" Telefono2="24197636"/>
			<Persona TipoDocuIdentidad="1" Nombre="Osvaldo Aguero Hernandez" ValorDocumentoIdentidad="12738545" FechaNacimiento="1994-10-13" Email="osadage@gmail.com" Telefono1="87541766" Telefono2="24197545"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="117370445" TipoCuentaId="1" NumeroCuenta="11000001"/>
			<Beneficiario NumeroCuenta="11000001" ValorDocumentoIdentidadBeneficiario="12738545" ParentezcoId="5" Porcentaje="25" />
			<Persona TipoDocuIdentidad="1" Nombre="Franco Quiros Ramirez" ValorDocumentoIdentidad="106030039" FechaNacimiento="1963-04-09" Email="fquiros@itcr.ac.cr" Telefono1="87128720" Telefono2="22124523"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="106030039" TipoCuentaId="1" NumeroCuenta="11000002"/>
			<Persona TipoDocuIdentidad="1" Nombre="Jessica De Los Angeles Soto Barquro" ValorDocumentoIdentidad="107130178" FechaNacimiento="1967-11-26" Email="jsoto@gmail.com" Telefono1="87158720" Telefono2="22124523"/>
			<Persona TipoDocuIdentidad="1" Nombre="Diego Eugenio Quiros Soto" ValorDocumentoIdentidad="113850654" FechaNacimiento="1989-03-27" Email="quirosDiego@gmail.com" Telefono1="85158720" Telefono2="22124523"/>
			<Beneficiario NumeroCuenta="11000002" ValorDocumentoIdentidadBeneficiario="113850654" ParentezcoId="3" Porcentaje="50" />
			<Beneficiario NumeroCuenta="11000002" ValorDocumentoIdentidadBeneficiario="107130178" ParentezcoId="9" Porcentaje="50" />
			<Movimientos Tipo="5" CodigoCuenta="11000001" Monto="100000.00" Descripcion="Sucursal Central" />
			<Movimientos Tipo="1" CodigoCuenta="11000001" Monto="3100.00" Descripcion="Soda Rustica" />
			<Movimientos Tipo="1" CodigoCuenta="11000001" Monto="25000.00" Descripcion="Cabletica" />
			<Movimientos Tipo="5" CodigoCuenta="11000002" Monto="500000.00" Descripcion="Sucursal Occidente" />
	</FechaOperacion>
</Operaciones>	
'



DECLARE @tempFechaOP TABLE(sec int identity(1,1), fecha date)

INSERT INTO @tempFechaOP (fecha)
		SELECT  T.Item.value('@Fecha', 'date')
FROM @x.nodes('Operaciones/FechaOperacion') as T(Item)

	INSERT INTO PERSONAS (A)										--igual que progra pasada
	SELECT T.Item.value('@Fecha', 'date')
	FROM @x.nodes('Operaciones/FechaOperacion/Persona') as T(Item)

	INSERT INTO CUENTA (A)
	SELECT T.Item.value('@Fecha', 'date')
	FROM @x.nodes('Operaciones/FechaOperacion/Cuenta') as T(Item)

	INSERT INTO BENEFICIARIO (A)
	SELECT T.Item.value('@Fecha', 'date')
	FROM @x.nodes('Operaciones/FechaOperacion/Beneficiaro') as T(Item)


	INSERT INTO MOVIMIENTOS (A)				--mapeo de id de cuenta, mapear el balance de cuenta asociada, 
											--mapear la fecha del movimiento, se modifica el balance de la cuenta en el momento de insercion
	SELECT T.Item.value('@Fecha', 'date')
	FROM @x.nodes('Operaciones/FechaOperacion/Movimientos') as T(Item)


SELECT * FROM @tempFechaOP 


/*
Estado Cuenta

		fecha 
		tipo mov
		descripcion
		monto -+
		saldo que queda

		fecha 
		tipo mov
		descripcion
		monto -+
		saldo que queda

		fecha 
		tipo mov
		descripcion
		monto -+
		saldo que queda
*/