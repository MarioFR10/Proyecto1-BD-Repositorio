DECLARE @x XML
SET @x = '<Operaciones>
	<FechaOperacion Fecha="2020-07-01">
			<Persona TipoDocuIdentidad="1" Nombre="Javith Aguero Hernandez" ValorDocumentoIdentidad="117370445" FechaNacimiento="1999-03-20" Email="aguerojavith@gmail.com" telefono1="85343403" telefono2="24197636"/>
			<Persona TipoDocuIdentidad="1" Nombre="Osvaldo Aguero Hernandez" ValorDocumentoIdentidad="12738545" FechaNacimiento="1994-10-13" Email="osadage@gmail.com" telefono1="87541766" telefono2="24197545"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="117370445" TipoCuentaId="1" NumeroCuenta="11000001"/>
			<Beneficiario NumeroCuenta="11000001" ValorDocumentoIdentidadBeneficiario="12738545" ParentezcoId="5" Porcentaje="25" />
			<Persona TipoDocuIdentidad="1" Nombre="Franco Quiros Ramirez" ValorDocumentoIdentidad="106030039" FechaNacimiento="1963-04-09" Email="fquiros@itcr.ac.cr" telefono1="87128720" telefono2="22124523"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="106030039" TipoCuentaId="1" NumeroCuenta="11000002"/>
			<Persona TipoDocuIdentidad="1" Nombre="Jessica De Los Angeles Soto Barquro" ValorDocumentoIdentidad="107130178" FechaNacimiento="1967-11-26" Email="jsoto@gmail.com" telefono1="87158720" telefono2="22124523"/>
			<Persona TipoDocuIdentidad="1" Nombre="Diego Eugenio Quiros Soto" ValorDocumentoIdentidad="113850654" FechaNacimiento="1989-03-27" Email="quirosDiego@gmail.com" telefono1="85158720" telefono2="22124523"/>
			<Beneficiario NumeroCuenta="11000002" ValorDocumentoIdentidadBeneficiario="113850654" ParentezcoId="3" Porcentaje="50" />
			<Beneficiario NumeroCuenta="11000002" ValorDocumentoIdentidadBeneficiario="107130178" ParentezcoId="9" Porcentaje="50" />
			<Movimientos Tipo="5" CodigoCuenta="11000001" Monto="100000.00" Descripcion="Sucursal Central" />
			<Movimientos Tipo="1" CodigoCuenta="11000001" Monto="3100.00" Descripcion="Soda Rustica" />
			<Movimientos Tipo="1" CodigoCuenta="11000001" Monto="25000.00" Descripcion="Cabletica" />
			<Movimientos Tipo="5" CodigoCuenta="11000002" Monto="500000.00" Descripcion="Sucursal Occidente" />
	</FechaOperacion>

	<FechaOperacion Fecha="2020-07-02">
			<Persona TipoDocuIdentidad="1" Nombre="Maria Alfaro Briceño" ValorDocumentoIdentidad="108487167" FechaNacimiento="1994-07-15" Email="alfaromaria@hotmail.com" telefono1="72871505" telefono2="25954938"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="108487167" TipoCuentaId="1" NumeroCuenta="11895861"/>
			<Persona TipoDocuIdentidad="1" Nombre="Miguel Leiva Masis" ValorDocumentoIdentidad="188410319" FechaNacimiento="1970-09-06" Email="leivamiguel@yahoo.com" telefono1="67650540" telefono2="29538181"/>
			<Beneficiario NumeroCuenta="11895861" ValorDocumentoIdentidadBeneficiario="188410319" ParentezcoId="9" Porcentaje="72" />
			<Movimientos Tipo="5" CodigoCuenta="11895861" Monto="44438091.00" Descripcion="Banco Central" />
			<Movimientos Tipo="1" CodigoCuenta="11895861" Monto="17625565.00" Descripcion="TELEFÓNICA-MOVISTAR" />
			<Movimientos Tipo="3" CodigoCuenta="11895861" Monto="5595783.00" Descripcion="Banco Central" />
			<Movimientos Tipo="1" CodigoCuenta="11895861" Monto="878028.00" Descripcion="SAMSUNG ELECTRONICS" />
			<Movimientos Tipo="1" CodigoCuenta="11895861" Monto="617854.00" Descripcion="GRUPO SUR" />
			<Movimientos Tipo="3" CodigoCuenta="11895861" Monto="96358.00" Descripcion="Banco Central" />
			<Movimientos Tipo="1" CodigoCuenta="11895861" Monto="82772.00" Descripcion="M COSTA RICA" />
			<Movimientos Tipo="3" CodigoCuenta="11895861" Monto="79050.00" Descripcion="Banco Central" />
			<Movimientos Tipo="1" CodigoCuenta="11895861" Monto="68098.00" Descripcion="CONSTRUCTORA MECO" />
			<Movimientos Tipo="3" CodigoCuenta="11895861" Monto="8434.00" Descripcion="Banco Central" />

			<Persona TipoDocuIdentidad="1" Nombre="Francisco Perez Contreras" ValorDocumentoIdentidad="168856475" FechaNacimiento="1985-09-05" Email="perezfrancisco@hotmail.com" telefono1="63085608" telefono2="27380058"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="168856475" TipoCuentaId="2" NumeroCuenta="11724671"/>
			<Persona TipoDocuIdentidad="1" Nombre="Jorge Guevara Venegas" ValorDocumentoIdentidad="102460905" FechaNacimiento="1972-08-08" Email="guevarajorge@hotmail.com" telefono1="77668951" telefono2="26100667"/>
			<Beneficiario NumeroCuenta="11724671" ValorDocumentoIdentidadBeneficiario="102460905" ParentezcoId="9" Porcentaje="42" />
			<Movimientos Tipo="5" CodigoCuenta="11724671" Monto="66243778.00" Descripcion="Banco Central" />
			<Movimientos Tipo="1" CodigoCuenta="11724671" Monto="18735117.00" Descripcion="MICROSOFT" />
			<Movimientos Tipo="1" CodigoCuenta="11724671" Monto="18370633.00" Descripcion="INCAE BUSINESS SCHOOL" />
			<Movimientos Tipo="1" CodigoCuenta="11724671" Monto="13540926.00" Descripcion="INTERCONTINENTAL HOTELS Y RESORTS" />
			<Movimientos Tipo="1" CodigoCuenta="11724671" Monto="12729300.00" Descripcion="IBM" />
			<Movimientos Tipo="1" CodigoCuenta="11724671" Monto="2410524.00" Descripcion="CORPORACIÓN PIPASA-CARGILL" />
			<Movimientos Tipo="4" CodigoCuenta="11724671" Monto="120000.00" Descripcion="ATM Cartago" />
			<Movimientos Tipo="1" CodigoCuenta="11724671" Monto="1258637.00" Descripcion="AMAZON" />
	</FechaOperacion>

	<FechaOperacion Fecha="2020-07-03">
			<Persona TipoDocuIdentidad="1" Nombre="Carmen Cubero Flores" ValorDocumentoIdentidad="192439288" FechaNacimiento="1990-09-26" Email="cuberocarmen@outlook.com" telefono1="89234645" telefono2="24625296"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="192439288" TipoCuentaId="1" NumeroCuenta="11943745"/>
			<Persona TipoDocuIdentidad="1" Nombre="Óscar Briceño Artavia" ValorDocumentoIdentidad="100467125" FechaNacimiento="1983-04-27" Email="briceñoóscar@outlook.com" telefono1="79128961" telefono2="28203982"/>
			<Beneficiario NumeroCuenta="11943745" ValorDocumentoIdentidadBeneficiario="100467125" ParentezcoId="9" Porcentaje="94" />
			<Movimientos Tipo="5" CodigoCuenta="11943745" Monto="12207164.00" Descripcion="Banco Central" />
			<Movimientos Tipo="1" CodigoCuenta="11943745" Monto="6475043.00" Descripcion="DELOITTE COSTA RICA" />
			<Movimientos Tipo="1" CodigoCuenta="11943745" Monto="1147665.00" Descripcion="BANCO NACIONAL DE COSTA RICA" />
			<Movimientos Tipo="1" CodigoCuenta="11943745" Monto="1016738.00" Descripcion="GRUPO POMA" />
			<Movimientos Tipo="1" CodigoCuenta="11943745" Monto="910390.00" Descripcion="COOPELESCA" />
			<Movimientos Tipo="1" CodigoCuenta="11943745" Monto="712354.00" Descripcion="ALIMENTOS JACKS" />
			<Movimientos Tipo="1" CodigoCuenta="11943745" Monto="192128.00" Descripcion="ALLERGAN" />
			<Movimientos Tipo="1" CodigoCuenta="11943745" Monto="147685.00" Descripcion="TOYOTA PURDY MOTOR" />
			<Movimientos Tipo="1" CodigoCuenta="11943745" Monto="66449.00" Descripcion="PROCTER Y GAMBLE" />
			<Movimientos Tipo="1" CodigoCuenta="11943745" Monto="52972.00" Descripcion="ALIMENTOS JACKS" />
			<Movimientos Tipo="1" CodigoCuenta="11943745" Monto="5323.00" Descripcion="MCDONALDS" />
			<Persona TipoDocuIdentidad="1" Nombre="Teresa Gomez Mora" ValorDocumentoIdentidad="160998916" FechaNacimiento="1991-03-22" Email="gomezteresa@outlook.com" telefono1="63823034" telefono2="26974004"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="160998916" TipoCuentaId="1" NumeroCuenta="11936606"/>
			<Persona TipoDocuIdentidad="1" Nombre="Pedro Ureña Contreras" ValorDocumentoIdentidad="101055382" FechaNacimiento="1999-03-27" Email="ureñaana@gmail.com" telefono1="77230010" telefono2="21457458"/>
			<Beneficiario NumeroCuenta="11936606" ValorDocumentoIdentidadBeneficiario="101055382" ParentezcoId="9" Porcentaje="81" />
			<Movimientos Tipo="5" CodigoCuenta="11936606" Monto="72916240.00" Descripcion="Banco Central" />
			<Movimientos Tipo="1" CodigoCuenta="11936606" Monto="36689474.00" Descripcion="DELOITTE COSTA RICA" />
			<Persona TipoDocuIdentidad="1" Nombre="Francisco Villarreal Picado" ValorDocumentoIdentidad="152711632" FechaNacimiento="1994-05-07" Email="villarrealfrancisco@gmail.com" telefono1="78218724" telefono2="25105757"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="152711632" TipoCuentaId="2" NumeroCuenta="11509890"/>
			<Persona TipoDocuIdentidad="1" Nombre="Rosa Fonseca Moreno" ValorDocumentoIdentidad="108486280" FechaNacimiento="1985-03-18" Email="fonsecarosa@gmail.com" telefono1="83067936" telefono2="27840970"/>
			<Beneficiario NumeroCuenta="11509890" ValorDocumentoIdentidadBeneficiario="108486280" ParentezcoId="9" Porcentaje="98" />
			<Movimientos Tipo="5" CodigoCuenta="11509890" Monto="33717740.00" Descripcion="Banco Central" />
			<Movimientos Tipo="1" CodigoCuenta="11509890" Monto="20932772.00" Descripcion="HEWLETT-PACKARD" />
			<Movimientos Tipo="2" CodigoCuenta="11509890" Monto="11041892.00" Descripcion="ATM Central" />
			<Movimientos Tipo="1" CodigoCuenta="11509890" Monto="7264828.00" Descripcion="ALIMENTOS PROSALUD" />
			<Movimientos Tipo="1" CodigoCuenta="11509890" Monto="6290305.00" Descripcion="TIENDAS UNIVERSAL" />
			<Movimientos Tipo="1" CodigoCuenta="11509890" Monto="4430177.00" Descripcion="COOPERATIVA DE PRODUCTORES DE LECHE DOS PINOS" />
			<Movimientos Tipo="1" CodigoCuenta="11509890" Monto="1743393.00" Descripcion="ALIMENTOS PROSALUD" />
			<Movimientos Tipo="1" CodigoCuenta="11509890" Monto="190397.00" Descripcion="ALLERGAN" />
			<Movimientos Tipo="2" CodigoCuenta="11509890" Monto="173940.00" Descripcion="ATM Central" />
			<Movimientos Tipo="1" CodigoCuenta="11509890" Monto="71906.00" Descripcion="KÖLBI" />
			<Movimientos Tipo="2" CodigoCuenta="11509890" Monto="30000.00" Descripcion="ATM Central" />
			<Movimientos Tipo="2" CodigoCuenta="11509890" Monto="20000.00" Descripcion="ATM Central" />
	</FechaOperacion>

	<FechaOperacion Fecha="2020-07-04">
			<Persona TipoDocuIdentidad="1" Nombre="Fernanda Cordoba Cerdas" ValorDocumentoIdentidad="185351883" FechaNacimiento="2009-02-16" Email="cordobafernanda@hotmail.com" telefono1="66836486" telefono2="23176655"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="185351883" TipoCuentaId="2" NumeroCuenta="11481918"/>
			<Persona TipoDocuIdentidad="1" Nombre="Óscar Benavides Murillo" ValorDocumentoIdentidad="143713856" FechaNacimiento="1982-01-04" Email="benavidesóscar@outlook.com" telefono1="83784257" telefono2="22343789"/>
			<Beneficiario NumeroCuenta="11481918" ValorDocumentoIdentidadBeneficiario="143713856" ParentezcoId="9" Porcentaje="46" />
			<Persona TipoDocuIdentidad="1" Nombre="Martin Alfaro Gamboa" ValorDocumentoIdentidad="118882593" FechaNacimiento="1985-11-11" Email="alfaromartin@outlook.com" telefono1="85581606" telefono2="25360609"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="118882593" TipoCuentaId="1" NumeroCuenta="11912110"/>
			<Persona TipoDocuIdentidad="1" Nombre="Francisca Orozco Carvajal" ValorDocumentoIdentidad="153062089" FechaNacimiento="1985-08-25" Email="orozcofrancisca@yahoo.com" telefono1="67486873" telefono2="23388007"/>
			<Beneficiario NumeroCuenta="11912110" ValorDocumentoIdentidadBeneficiario="153062089" ParentezcoId="9" Porcentaje="100" />
			<Persona TipoDocuIdentidad="1" Nombre="Marco Lizano Oviedo" ValorDocumentoIdentidad="144098161" FechaNacimiento="1990-02-22" Email="lizanomarco@yahoo.com" telefono1="76298360" telefono2="25404777"/>
			<Cuenta ValorDocumentoIdentidadDelCliente="144098161" TipoCuentaId="3" NumeroCuenta="11558194"/>
			<Persona TipoDocuIdentidad="1" Nombre="Pedro Barrantes Fernandez" ValorDocumentoIdentidad="110730448" FechaNacimiento="2010-09-18" Email="barrantespedro@outlook.com" telefono1="70082297" telefono2="26074494"/>
			<Beneficiario NumeroCuenta="11558194" ValorDocumentoIdentidadBeneficiario="110730448" ParentezcoId="9" Porcentaje="100" />
			<Movimientos Tipo="5" CodigoCuenta="11481918" Monto="3022962.00" Descripcion="Banco Central" />
			<Movimientos Tipo="1" CodigoCuenta="11481918" Monto="666651.00" Descripcion="KIMBERLY CLARK" />
			<Movimientos Tipo="1" CodigoCuenta="11481918" Monto="149076.00" Descripcion="CONSTRUCTORA MECO" />
			<Movimientos Tipo="1" CodigoCuenta="11481918" Monto="70070.00" Descripcion="BOSTON SCIENTIFIC" />
			<Movimientos Tipo="1" CodigoCuenta="11481918" Monto="65657.00" Descripcion="GRUPO MONGE" />
			<Movimientos Tipo="1" CodigoCuenta="11481918" Monto="40105.00" Descripcion="GRUPO POMA" />
			<Movimientos Tipo="1" CodigoCuenta="11481918" Monto="39192.00" Descripcion="LEAD UNIVERSITY" />
			<Movimientos Tipo="1" CodigoCuenta="11481918" Monto="33093.00" Descripcion="AMAZON" />
			<Movimientos Tipo="1" CodigoCuenta="11481918" Monto="27093.00" Descripcion="COOPELESCA" />
			<Movimientos Tipo="1" CodigoCuenta="11481918" Monto="18753.00" Descripcion="LABORATORIOS ROCHE" />
			<Movimientos Tipo="5" CodigoCuenta="11558194" Monto="24137744.00" Descripcion="Banco Central" />
			<Movimientos Tipo="1" CodigoCuenta="11558194" Monto="12463171.00" Descripcion="TOYOTA PURDY MOTOR" />
			<Movimientos Tipo="1" CodigoCuenta="11558194" Monto="4044631.00" Descripcion="MCDONALDS" />
			<Movimientos Tipo="1" CodigoCuenta="11558194" Monto="408292.00" Descripcion="IBM" />
			<Movimientos Tipo="1" CodigoCuenta="11558194" Monto="279679.00" Descripcion="HUAWEI" />
			<Movimientos Tipo="1" CodigoCuenta="11558194" Monto="37507.00" Descripcion="GRUPO PROMERICA" />
			<Movimientos Tipo="1" CodigoCuenta="11558194" Monto="18217.00" Descripcion="FARMACIAS LA BOMBA" />
			<Movimientos Tipo="1" CodigoCuenta="11558194" Monto="5209.00" Descripcion="COCA COLA FEMSA" />
			<Movimientos Tipo="1" CodigoCuenta="11558194" Monto="3058.00" Descripcion="PWC" />
			<Movimientos Tipo="5" CodigoCuenta="11912110" Monto="64349851.00" Descripcion="Banco Central" />
			<Movimientos Tipo="1" CodigoCuenta="11912110" Monto="31121058.00" Descripcion="ABBOTT" />
			<Movimientos Tipo="1" CodigoCuenta="11912110" Monto="4448490.00" Descripcion="TOYOTA PURDY MOTOR" />
			<Movimientos Tipo="1" CodigoCuenta="11912110" Monto="1260568.00" Descripcion="WALMART CENTROAMÉRICA" />
			<Movimientos Tipo="1" CodigoCuenta="11912110" Monto="73178.00" Descripcion="AERIS HOLDING" />
			<Movimientos Tipo="1" CodigoCuenta="11912110" Monto="32547.00" Descripcion="GRUPO ICE" />
			<Movimientos Tipo="1" CodigoCuenta="11912110" Monto="28555.00" Descripcion="MICROSOFT" />
			<Movimientos Tipo="1" CodigoCuenta="11912110" Monto="3553.00" Descripcion="CLARO COSTA RICA" />
			<Movimientos Tipo="1" CodigoCuenta="11912110" Monto="2778.00" Descripcion="BOSTON SCIENTIFIC" />
	</FechaOperacion>
