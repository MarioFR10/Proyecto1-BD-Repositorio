DECLARE @x XML
SET @x = '<Catalogos>
    <TipoDoc>
        <TipoDocuIdentidad Id="1" Nombre="Cedula Nacional" />
        <TipoDocuIdentidad Id="2" Nombre="Cedula Residente" />
        <TipoDocuIdentidad Id="3" Nombre="Pasaporte" />
        <TipoDocuIdentidad Id="4" Nombre="Cedula Juridica" />
        <TipoDocuIdentidad Id="5" Nombre="Permiso de Trabajo" />
        <TipoDocuIdentidad Id="6" Nombre="Cedula Extranjera" />
    </TipoDoc>
    <TipoMoneda>
        <TipoMoneda Id="1" Nombre="Colones" Simbolo="&#8353;" />
        <TipoMoneda Id="2" Nombre="Dolares" Simbolo="$" />
        <TipoMoneda Id="3" Nombre="Euros" Simbolo="&#8364;" />
    </TipoMoneda>
    <Parentezcos>
        <Parentezco Id="1" Nombre="Padre" />
        <Parentezco Id="2" Nombre="Madre" />
        <Parentezco Id="3" Nombre="Hijo" />
        <Parentezco Id="4" Nombre="Hija" />
        <Parentezco Id="5" Nombre="Hermano" />
        <Parentezco Id="6" Nombre="Hermana" />
        <Parentezco Id="7" Nombre="Amigo" />
        <Parentezco Id="8" Nombre="Amiga" />
        <Parentezco Id="9" Nombre="Pareja" />
    </Parentezcos>
    <Tipo_Cuenta_Ahorro>
        <TipoCuentaAhorro Id="1" Nombre="Proletario" IdTipoMoneda="1" SaldoMinimo="25000.00" MultaSaldoMin="3000.00" CargoMensual="5000" NumRetiroHumano="5" NumRetirosAutomatico="8" ComisionHumano="300" ComisionAutomatico="300" Interes="10" />
        <TipoCuentaAhorro Id="2" Nombre="Profesional" IdTipoMoneda="1" SaldoMinimo="50000.00" MultaSaldoMin="3000.00" CargoMensual="15000" NumRetiroHumano="5" NumRetirosAutomatico="8" ComisionHumano="500" ComisionAutomatico="500" Interes="15" />
        <TipoCuentaAhorro Id="3" Nombre="Exclusivo" IdTipoMoneda="1" SaldoMinimo="100000.00" MultaSaldoMin="3000.00" CargoMensual="30000" NumRetiroHumano="5" NumRetirosAutomatico="8" ComisionHumano="1000" ComisionAutomatico="1000" Interes="20" />
    </Tipo_Cuenta_Ahorro>
    <TipoMovimientos>
        <TipoMovimiento Id="1" Nombre="Compra" Tipo="Debito" />
        <TipoMovimiento Id="2" Nombre="Retiro ATM" Tipo="Debito" />
        <TipoMovimiento Id="3" Nombre="Retiro Ventana" Tipo="Debito" />
        <TipoMovimiento Id="4" Nombre="Deposito en ATM" Tipo="Credito" />
        <TipoMovimiento Id="5" Nombre="Deposito Ventana" Tipo="Credito" />
        <TipoMovimiento Id="6" Nombre="Devolucion de Compra" Tipo="Credito" />
        <TipoMovimiento Id="7" Nombre="Interes del mes sobre saldo minimo" Tipo="Debito" />
        <TipoMovimiento Id="8" Nombre="Comision exceso de operacion en CH" Tipo="Debito" />
        <TipoMovimiento Id="9" Nombre="Comision exceso de operacion en CA" Tipo="Debito" />
    </TipoMovimientos>
    <TiposMovimientoCuentaAhorro>
        <Tipo_Movimiento Id="1" Nombre="Deposito por ahorro" />
        <Tipo_Movimiento Id="2" Nombre="Deposito por redencion de intereses" />
        <Tipo_Movimiento Id="3" Nombre="Redencion de la CO" />
    </TiposMovimientoCuentaAhorro>
    <TiposEvento>
        <TipoEvento Id="1" Nombre="Insertar Beneficiarios" />
        <TipoEvento Id="2" Nombre="Modificar Beneficiario" />
        <TipoEvento Id="3" Nombre="Eliminar (desactivar) Beneficiario" />
        <TipoEvento Id="4" Nombre="Insertar CO" />
        <TipoEvento Id="5" Nombre="Modificar CO" />
        <TipoEvento Id="6" Nombre="Eliminar (desactivar) CO" />
    </TiposEvento>
