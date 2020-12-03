DECLARE @x XML
SET @x = '<Operaciones>
	<FechaOperacion Fecha="2020-07-01">
	   <Persona TipoDocuIdentidad="1" Nombre="David Arroyo Mesen" ValorDocumentoIdentidad="117171162" FechaNacimiento="1976-08-14" Email="arroyodavid736@outlook.com" Telefono1="73562984" Telefono2="22816530"/>
	   <Persona TipoDocuIdentidad="1" Nombre="Marco Umaña Serrano" ValorDocumentoIdentidad="106129872" FechaNacimiento="1982-12-09" Email="umañamarco8093@hotmail.com" Telefono1="66035188" Telefono2="28350149"/>
	   <Cuenta ValorDocumentoIdentidadDelCliente="117171162" TipoCuentaId="3" NumeroCuenta="11887777"/>
	   <Beneficiario NumeroCuenta="11887777" ValorDocumentoIdentidadBeneficiario="106129872" ParentezcoId="9" Porcentaje="23" />
	   <Movimientos Tipo="5" CodigoCuenta="11887777" Monto="4129304.00" Descripcion="Banco Central" />
	   <Movimientos Tipo="1" CodigoCuenta="11887777" Monto="436026.00" Descripcion="ESTABLISHMENT LAB" />
	   <Movimientos Tipo="4" CodigoCuenta="11887777" Monto="1396981.00" Descripcion="ATM CENTRAL" />
	   <Movimientos Tipo="1" CodigoCuenta="11887777" Monto="1248332.00" Descripcion="CORPORACIoN PIPASA-CARGILL" />
	   <Movimientos Tipo="4" CodigoCuenta="11887777" Monto="5983.00" Descripcion="ATM CARTAGO" />
	   <Movimientos Tipo="1" CodigoCuenta="11887777" Monto="391369.00" Descripcion="GRUPO PROMERICA" />
	   <Movimientos Tipo="5" CodigoCuenta="11887777" Monto="6684.00" Descripcion="ATM SAN JOSE" />
	   <Movimientos Tipo="1" CodigoCuenta="11887777" Monto="116556.00" Descripcion="BRITISH AMERICAN TOBACCO (BATCA)" />
	   <Movimientos Tipo="1" CodigoCuenta="11887777" Monto="23353.00" Descripcion="HEWLETT-PACKARD" />
	   <Movimientos Tipo="5" CodigoCuenta="11887777" Monto="44244.00" Descripcion="ATM CENTRAL" />
	   <Movimientos Tipo="1" CodigoCuenta="11887777" Monto="526433.00" Descripcion="GRUPO BIMBO" />
	   <Movimientos Tipo="1" CodigoCuenta="11887777" Monto="29400.00" Descripcion="GRUPO EL aNGEL" />
	   <Movimientos Tipo="1" CodigoCuenta="11887777" Monto="3341.00" Descripcion="CLARO COSTA RICA" />
	   <Movimientos Tipo="1" CodigoCuenta="11887777" Monto="2072.00" Descripcion="INTEL COSTA RICA" />
	</FechaOperacion>
	<FechaOperacion Fecha="2020-07-02">
	   <Persona TipoDocuIdentidad="1" Nombre="Jose Artavia Rivera" ValorDocumentoIdentidad="149892757" FechaNacimiento="1986-08-05" Email="artaviajose8871@hotmail.com" Telefono1="62803162" Telefono2="21907897"/>
	   <Persona TipoDocuIdentidad="1" Nombre="oscar Muñoz Arroyo" ValorDocumentoIdentidad="132200129" FechaNacimiento="1981-12-15" Email="muñozoscar6143@hotmail.com" Telefono1="83071212" Telefono2="26995983"/>
	   <Cuenta ValorDocumentoIdentidadDelCliente="149892757" TipoCuentaId="1" NumeroCuenta="11834714"/>
	   <Beneficiario NumeroCuenta="11834714" ValorDocumentoIdentidadBeneficiario="132200129" ParentezcoId="9" Porcentaje="79" />
	   <Movimientos Tipo="5" CodigoCuenta="11834714" Monto="80673703.00" Descripcion="Banco Central" />
	   <Movimientos Tipo="1" CodigoCuenta="11834714" Monto="75884062.00" Descripcion="AMAZON" />
	   <Movimientos Tipo="1" CodigoCuenta="11834714" Monto="3743489.00" Descripcion="KÖLBI" />
	   <Movimientos Tipo="4" CodigoCuenta="11834714" Monto="73847.00" Descripcion="ATM PUNTARENAS" />
	   <Movimientos Tipo="1" CodigoCuenta="11834714" Monto="306569.00" Descripcion="APM TERMINALS" />
	   <Movimientos Tipo="5" CodigoCuenta="11834714" Monto="459311.00" Descripcion="ATM CARTAGO" />
	   <Movimientos Tipo="1" CodigoCuenta="11834714" Monto="73546.00" Descripcion="HOSPITAL CIMA SAN JOSe" />
	   <Movimientos Tipo="5" CodigoCuenta="11834714" Monto="213308.00" Descripcion="ATM PUNTARENAS" />
	   <Movimientos Tipo="1" CodigoCuenta="11834714" Monto="883656.00" Descripcion="SODA LA ESQUINA" />
	   <Movimientos Tipo="1" CodigoCuenta="11834714" Monto="270599.00" Descripcion="DHL" />
	</FechaOperacion>
	<FechaOperacion Fecha="2020-07-03">
	   <Persona TipoDocuIdentidad="1" Nombre="Maria Hernandez Robles" ValorDocumentoIdentidad="141581201" FechaNacimiento="1982-01-17" Email="hernandezmaria9676@gmail.com" Telefono1="84851700" Telefono2="23034803"/>
	   <Persona TipoDocuIdentidad="1" Nombre="Fernanda Zamora Orozco" ValorDocumentoIdentidad="147960534" FechaNacimiento="1991-06-15" Email="zamorafernanda5475@yahoo.com" Telefono1="71341062" Telefono2="20155437"/>
	   <Cuenta ValorDocumentoIdentidadDelCliente="141581201" TipoCuentaId="3" NumeroCuenta="11362094"/>
	   <Beneficiario NumeroCuenta="11362094" ValorDocumentoIdentidadBeneficiario="147960534" ParentezcoId="9" Porcentaje="81" />
	   <Movimientos Tipo="5" CodigoCuenta="11362094" Monto="88288602.00" Descripcion="Banco Central" />
	   <Movimientos Tipo="1" CodigoCuenta="11362094" Monto="17264483.00" Descripcion="COOPERATIVA DE PRODUCTORES DE LECHE DOS PINOS" />
	   <Movimientos Tipo="4" CodigoCuenta="11362094" Monto="41848829.00" Descripcion="ATM SAN JOSE" />
	   <Movimientos Tipo="1" CodigoCuenta="11362094" Monto="15637586.00" Descripcion="GRUPO PROMERICA" />
	   <Movimientos Tipo="5" CodigoCuenta="11362094" Monto="389249.00" Descripcion="ATM SAN JOSE" />
	   <Movimientos Tipo="1" CodigoCuenta="11362094" Monto="5110874.00" Descripcion="GARNIER Y GARNIER DESARROLLOS INMOBILIARIOS" />
	   <Movimientos Tipo="1" CodigoCuenta="11362094" Monto="6509776.00" Descripcion="SAMSUNG ELECTRONICS" />
	   <Movimientos Tipo="4" CodigoCuenta="11362094" Monto="2076698.00" Descripcion="ATM SAN PEDRO" />
	   <Movimientos Tipo="1" CodigoCuenta="11362094" Monto="136448.00" Descripcion="GRUPO NUMAR" />
	   <Movimientos Tipo="1" CodigoCuenta="11362094" Monto="43637.00" Descripcion="M COSTA RICA" />
	   <Movimientos Tipo="4" CodigoCuenta="11362094" Monto="40202.00" Descripcion="ATM SAN PEDRO" />
	   <Movimientos Tipo="1" CodigoCuenta="11362094" Monto="5517.00" Descripcion="PORTAFOLIO INMOBILIARIO SA (PINMSA)" />
	   <Movimientos Tipo="1" CodigoCuenta="11362094" Monto="3460.00" Descripcion="HUAWEI" />
	</FechaOperacion>
	<FechaOperacion Fecha="2020-07-04">
	   <Persona TipoDocuIdentidad="1" Nombre="Guadalupe Mesen Retana" ValorDocumentoIdentidad="121434173" FechaNacimiento="1971-12-13" Email="mesenguadalupe5550@hotmail.com" Telefono1="71031055" Telefono2="26208224"/>
	   <Usuario User="guadalupemesen2924" Pass="password1" ValorDocumentoIdentidad="121434173" EsAdministrador="0" />
	   <Persona TipoDocuIdentidad="1" Nombre="Rosario Elizondo Aguilar" ValorDocumentoIdentidad="178375881" FechaNacimiento="1979-12-20" Email="elizondorosario1517@outlook.com" Telefono1="79797444" Telefono2="26580785"/>
	   <Usuario User="rosarioelizondo6572" Pass="password" ValorDocumentoIdentidad="178375881" EsAdministrador="0" />
	   <Cuenta ValorDocumentoIdentidadDelCliente="121434173" TipoCuentaId="1" NumeroCuenta="11435357"/>
	   <Beneficiario NumeroCuenta="11435357" ValorDocumentoIdentidadBeneficiario="178375881" ParentezcoId="9" Porcentaje="59" />
	   <Movimientos Tipo="5" CodigoCuenta="11435357" Monto="37007838.00" Descripcion="Banco Central" />
	   <UsuarioPuedeVer User="guadalupemesen2924" NumeroCuenta="11435357" />
	   <Movimientos Tipo="1" CodigoCuenta="11435357" Monto="16081219.00" Descripcion="GRUPO IREX" />
	   <Movimientos Tipo="4" CodigoCuenta="11435357" Monto="15459390.00" Descripcion="ATM CARTAGO" />
	   <Movimientos Tipo="5" CodigoCuenta="11435357" Monto="542855.00" Descripcion="ATM CARTAGO" />
	   <UsuarioPuedeVer User="guadalupemesen2924" NumeroCuenta="11834714" />
	   <Movimientos Tipo="1" CodigoCuenta="11435357" Monto="1605964.00" Descripcion="GRUPO PRO GPP" />
	   <UsuarioPuedeVer User="guadalupemesen2924" NumeroCuenta="11435357" />
	   <Movimientos Tipo="1" CodigoCuenta="11435357" Monto="1498650.00" Descripcion="ESTABLISHMENT LAB" />
	   <UsuarioPuedeVer User="rosarioelizondo6572" NumeroCuenta="11362094" />
	   <Movimientos Tipo="1" CodigoCuenta="11435357" Monto="942823.00" Descripcion="SODA LA IGLESIA" />
	   <UsuarioPuedeVer User="guadalupemesen2924" NumeroCuenta="11435357" />
	   <Movimientos Tipo="1" CodigoCuenta="11435357" Monto="467763.00" Descripcion="MONDELĒZ" />
	   <UsuarioPuedeVer User="guadalupemesen2924" NumeroCuenta="11435357" />
	   <Movimientos Tipo="1" CodigoCuenta="11435357" Monto="1426833.00" Descripcion="GRUPO UNICOMER" />
	   <Movimientos Tipo="4" CodigoCuenta="11435357" Monto="59846.00" Descripcion="ATM PUNTARENAS" />
	   <UsuarioPuedeVer User="rosarioelizondo6572" NumeroCuenta="11435357" />
	   <Movimientos Tipo="1" CodigoCuenta="11435357" Monto="5589.00" Descripcion="INCAE BUSINESS SCHOOL" />
	   <UsuarioPuedeVer User="rosarioelizondo6572" NumeroCuenta="11834714" />
	   <Movimientos Tipo="1" CodigoCuenta="11435357" Monto="1729.00" Descripcion="MCDONALDS" />
	   <UsuarioPuedeVer User="guadalupemesen2924" NumeroCuenta="11435357" />
	</FechaOperacion>
	<FechaOperacion Fecha="2020-08-03">
	   <Persona TipoDocuIdentidad="1" Nombre="Guadalupe Serrano Roman" ValorDocumentoIdentidad="117359964" FechaNacimiento="1979-12-15" Email="serranoguadalupe2842@outlook.com" Telefono1="84668763" Telefono2="29893862"/>
	   <Usuario User="guadalupeserrano2969" Pass="!@#$%^Y*" ValorDocumentoIdentidad="117359964" EsAdministrador="0" />
	   <Persona TipoDocuIdentidad="1" Nombre="Gabriel Arrieta Oviedo" ValorDocumentoIdentidad="110498718" FechaNacimiento="1986-03-22" Email="arrietagabriel4673@yahoo.com" Telefono1="76024920" Telefono2="22224247"/>
	   <Usuario User="gabrielarrieta3626" Pass="PaKoRhaBaNe=:?" ValorDocumentoIdentidad="110498718" EsAdministrador="0" />
	   <Cuenta ValorDocumentoIdentidadDelCliente="117359964" TipoCuentaId="1" NumeroCuenta="11047353"/>
	   <Beneficiario NumeroCuenta="11047353" ValorDocumentoIdentidadBeneficiario="110498718" ParentezcoId="9" Porcentaje="52" />
	   <Movimientos Tipo="5" CodigoCuenta="11047353" Monto="21090247.00" Descripcion="Banco Central" />
	   <UsuarioPuedeVer User="gabrielarrieta3626" NumeroCuenta="11238238" />
	   <Movimientos Tipo="1" CodigoCuenta="11047353" Monto="11959753.00" Descripcion="TIENDAS UNIVERSAL" />
	   <Movimientos Tipo="4" CodigoCuenta="11047353" Monto="1207270.00" Descripcion="ATM SAN JOSE" />
	   <Movimientos Tipo="5" CodigoCuenta="11047353" Monto="434951.00" Descripcion="ATM SAN JOSE" />
	   <UsuarioPuedeVer User="guadalupemurillo7014" NumeroCuenta="11489122" />
	   <Movimientos Tipo="1" CodigoCuenta="11047353" Monto="1266577.00" Descripcion="GRUPO PRO GPP" />
	   <Movimientos Tipo="4" CodigoCuenta="11047353" Monto="6905806.00" Descripcion="ATM PUNTARENAS" />
	   <Movimientos Tipo="5" CodigoCuenta="11047353" Monto="410598.00" Descripcion="ATM SAN JOSE" />
	   <UsuarioPuedeVer User="josecarvajal3204" NumeroCuenta="11308083" />
	   <Movimientos Tipo="1" CodigoCuenta="11047353" Monto="542107.00" Descripcion="BAR RESTAURANTE LA NAVE" />
	   <UsuarioPuedeVer User="antonioperez3471" NumeroCuenta="11532125" />
	   <Movimientos Tipo="1" CodigoCuenta="11047353" Monto="28055.00" Descripcion="UNIVERSIDAD LATINA DE COSTA RICA" />
	   <UsuarioPuedeVer User="rosarioelizondo6572" NumeroCuenta="11639871" />
	   <Movimientos Tipo="1" CodigoCuenta="11047353" Monto="22961.00" Descripcion="HOSPITAL CLiNICA BiBLICA" />
	   <UsuarioPuedeVer User="jesusfernandez2894" NumeroCuenta="11308083" />
	   <Movimientos Tipo="1" CodigoCuenta="11047353" Monto="832.00" Descripcion="ABBOTT" />
	   <UsuarioPuedeVer User="manuelreyes5297" NumeroCuenta="11047353" />
	   <Movimientos Tipo="1" CodigoCuenta="11047353" Monto="1289.00" Descripcion="GRUPO DEMASA-GRUMA" />
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

	--select * from @TempFechas

	DECLARE @OperationDate DATE,
			@lo1 DATE, --iteradores
			@hi1 DATE

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
					T.Item.value('@Telefono1','VARCHAR(20)'),
					T.Item.value('@Telefono2','VARCHAR(20)'),
					GETDATE(),
					'Script',
					'186.176.102.189'
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@lo1")]/Persona') as T(Item)

			--select * from [dbo].[Person]

			--Insertar en tablas variables

			INSERT INTO @TempCuentas(TipoCuentaID,
									 ValDocIDent,
									 NumeroCuenta)
			SELECT T.Item.value('@TipoCuentaId','INT'),
				   T.Item.value('@ValorDocumentoIdentidadDelCliente','VARCHAR(50)'),
				   T.Item.value('@NumeroCuenta','VARCHAR(50)')
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@lo1")]/Cuenta') as T(Item)

			--select * from @TempCuentas

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

			--select * from @TempBeneficiario

			INSERT INTO @TempMovimientos(NumCuenta,
									 TipoMovimiento,
									 Monto,
									 Descripcion)
			SELECT T.Item.value('@CodigoCuenta','VARCHAR(50)'),
				   T.Item.value('@Tipo','INT'),
				   T.Item.value('@Monto','MONEY'),
				   T.Item.value('@Descripcion','VARCHAR(100)')
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@lo1")]/Movimientos') as T(Item)

			--select * from @TempMovimientos

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
				   TP.Id,
				   0,
				   @lo1,
				   TC.NumeroCuenta,
				   GETDATE(),
				   'Script',
				   '186.176.102.189'
			FROM @TempCuentas TC
			INNER JOIN [dbo].[Person] TP ON TP.[ValueDocIden] = TC.ValDocIDent
			
			--SELECT 'Cuenta'
			--SELECT * FROM [dbo].[SavingsAccount] SA WHERE SA.Id = 1
			--select * from [dbo].[SavingsAccount]
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
				   TP.Id,
				   TC.Sec,
				   TP.Name,
				   TB.Porcentaje,
				   1,
				   GETDATE(),
				   'Script',
				   '186.176.102.189'
			FROM @TempBeneficiario TB
			INNER JOIN [dbo].[Person] TP ON TP.[ValueDocIden] = TB.ValDocIdent
			INNER JOIN @TempCuentas TC ON TC.NumeroCuenta = TB.NumeroCuenta

			--select * from [dbo].[Benefactor]
			--------Benefactor

			--------Movimiento

			DECLARE 
					@minimo INT, 
					@maximo INT,
					@CuentaId INT,
					@Tipo INT,
					@EstadoCuentaId INT,
					@monto MONEY,
					@SaldoActual MONEY,
					@Descripcion VARCHAR(100),
					@NumCuenta VARCHAR(50)

					SELECT @minimo =MIN(Sec), 
						   @maximo = MAX(Sec)
					FROM @TempMovimientos
					
					WHILE @minimo <= @maximo
						BEGIN 

							SELECT 
								@Tipo = TM.TipoMovimiento,
								@Descripcion = TM.Descripcion,
								@NumCuenta = TM.NumCuenta
							FROM @TempMovimientos TM
							WHERE TM.Sec = @minimo 
							
							SELECT @monto = -1*TM.Monto
							FROM @TempMovimientos TM
							WHERE TM.Sec = @minimo and (TM.TipoMovimiento = 1 OR TM.TipoMovimiento = 2 OR TM.TipoMovimiento = 3)

							SELECT @monto = TM.Monto
							FROM @TempMovimientos TM
							WHERE TM.Sec = @minimo AND (TM.TipoMovimiento = 4 OR TM.TipoMovimiento = 5 OR TM.TipoMovimiento = 6)

							SELECT @CuentaId = SA.Id
							FROM [dbo].[SavingsAccount] SA,
								 @TempMovimientos TM
							WHERE TM.Sec = @minimo AND SA.[AccountNumber] = TM.NumCuenta

							SELECT @EstadoCuentaId = AC.Id
							FROM [dbo].[AccountStatement] AC
							WHERE @lo1 < AC.EndDate and AC.[SavingsAccountId] = @CuentaId

							SELECT @SaldoActual = SA.Balance
							FROM [dbo].[SavingsAccount] SA
							WHERE SA.Id = @CuentaId

							UPDATE [dbo].[SavingsAccount]
							SET Balance = @SaldoActual + @monto,
								InsertAt = GETDATE(),
								InsertBy = 'script',
								InsertIn = '186.176.102.189'
							WHERE [dbo].[SavingsAccount].Id = @CuentaId

							UPDATE [dbo].[AccountStatement]
							SET FinalBalance = @SaldoActual + @monto,
								InsertAt = GETDATE(),
								InsertBy = 'script',
								InsertIn = '186.176.102.189'
							WHERE [dbo].[AccountStatement].[SavingsAccountId] = @CuentaId

							INSERT [dbo].[Movement CA] (SavingsAccountId,
											TypeMovId,
											AccountStatementId,
											Amount,
											NewBalance,
											Description,
											Visible,
											DateOfMov)
							VALUES(@CuentaId,
								   @Tipo,
								   @EstadoCuentaId,
								   @monto,
								   @SaldoActual + @monto,
								   @Descripcion,
								   1,
								   @lo1)

							--UPDATE @TempMovimientos
							--SET Monto = @monto
							--WHERE Sec = @minimo

							SET @minimo = @minimo + 1
						END


			--SELECT 'MONTO'
			--SELECT @monto

			--INSERT INTO [dbo].[Movement CA] (SavingsAccountId,
			--								TypeMovId,
			--								AccountStatementId,
			--								Amount,
			--								NewBalance,
			--								Description,
			--								Visible,
			--								DateOfMov)
			--SELECT SA.Id,
			--	   TM.TipoMovimiento,
			--	   AC.Id,
			--	   TM.Monto,
			--	   SA.Balance + TM.Monto,
			--	   TM.Descripcion,
			--	   1,
			--	   @lo1
			--FROM @TempMovimientos TM
			--INNER JOIN @TempCuentas TC ON TC.NumeroCuenta = TM.NumCuenta
			--INNER JOIN [dbo].[SavingsAccount] SA ON SA.AccountNumber = TM.NumCuenta
			--INNER JOIN [dbo].[AccountStatement] AC ON AC.SavingsAccountId = SA.Id
			--WHERE AC.EndDate >= @lo1

			--select * from [dbo].[Movement CA]

			--SELECT 'Movimientos'
			--SELECT * FROM [dbo].[Movement CA] MC WHERE MC.SavingsAccountId = 1
			----------Movimiento


			-------------Cerrar estados de cuenta---------------

			INSERT INTO [dbo].[AccountStatement] ([SavingsAccountId],
												[StartDate],
												[EndDate],
												[InitialBalance],
												[FinalBalance],
												[InsertAt],
												[InsertBy],
												[InsertIn])
			SELECT AC.[SavingsAccountId],
				   DATEADD(d,1,AC.[EndDate]),
				   DATEADD(MONTH,1,AC.[EndDate]),
				   AC.[FinalBalance],
				   AC.[FinalBalance],
				   GETDATE(),
				   'Script',
				   '186.176.102.189'
			FROM [dbo].[AccountStatement] AC
			WHERE AC.[EndDate] = @lo1
			--INNER JOIN [dbo].[AccountStatement] AC ON AC.[EndDate] = @lo1
			--INNER JOIN [dbo].[SavingsAccount] SA on SA.[Id] = AC.[SavingsAccountId]
			----------------------------------------------------

			SET @lo1=DATEADD(d,1,@lo1)

		END
--SELECT * FROM [dbo].[AccountStatement]

--select * from [dbo].[SavingsAccount]
--select * from [dbo].[Movement CA]