</Operaciones>'





---------------------------------------------Script de insercion de person

DECLARE @TempFechas TABLE ( Sec int IDENTITY(1,1), 
							 fechaOperacion DATE)

	DECLARE @TempPersonas TABLE ( Sec int IDENTITY(1,1),
									 TipoDocIdent INT,
									 Nombre VARCHAR(100),
									 ValorDocumentoIdentidad VARCHAR(50),
									 FechaNacimiento DATE,
									 Email VARCHAR(100),
									 Telefono1 VARCHAR(20),
									 Telefono2 VARCHAR(20))

	DECLARE @TempCuentas TABLE ( Sec int IDENTITY(1,1), 
								TipoCuentaID INT,
								ValDocIDent VARCHAR(50),
								NumeroCuenta VARCHAR(50))

	DECLARE @TempBeneficiario TABLE ( Sec int IDENTITY(1,1), 
								ParentescoID INT,
								ValDocIdent VARCHAR(50),
								NumeroCuenta VARCHAR(50),
								Porcentaje INT)
	
	DECLARE @TempMovimientos TABLE ( Sec int IDENTITY(1,1), 
								NumCuenta VARCHAR(50),
								TipoMovimiento INT,
								Monto MONEY,
								Descripcion VARCHAR(100))


	-------------------tabla prueba insert select----------------------
	DECLARE @TempPruebas TABLE (Sec INT IDENTITY(1,1),
								TipoCuentaID INT,
								PersonaId INT,
								NumeroCuenta VARCHAR(50))
	-------------------------------------------------------------------


	INSERT INTO @TempFechas(fechaOperacion)
	SELECT  T.Item.value('@Fecha', 'DATE')
	FROM @x.nodes('Operaciones/FechaOperacion') as T(Item)

	select * from @TempFechas

	DECLARE @OperationDate DATE,
			@lo1 DATE, --iteradores
			@hi1 DATE,
			@personaID INT

	SELECT @lo1 = MIN(fechaOperacion),
		   @hi1 = MAX(fechaOperacion)
	FROM @TempFechas

	--SET @OperationDate = '2020-07-01'

	WHILE @lo1 <= @hi1
		BEGIN
			
			--borrando las filas de las tablas
			--DELETE @TempPersonas
			DELETE @TempCuentas
			DELETE @TempBeneficiario
			DELETE @TempMovimientos
			--reiniciar Id
			--DBCC CHECKIDENT (AccesoUsuario, RESEED, 0)

			--insert en tabla person

			INSERT INTO [dbo].[Person](TypeDocId,
									Name,
									ValueDocIden,
									DateOfBirth,
									Email,
									Phone1,
									Phone2,
									InsertAt,
									InsertBy,
									InsertIn)
			SELECT  T.Item.value('@TipoDocuIdentidad','INT'),
					T.Item.value('@Nombre', 'VARCHAR(100)'),
					T.Item.value('@ValorDocumentoIdentidad', 'varchar(50)'),
					T.Item.value('@FechaNacimiento','DATE'),
					T.Item.value('@Email','VARCHAR(100)'),
					T.Item.value('@telefono1','VARCHAR(20)'),
					T.Item.value('@telefono2','VARCHAR(20)'),
					GETDATE(),
					'Script',
					'186.176.102.189'
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@lo1")]/Persona') as T(Item)

			select * from @TempPersonas

			--Insertar en tablas variables

			INSERT INTO @TempCuentas(TipoCuentaID,
									 ValDocIDent,
									 NumeroCuenta)
			SELECT T.Item.value('@TipoCuentaId','INT'),
				   T.Item.value('@ValorDocumentoIdentidadDelCliente','VARCHAR(50)'),
				   T.Item.value('@NumeroCuenta','VARCHAR(50)')
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@lo1")]/Cuenta') as T(Item)

			select * from @TempCuentas

			--WHERE 
			--SELECT TC.TipoCuentaID,
			--	   @personaID,
			--	   TC.NumeroCuenta
			--FROM @TempCuentas TC
			

			--INSERT INTO table2 (column1, column2, column3, ...)
			--SELECT column1, column2, column3, ...
			--FROM table1
			--WHERE condition;

			INSERT INTO @TempBeneficiario(ParentescoID,
									 ValDocIDent,
									 NumeroCuenta,
									 Porcentaje)
			SELECT T.Item.value('@ParentezcoId','INT'),
				   T.Item.value('@ValorDocumentoIdentidadBeneficiario','VARCHAR(50)'),
	  			   T.Item.value('@NumeroCuenta','VARCHAR(50)'),
				   T.Item.value('@Porcentaje','INT')
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@lo1")]/Beneficiario') as T(Item)

			select * from @TempBeneficiario

			INSERT INTO @TempMovimientos(NumCuenta,
									 TipoMovimiento,
									 Monto,
									 Descripcion)
			SELECT T.Item.value('@CodigoCuenta','VARCHAR(50)'),
				   T.Item.value('@Tipo','INT'),
				   T.Item.value('@Monto','MONEY'),
				   T.Item.value('@Descripcion','VARCHAR(100)')
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@lo1")]/Movimientos') as T(Item)

			select * from @TempMovimientos

			--------Insertar en tablas--------

			--------SavingAccount
			INSERT INTO [dbo].[SavingsAccount] (TypeSavingsAccountId,
												PersonId,
												Balance,
												CreationDate,
												AccountNumber,
												InsertAt,
												InsertBy,
												InsertIn)
			SELECT TC.TipoCuentaID,
				   TP.Sec,
				   0,
				   @lo1,
				   TC.NumeroCuenta,
				   GETDATE(),
				   'Script',
				   '186.176.102.189'
			FROM @TempCuentas TC
			INNER JOIN @TempPersonas TP ON TP.ValorDocumentoIdentidad = TC.ValDocIDent

			select * from [dbo].[SavingsAccount]
			--------SavingAccount

			--------Benefactor
			INSERT INTO [dbo].[Benefactor] (RelationshipId,
											PersonId,
											SavingsAccountId,
											Name,
											Percentage,
											Condition,
											InsertAt,
											InsertBy,
											InsertIn)
			SELECT TB.ParentescoID,
				   TP.Sec,
				   TC.Sec,
				   TP.Nombre,
				   TB.Porcentaje,
				   1,
				   GETDATE(),
				   'Script',
				   '186.176.102.189'
			FROM @TempBeneficiario TB
			INNER JOIN @TempPersonas TP ON TP.ValorDocumentoIdentidad = TB.ValDocIdent
			INNER JOIN @TempCuentas TC ON TC.NumeroCuenta = TB.NumeroCuenta

			select * from [dbo].[Benefactor]
			--------Benefactor

			--------Movimiento
			INSERT INTO [dbo].[Movement CA] (SavingsAccountId,
											TypeMovId,
											AccountStatementId,
											Amount,
											NewBalance,
											Description,
											Visible,
											DateOfMov)
			SELECT TC.Sec,
				   TM.TipoMovimiento,
				   AC.Id,
				   TM.Monto,
				   SA.Balance + TM.Monto,
				   TM.Descripcion,
				   1,
				   @lo1
			FROM @TempMovimientos TM
			INNER JOIN @TempCuentas TC ON TC.NumeroCuenta = TM.NumCuenta
			INNER JOIN [dbo].[AccountStatement] AC ON AC.SavingsAccountId = TC.Sec
			INNER JOIN [dbo].[SavingsAccount] SA ON SA.Id = TC.Sec

			--------Movimiento
			SET @lo1=DATEADD(d,1,@lo1)

		END