</Catalogos>'




-----------------------------------------Script de llenado de TypeDocIdentity

INSERT INTO [dbo].[TypeDocIdentity](Id, Name)
SELECT  T.Item.value('@Id', 'int'),
		T.Item.value('@Nombre', 'varchar(100)')
FROM @x.nodes('Catalogos/TipoDoc/TipoDocuIdentidad') as T(Item)

select * from TypeDocIdentity


-----------------------------------------Script de llenado de Coin

INSERT INTO [dbo].[Coin](Id, Name, Symbol)
SELECT  T.Item.value('@Id', 'int'),
		T.Item.value('@Nombre', 'varchar(100)'),
		T.Item.value('@Simbolo', 'varchar(1)')
FROM @x.nodes('Catalogos/TipoMoneda/TipoMoneda') as T(Item)

select * from Coin



------------------------------------------Script de llenado de Relationship


INSERT INTO [dbo].[Relationship](Id, Name)
SELECT  T.Item.value('@Id', 'int'),
		T.Item.value('@Nombre', 'varchar(100)')
FROM @x.nodes('Catalogos/Parentezcos/Parentezco') as T(Item)

select * from Relationship


------------------------------------------Script de llenado de TypeSavingsAccount


INSERT INTO [dbo].[TypeSavingsAccount](Id, 
									Name, 
									CoinId, 
									MinimunBalance, 
									PenaltyForBreach, 
									MensualAccountForService, 
									MaxOpsHuman, 
									MaxOpsAtm, 
									ExceedComisionHumanMont, 									 
									ExceedComisionAtmMont, 
									InterestRate)
SELECT  T.Item.value('@Id', 'int'),
		T.Item.value('@Nombre', 'varchar(100)'),
		T.Item.value('@IdTipoMoneda', 'int'),
		T.Item.value('@SaldoMinimo', 'money'),
		T.Item.value('@MultaSaldoMin', 'money'),
		T.Item.value('@CargoMensual', 'money'),
		T.Item.value('@NumRetiroHumano', 'int'),
		T.Item.value('@NumRetirosAutomatico', 'int'),
		T.Item.value('@ComisionHumano', 'money'),
		T.Item.value('@ComisionAutomatico', 'money'),
		T.Item.value('@Interes', 'float')
FROM @x.nodes('Catalogos/Tipo_Cuenta_Ahorro/TipoCuentaAhorro') as T(Item)


select * from TypeSavingsAccount


------------------------------------------Script de llenado de TypeMovement


SET IDENTITY_INSERT [dbo].[TypeMovement CA] ON
INSERT INTO [dbo].[TypeMovement CA]([Id],
									Name,
									TypeOP)
SELECT T.Item.value('@Id', 'INT'),
	   T.Item.value('@Nombre', 'VARCHAR(50)'),
	   T.Item.value('@Tipo', 'VARCHAR(10)')
FROM @x.nodes('Catalogos/TipoMovimientos/TipoMovimiento') as T(Item)

INSERT [dbo].[TypeMovement CA](Id,
									Name,
									TypeOP)
VALUES (10,
		'Multa Incumplir Saldo Minimo',
		'Debito')

INSERT [dbo].[TypeMovement CA](Id,
							   Name,
							   TypeOP)
VALUES (11,
		'Cargo Mensual',
		'Debito')

SET IDENTITY_INSERT [dbo].[TypeMovement CA] OFF

SELECT * FROM [dbo].[TypeMovement CA]

------------------------------------------Script de llenado de TypeMovCO

SET IDENTITY_INSERT [dbo].[TypeMovCO] ON
INSERT INTO [dbo].[TypeMovCO](Id, Name)
SELECT  T.Item.value('@Id', 'int'),
		T.Item.value('@Nombre', 'varchar(100)')
FROM @x.nodes('Catalogos/TiposMovimientoCuentaAhorro/Tipo_Movimiento') as T(Item)
SET IDENTITY_INSERT [dbo].[TypeMovCO] OFF
select * from TypeMovCO

------------------------------------------Script de llenado de TypeEvent

INSERT INTO [dbo].[TypeEvent](Id, Name)
SELECT  T.Item.value('@Id', 'int'),
		T.Item.value('@Nombre', 'varchar(100)')
FROM @x.nodes('Catalogos/TiposEvento/TipoEvento') as T(Item)

select * from TypeEvent