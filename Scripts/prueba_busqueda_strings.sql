
--Para insertar datos de prueba
select * from [dbo].[Movement CA]

INSERT INTO [dbo].[Movement CA](SavingsAccountId, 
							    TypeMovId, 
								AccountStatementId,
								Amount, 
								NewBalance, 
								[Description],
								Visible, 
								DateOfMov)
VALUES(70, 1, 2077, 100, 101, 'Restaurante El Arrecife', 0, '2000-11-11')


/*opcion 1 NO FUNCIONA
DECLARE @SearchWord NVARCHAR(100)  
SET @SearchWord ='Restaurante'  
SELECT MV.[Description]
FROM [dbo].[Movement CA] MV
WHERE CONTAINS([Description], @SearchWord);  
*/

--Opcion 2 funcionando
DECLARE @SearchWord VARCHAR(100)
SET @SearchWord ='%Retiro%'   --La palabra o frase a buscar tiene que ir entre '%' esto lo podemos arreglar en capa logica

SELECT MV.[Description]
FROM [dbo].[Movement CA] MV
WHERE MV.[Description] LIKE @SearchWord