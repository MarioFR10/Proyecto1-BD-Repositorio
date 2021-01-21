DECLARE @x XML
SET @x = '<Operaciones>
	<FechaOperacion Fecha="08-01-2020">

<Persona Telefono2="79769831" Telefono1="80330968" Email="bulbasaur@outlook.com" FechaNacimiento="11-22-1952" ValorDocumentoIdentidad="44730465" Nombre="Bulbasaur" TipoDocuIdentidad="6"/>

<Persona Telefono2="83484602" Telefono1="82299547" Email="ivysaur@hotmail.com" FechaNacimiento="01-05-1974" ValorDocumentoIdentidad="40346810" Nombre="Ivysaur" TipoDocuIdentidad="4"/>

<Persona Telefono2="86543298" Telefono1="87804400" Email="venusaur@yahoo.com" FechaNacimiento="02-10-1984" ValorDocumentoIdentidad="76008779" Nombre="Venusaur" TipoDocuIdentidad="4"/>

<Persona Telefono2="78037957" Telefono1="80248454" Email="charmander@gmail.com" FechaNacimiento="04-15-2002" ValorDocumentoIdentidad="10797799" Nombre="Charmander" TipoDocuIdentidad="5"/>

<Cuenta NumeroCuenta="86073678" TipoCuentaId="1" ValorDocumentoIdentidadDelCliente="10797799"/>

<CuentaAhorro Descripcion="Bicicleta" FechaFinal="2020-10-01 00:00:00" DiaAhorro="7" MontoAhorro="30000" NumeroCuentaAhorro="43871663" NumeroCuentaPrimaria="86073678"/>

<Beneficiario NumeroCuenta="86073678" Porcentaje="30" ParentezcoId="3" ValorDocumentoIdentidadBeneficiario="40346810"/>

<Beneficiario NumeroCuenta="86073678" Porcentaje="30" ParentezcoId="4" ValorDocumentoIdentidadBeneficiario="44730465"/>

<Beneficiario NumeroCuenta="86073678" Porcentaje="31" ParentezcoId="5" ValorDocumentoIdentidadBeneficiario="76008779"/>

<Movimientos Descripcion="Deposito Ventana" Monto="6865201" CodigoCuenta="86073678" Tipo="4"/>

<Movimientos Descripcion="Compra" Monto="923935" CodigoCuenta="86073678" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="488869" CodigoCuenta="86073678" Tipo="2"/>

<Movimientos Descripcion="Retiro Ventana" Monto="193713" CodigoCuenta="86073678" Tipo="3"/>

<Movimientos Descripcion="Deposito en ATM" Monto="146351" CodigoCuenta="86073678" Tipo="4"/>

<Movimientos Descripcion="Deposito Ventana" Monto="498160" CodigoCuenta="86073678" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="700582" CodigoCuenta="86073678" Tipo="6"/>

<Usuario Email="charmander@yahoo.com" ValorDocumentoIdentidad="10797799" EsAdministrador="1" Pass="10797799" User="Charmander"/>

</FechaOperacion>


<FechaOperacion Fecha="08-02-2020">

<Persona Telefono2="86443084" Telefono1="77924567" Email="charmeleon@outlook.com" FechaNacimiento="03-28-1983" ValorDocumentoIdentidad="86922024" Nombre="Charmeleon" TipoDocuIdentidad="1"/>

<Persona Telefono2="84054022" Telefono1="83999912" Email="charizard@outlook.com" FechaNacimiento="04-23-1972" ValorDocumentoIdentidad="34513255" Nombre="Charizard" TipoDocuIdentidad="1"/>

<Persona Telefono2="86732145" Telefono1="80802366" Email="squirtle@outlook.com" FechaNacimiento="01-13-1961" ValorDocumentoIdentidad="40916618" Nombre="Squirtle" TipoDocuIdentidad="6"/>

<Persona Telefono2="80376969" Telefono1="82297969" Email="wartortle@yahoo.com" FechaNacimiento="04-29-1961" ValorDocumentoIdentidad="99436484" Nombre="Wartortle" TipoDocuIdentidad="6"/>

<UsuarioPuedeVer User="99436484" Cuenta="58493144"/>

<Cuenta NumeroCuenta="58493144" TipoCuentaId="2" ValorDocumentoIdentidadDelCliente="99436484"/>

<CuentaAhorro Descripcion="Pociones y Antidotos" FechaFinal="2021-02-02 00:00:00" DiaAhorro="1" MontoAhorro="30000" NumeroCuentaAhorro="71455856" NumeroCuentaPrimaria="58493144"/>

<Beneficiario NumeroCuenta="58493144" Porcentaje="32" ParentezcoId="6" ValorDocumentoIdentidadBeneficiario="40916618"/>

<Beneficiario NumeroCuenta="58493144" Porcentaje="31" ParentezcoId="6" ValorDocumentoIdentidadBeneficiario="76008779"/>

<Beneficiario NumeroCuenta="58493144" Porcentaje="28" ParentezcoId="1" ValorDocumentoIdentidadBeneficiario="86922024"/>

<Movimientos Descripcion="Deposito Ventana" Monto="6818616" CodigoCuenta="58493144" Tipo="4"/>

<Movimientos Descripcion="Compra" Monto="849240" CodigoCuenta="58493144" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="108119" CodigoCuenta="58493144" Tipo="2"/>

<Movimientos Descripcion="Retiro Ventana" Monto="215823" CodigoCuenta="58493144" Tipo="3"/>

<Movimientos Descripcion="Deposito en ATM" Monto="605558" CodigoCuenta="58493144" Tipo="4"/>

<Movimientos Descripcion="Deposito Ventana" Monto="282618" CodigoCuenta="58493144" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="753756" CodigoCuenta="58493144" Tipo="6"/>

<Usuario Email="wartortle@gmail.com" ValorDocumentoIdentidad="99436484" EsAdministrador="1" Pass="99436484" User="Wartortle"/>

</FechaOperacion>


<FechaOperacion Fecha="08-03-2020">

<Persona Telefono2="83447884" Telefono1="84091036" Email="blastoise@gmail.com" FechaNacimiento="02-22-1960" ValorDocumentoIdentidad="80576424" Nombre="Blastoise" TipoDocuIdentidad="4"/>

<Persona Telefono2="79389717" Telefono1="88875376" Email="caterpie@yahoo.com" FechaNacimiento="08-20-1994" ValorDocumentoIdentidad="781351" Nombre="Caterpie" TipoDocuIdentidad="2"/>

<Persona Telefono2="84325799" Telefono1="88558407" Email="metapod@outlook.com" FechaNacimiento="05-21-1963" ValorDocumentoIdentidad="50467482" Nombre="Metapod" TipoDocuIdentidad="3"/>

<Persona Telefono2="87383247" Telefono1="78523167" Email="butterfree@gmail.com" FechaNacimiento="12-08-1956" ValorDocumentoIdentidad="48135837" Nombre="Butterfree" TipoDocuIdentidad="3"/>

<Cuenta NumeroCuenta="82792055" TipoCuentaId="2" ValorDocumentoIdentidadDelCliente="48135837"/>

<CuentaAhorro Descripcion="Bicicleta" FechaFinal="2021-06-03 00:00:00" DiaAhorro="23" MontoAhorro="110000" NumeroCuentaAhorro="28371755" NumeroCuentaPrimaria="82792055"/>

<Beneficiario NumeroCuenta="82792055" Porcentaje="29" ParentezcoId="5" ValorDocumentoIdentidadBeneficiario="44730465"/>

<Beneficiario NumeroCuenta="82792055" Porcentaje="33" ParentezcoId="1" ValorDocumentoIdentidadBeneficiario="40346810"/>

<Beneficiario NumeroCuenta="82792055" Porcentaje="28" ParentezcoId="3" ValorDocumentoIdentidadBeneficiario="76008779"/>

<Movimientos Descripcion="Deposito Ventana" Monto="7430112" CodigoCuenta="82792055" Tipo="4"/>

<Movimientos Descripcion="Compra" Monto="247568" CodigoCuenta="82792055" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="286640" CodigoCuenta="82792055" Tipo="2"/>

<Movimientos Descripcion="Retiro Ventana" Monto="825992" CodigoCuenta="82792055" Tipo="3"/>

<Movimientos Descripcion="Deposito en ATM" Monto="550691" CodigoCuenta="82792055" Tipo="4"/>

<Movimientos Descripcion="Deposito Ventana" Monto="777151" CodigoCuenta="82792055" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="287345" CodigoCuenta="82792055" Tipo="6"/>

<Usuario Email="butterfree@yahoo.com" ValorDocumentoIdentidad="48135837" EsAdministrador="0" Pass="48135837" User="Butterfree"/>

</FechaOperacion>


<FechaOperacion Fecha="08-04-2020">

<Persona Telefono2="85398396" Telefono1="81666732" Email="weedle@gmail.com" FechaNacimiento="03-29-1974" ValorDocumentoIdentidad="1692829" Nombre="Weedle" TipoDocuIdentidad="1"/>

<Persona Telefono2="85222474" Telefono1="85762566" Email="kakuna@yahoo.com" FechaNacimiento="04-02-1961" ValorDocumentoIdentidad="27595600" Nombre="Kakuna" TipoDocuIdentidad="2"/>

<Persona Telefono2="82864780" Telefono1="77784568" Email="beedrill@outlook.com" FechaNacimiento="05-29-1966" ValorDocumentoIdentidad="59046345" Nombre="Beedrill" TipoDocuIdentidad="2"/>

<Persona Telefono2="85404163" Telefono1="87196277" Email="pidgey@yahoo.com" FechaNacimiento="07-12-1953" ValorDocumentoIdentidad="46736263" Nombre="Pidgey" TipoDocuIdentidad="4"/>

<UsuarioPuedeVer User="46736263" Cuenta="30713560"/>

<Cuenta NumeroCuenta="30713560" TipoCuentaId="1" ValorDocumentoIdentidadDelCliente="46736263"/>

<CuentaAhorro Descripcion="Bicicleta" FechaFinal="2021-05-04 00:00:00" DiaAhorro="5" MontoAhorro="100000" NumeroCuentaAhorro="87264927" NumeroCuentaPrimaria="30713560"/>

<Beneficiario NumeroCuenta="30713560" Porcentaje="25" ParentezcoId="6" ValorDocumentoIdentidadBeneficiario="50467482"/>

<Beneficiario NumeroCuenta="30713560" Porcentaje="33" ParentezcoId="9" ValorDocumentoIdentidadBeneficiario="10797799"/>

<Beneficiario NumeroCuenta="30713560" Porcentaje="29" ParentezcoId="7" ValorDocumentoIdentidadBeneficiario="44730465"/>

<Movimientos Descripcion="Deposito Ventana" Monto="6424972" CodigoCuenta="30713560" Tipo="4"/>

<Movimientos Descripcion="Compra" Monto="539397" CodigoCuenta="30713560" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="589730" CodigoCuenta="30713560" Tipo="2"/>

<Movimientos Descripcion="Retiro Ventana" Monto="200877" CodigoCuenta="30713560" Tipo="3"/>

<Movimientos Descripcion="Deposito en ATM" Monto="594343" CodigoCuenta="30713560" Tipo="4"/>

<Movimientos Descripcion="Deposito Ventana" Monto="763805" CodigoCuenta="30713560" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="575475" CodigoCuenta="30713560" Tipo="6"/>

<Usuario Email="pidgey@outlook.com" ValorDocumentoIdentidad="46736263" EsAdministrador="1" Pass="46736263" User="Pidgey"/>

</FechaOperacion>


<FechaOperacion Fecha="08-05-2020">

<Persona Telefono2="80669797" Telefono1="87264450" Email="pidgeotto@yahoo.com" FechaNacimiento="03-07-1980" ValorDocumentoIdentidad="52486794" Nombre="Pidgeotto" TipoDocuIdentidad="2"/>

<Persona Telefono2="85778473" Telefono1="82097757" Email="pidgeot@outlook.com" FechaNacimiento="01-25-1996" ValorDocumentoIdentidad="54552478" Nombre="Pidgeot" TipoDocuIdentidad="4"/>

<Persona Telefono2="81978008" Telefono1="82588953" Email="rattata@yahoo.com" FechaNacimiento="03-29-1979" ValorDocumentoIdentidad="94746919" Nombre="Rattata" TipoDocuIdentidad="1"/>

<Persona Telefono2="84465038" Telefono1="80221096" Email="raticate@hotmail.com" FechaNacimiento="03-16-1976" ValorDocumentoIdentidad="44494980" Nombre="Raticate" TipoDocuIdentidad="3"/>

<Cuenta NumeroCuenta="13699566" TipoCuentaId="2" ValorDocumentoIdentidadDelCliente="44494980"/>

<CuentaAhorro Descripcion="Pociones y Antidotos" FechaFinal="2020-10-05 00:00:00" DiaAhorro="23" MontoAhorro="80000" NumeroCuentaAhorro="51073651" NumeroCuentaPrimaria="13699566"/>

<Beneficiario NumeroCuenta="13699566" Porcentaje="32" ParentezcoId="8" ValorDocumentoIdentidadBeneficiario="50467482"/>

<Beneficiario NumeroCuenta="13699566" Porcentaje="32" ParentezcoId="5" ValorDocumentoIdentidadBeneficiario="80576424"/>

<Beneficiario NumeroCuenta="13699566" Porcentaje="28" ParentezcoId="8" ValorDocumentoIdentidadBeneficiario="54552478"/>

<Movimientos Descripcion="Deposito Ventana" Monto="8130193" CodigoCuenta="13699566" Tipo="4"/>

<Movimientos Descripcion="Compra" Monto="206620" CodigoCuenta="13699566" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="332431" CodigoCuenta="13699566" Tipo="2"/>

<Movimientos Descripcion="Retiro Ventana" Monto="399182" CodigoCuenta="13699566" Tipo="3"/>

<Movimientos Descripcion="Deposito en ATM" Monto="415895" CodigoCuenta="13699566" Tipo="4"/>

<Movimientos Descripcion="Deposito Ventana" Monto="552408" CodigoCuenta="13699566" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="121925" CodigoCuenta="13699566" Tipo="6"/>

<Usuario Email="raticate@hotmail.com" ValorDocumentoIdentidad="44494980" EsAdministrador="0" Pass="44494980" User="Raticate"/>

</FechaOperacion>


<FechaOperacion Fecha="08-06-2020">

<Persona Telefono2="87325357" Telefono1="79316997" Email="spearow@outlook.com" FechaNacimiento="04-28-1965" ValorDocumentoIdentidad="8387988" Nombre="Spearow" TipoDocuIdentidad="2"/>

<Persona Telefono2="88573672" Telefono1="87777213" Email="fearow@hotmail.com" FechaNacimiento="01-13-2000" ValorDocumentoIdentidad="95441744" Nombre="Fearow" TipoDocuIdentidad="3"/>

<Persona Telefono2="78020734" Telefono1="87355917" Email="ekans@yahoo.com" FechaNacimiento="07-08-1990" ValorDocumentoIdentidad="93778652" Nombre="Ekans" TipoDocuIdentidad="4"/>

<Persona Telefono2="80259711" Telefono1="86219528" Email="arbok@gmail.com" FechaNacimiento="01-27-1956" ValorDocumentoIdentidad="7950756" Nombre="Arbok" TipoDocuIdentidad="5"/>

<Cuenta NumeroCuenta="89045693" TipoCuentaId="2" ValorDocumentoIdentidadDelCliente="7950756"/>

<CuentaAhorro Descripcion="Pokedex" FechaFinal="2021-07-06 00:00:00" DiaAhorro="28" MontoAhorro="20000" NumeroCuentaAhorro="15334255" NumeroCuentaPrimaria="89045693"/>

<Beneficiario NumeroCuenta="89045693" Porcentaje="30" ParentezcoId="1" ValorDocumentoIdentidadBeneficiario="52486794"/>

<Beneficiario NumeroCuenta="89045693" Porcentaje="27" ParentezcoId="7" ValorDocumentoIdentidadBeneficiario="54552478"/>

<Beneficiario NumeroCuenta="89045693" Porcentaje="25" ParentezcoId="5" ValorDocumentoIdentidadBeneficiario="8387988"/>

<Movimientos Descripcion="Deposito Ventana" Monto="8755232" CodigoCuenta="89045693" Tipo="4"/>

<Movimientos Descripcion="Compra" Monto="821708" CodigoCuenta="89045693" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="403262" CodigoCuenta="89045693" Tipo="2"/>

<Movimientos Descripcion="Retiro Ventana" Monto="905600" CodigoCuenta="89045693" Tipo="3"/>

<Movimientos Descripcion="Deposito en ATM" Monto="899517" CodigoCuenta="89045693" Tipo="4"/>

<Movimientos Descripcion="Deposito Ventana" Monto="922058" CodigoCuenta="89045693" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="826039" CodigoCuenta="89045693" Tipo="6"/>

<Usuario Email="arbok@gmail.com" ValorDocumentoIdentidad="7950756" EsAdministrador="1" Pass="7950756" User="Arbok"/>

</FechaOperacion>


<FechaOperacion Fecha="08-07-2020">

<Persona Telefono2="88447294" Telefono1="79336095" Email="pikachu@yahoo.com" FechaNacimiento="01-16-1958" ValorDocumentoIdentidad="13162500" Nombre="Pikachu" TipoDocuIdentidad="4"/>

<Persona Telefono2="88433606" Telefono1="85339389" Email="raichu@hotmail.com" FechaNacimiento="03-24-1959" ValorDocumentoIdentidad="94239201" Nombre="Raichu" TipoDocuIdentidad="6"/>

<Persona Telefono2="83773634" Telefono1="80175210" Email="sandshrew@hotmail.com" FechaNacimiento="02-11-1961" ValorDocumentoIdentidad="2566485" Nombre="Sandshrew" TipoDocuIdentidad="1"/>

<Persona Telefono2="79845656" Telefono1="81819873" Email="sandslash@hotmail.com" FechaNacimiento="11-06-1990" ValorDocumentoIdentidad="12292728" Nombre="Sandslash" TipoDocuIdentidad="3"/>

<Cuenta NumeroCuenta="56793445" TipoCuentaId="3" ValorDocumentoIdentidadDelCliente="12292728"/>

<CuentaAhorro Descripcion="Pokedex" FechaFinal="2021-05-07 00:00:00" DiaAhorro="16" MontoAhorro="130000" NumeroCuentaAhorro="73019989" NumeroCuentaPrimaria="56793445"/>

<Beneficiario NumeroCuenta="56793445" Porcentaje="32" ParentezcoId="8" ValorDocumentoIdentidadBeneficiario="76008779"/>

<Beneficiario NumeroCuenta="56793445" Porcentaje="33" ParentezcoId="6" ValorDocumentoIdentidadBeneficiario="94239201"/>

<Beneficiario NumeroCuenta="56793445" Porcentaje="32" ParentezcoId="9" ValorDocumentoIdentidadBeneficiario="7950756"/>

<Movimientos Descripcion="Deposito Ventana" Monto="7639069" CodigoCuenta="56793445" Tipo="4"/>

<Movimientos Descripcion="Compra" Monto="283265" CodigoCuenta="56793445" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="520328" CodigoCuenta="56793445" Tipo="2"/>

<Movimientos Descripcion="Retiro Ventana" Monto="798230" CodigoCuenta="56793445" Tipo="3"/>

<Movimientos Descripcion="Deposito en ATM" Monto="808300" CodigoCuenta="56793445" Tipo="4"/>

<Movimientos Descripcion="Deposito Ventana" Monto="704923" CodigoCuenta="56793445" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="894080" CodigoCuenta="56793445" Tipo="6"/>

<Usuario Email="sandslash@hotmail.com" ValorDocumentoIdentidad="12292728" EsAdministrador="1" Pass="12292728" User="Sandslash"/>

</FechaOperacion>


<FechaOperacion Fecha="08-08-2020">

<Persona Telefono2="83419886" Telefono1="88811710" Email="nidoran(macho)@outlook.com" FechaNacimiento="03-02-1960" ValorDocumentoIdentidad="3136364" Nombre="Nidoran(macho)" TipoDocuIdentidad="6"/>

<Persona Telefono2="79599963" Telefono1="81246582" Email="nidorina@hotmail.com" FechaNacimiento="06-30-1992" ValorDocumentoIdentidad="97338393" Nombre="Nidorina" TipoDocuIdentidad="4"/>

<Persona Telefono2="84236115" Telefono1="87357171" Email="nidoqueen@outlook.com" FechaNacimiento="09-19-1984" ValorDocumentoIdentidad="68844791" Nombre="Nidoqueen" TipoDocuIdentidad="1"/>

<Persona Telefono2="82247535" Telefono1="84249742" Email="nidoran(hembra)@hotmail.com" FechaNacimiento="05-13-1966" ValorDocumentoIdentidad="6943894" Nombre="Nidoran(hembra)" TipoDocuIdentidad="1"/>

<Cuenta NumeroCuenta="63759760" TipoCuentaId="2" ValorDocumentoIdentidadDelCliente="6943894"/>

<CuentaAhorro Descripcion="Piedra de evolución Pokemon" FechaFinal="2020-10-08 00:00:00" DiaAhorro="1" MontoAhorro="160000" NumeroCuentaAhorro="13247888" NumeroCuentaPrimaria="63759760"/>

<Beneficiario NumeroCuenta="63759760" Porcentaje="31" ParentezcoId="4" ValorDocumentoIdentidadBeneficiario="44730465"/>

<Beneficiario NumeroCuenta="63759760" Porcentaje="32" ParentezcoId="4" ValorDocumentoIdentidadBeneficiario="2566485"/>

<Beneficiario NumeroCuenta="63759760" Porcentaje="29" ParentezcoId="5" ValorDocumentoIdentidadBeneficiario="10797799"/>

<Movimientos Descripcion="Deposito Ventana" Monto="6841931" CodigoCuenta="63759760" Tipo="4"/>

<Movimientos Descripcion="Compra" Monto="400186" CodigoCuenta="63759760" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="559180" CodigoCuenta="63759760" Tipo="2"/>

<Movimientos Descripcion="Retiro Ventana" Monto="169078" CodigoCuenta="63759760" Tipo="3"/>

<Movimientos Descripcion="Deposito en ATM" Monto="890663" CodigoCuenta="63759760" Tipo="4"/>

<Movimientos Descripcion="Deposito Ventana" Monto="683212" CodigoCuenta="63759760" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="763904" CodigoCuenta="63759760" Tipo="6"/>

<Usuario Email="nidoran(hembra)@outlook.com" ValorDocumentoIdentidad="6943894" EsAdministrador="0" Pass="6943894" User="Nidoran(hembra)"/>

</FechaOperacion>


<FechaOperacion Fecha="08-09-2020">

<Persona Telefono2="85539495" Telefono1="85634678" Email="nidorino@outlook.com" FechaNacimiento="11-01-2002" ValorDocumentoIdentidad="83239027" Nombre="Nidorino" TipoDocuIdentidad="5"/>

<Persona Telefono2="88593276" Telefono1="81186328" Email="nidoking@outlook.com" FechaNacimiento="07-14-1967" ValorDocumentoIdentidad="40548789" Nombre="Nidoking" TipoDocuIdentidad="6"/>

<Persona Telefono2="78857721" Telefono1="85098741" Email="clefairy@outlook.com" FechaNacimiento="04-20-1994" ValorDocumentoIdentidad="39672912" Nombre="Clefairy" TipoDocuIdentidad="2"/>

<Persona Telefono2="83883676" Telefono1="78387306" Email="clefable@outlook.com" FechaNacimiento="02-07-1996" ValorDocumentoIdentidad="65668077" Nombre="Clefable" TipoDocuIdentidad="2"/>

<Cuenta NumeroCuenta="15411425" TipoCuentaId="3" ValorDocumentoIdentidadDelCliente="65668077"/>

<CuentaAhorro Descripcion="Liga Pokemon" FechaFinal="2021-06-09 00:00:00" DiaAhorro="11" MontoAhorro="140000" NumeroCuentaAhorro="32305013" NumeroCuentaPrimaria="15411425"/>

<Beneficiario NumeroCuenta="15411425" Porcentaje="33" ParentezcoId="3" ValorDocumentoIdentidadBeneficiario="46736263"/>

<Beneficiario NumeroCuenta="15411425" Porcentaje="27" ParentezcoId="4" ValorDocumentoIdentidadBeneficiario="27595600"/>

<Beneficiario NumeroCuenta="15411425" Porcentaje="27" ParentezcoId="8" ValorDocumentoIdentidadBeneficiario="50467482"/>

<Movimientos Descripcion="Deposito Ventana" Monto="9569461" CodigoCuenta="15411425" Tipo="4"/>

<Movimientos Descripcion="Compra" Monto="165635" CodigoCuenta="15411425" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="780484" CodigoCuenta="15411425" Tipo="2"/>

<Movimientos Descripcion="Retiro Ventana" Monto="980631" CodigoCuenta="15411425" Tipo="3"/>

<Movimientos Descripcion="Deposito en ATM" Monto="504549" CodigoCuenta="15411425" Tipo="4"/>

<Movimientos Descripcion="Deposito Ventana" Monto="426805" CodigoCuenta="15411425" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="562139" CodigoCuenta="15411425" Tipo="6"/>

<Usuario Email="clefable@hotmail.com" ValorDocumentoIdentidad="65668077" EsAdministrador="0" Pass="65668077" User="Clefable"/>

</FechaOperacion>


<FechaOperacion Fecha="08-10-2020">

<Persona Telefono2="83318546" Telefono1="81503310" Email="vulpix@gmail.com" FechaNacimiento="07-14-1968" ValorDocumentoIdentidad="69379825" Nombre="Vulpix" TipoDocuIdentidad="4"/>

<Persona Telefono2="81357677" Telefono1="84846229" Email="ninetales@hotmail.com" FechaNacimiento="02-20-1956" ValorDocumentoIdentidad="38043411" Nombre="Ninetales" TipoDocuIdentidad="4"/>

<Persona Telefono2="87889968" Telefono1="83465211" Email="jigglypuff@gmail.com" FechaNacimiento="05-04-1970" ValorDocumentoIdentidad="6408891" Nombre="Jigglypuff" TipoDocuIdentidad="6"/>

<Persona Telefono2="84102397" Telefono1="83270140" Email="wigglytuff@yahoo.com" FechaNacimiento="04-10-1997" ValorDocumentoIdentidad="53296941" Nombre="Wigglytuff" TipoDocuIdentidad="3"/>

<UsuarioPuedeVer User="53296941" Cuenta="85339034"/>

<Cuenta NumeroCuenta="85339034" TipoCuentaId="1" ValorDocumentoIdentidadDelCliente="53296941"/>

<CuentaAhorro Descripcion="Pokedex" FechaFinal="2021-04-10 00:00:00" DiaAhorro="22" MontoAhorro="10000" NumeroCuentaAhorro="91849069" NumeroCuentaPrimaria="85339034"/>

<Beneficiario NumeroCuenta="85339034" Porcentaje="32" ParentezcoId="8" ValorDocumentoIdentidadBeneficiario="93778652"/>

<Beneficiario NumeroCuenta="85339034" Porcentaje="32" ParentezcoId="4" ValorDocumentoIdentidadBeneficiario="50467482"/>

<Beneficiario NumeroCuenta="85339034" Porcentaje="25" ParentezcoId="7" ValorDocumentoIdentidadBeneficiario="76008779"/>

<Movimientos Descripcion="Deposito Ventana" Monto="9140728" CodigoCuenta="85339034" Tipo="4"/>

<Movimientos Descripcion="Compra" Monto="440852" CodigoCuenta="85339034" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="474946" CodigoCuenta="85339034" Tipo="2"/>

<Movimientos Descripcion="Retiro Ventana" Monto="438406" CodigoCuenta="85339034" Tipo="3"/>

<Movimientos Descripcion="Deposito en ATM" Monto="151956" CodigoCuenta="85339034" Tipo="4"/>

<Movimientos Descripcion="Deposito Ventana" Monto="394122" CodigoCuenta="85339034" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="666590" CodigoCuenta="85339034" Tipo="6"/>

<Usuario Email="wigglytuff@yahoo.com" ValorDocumentoIdentidad="53296941" EsAdministrador="0" Pass="53296941" User="Wigglytuff"/>

</FechaOperacion>
	<FechaOperacion Fecha="12-29-2020">

<Movimientos Descripcion="Compra" Monto="65560" CodigoCuenta="85393790" Tipo="1"/>

<Movimientos Descripcion="Deposito en ATM" Monto="264607" CodigoCuenta="41519945" Tipo="4"/>

<Movimientos Descripcion="Retiro Ventana" Monto="46809" CodigoCuenta="92972525" Tipo="3"/>

<Movimientos Descripcion="Deposito en ATM" Monto="107861" CodigoCuenta="41519945" Tipo="4"/>

<Movimientos Descripcion="Retiro Ventana" Monto="306688" CodigoCuenta="58493144" Tipo="3"/>

<Movimientos Descripcion="Retiro Ventana" Monto="192365" CodigoCuenta="24093199" Tipo="3"/>

<Movimientos Descripcion="Retiro Ventana" Monto="488350" CodigoCuenta="97301515" Tipo="3"/>

<Movimientos Descripcion="Deposito Ventana" Monto="37455" CodigoCuenta="24093199" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="423987" CodigoCuenta="41519945" Tipo="6"/>

<Movimientos Descripcion="Retiro ATM" Monto="14993" CodigoCuenta="83253220" Tipo="2"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="106732" CodigoCuenta="89045693" Tipo="6"/>

<Movimientos Descripcion="Retiro Ventana" Monto="384885" CodigoCuenta="56793445" Tipo="3"/>

<Movimientos Descripcion="Retiro ATM" Monto="277280" CodigoCuenta="92972525" Tipo="2"/>

<Movimientos Descripcion="Deposito en ATM" Monto="20503" CodigoCuenta="24093199" Tipo="4"/>

<Movimientos Descripcion="Retiro ATM" Monto="478017" CodigoCuenta="86073678" Tipo="2"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="377622" CodigoCuenta="94269013" Tipo="6"/>

<Movimientos Descripcion="Retiro ATM" Monto="199075" CodigoCuenta="97301515" Tipo="2"/>

<Movimientos Descripcion="Deposito Ventana" Monto="426811" CodigoCuenta="22689040" Tipo="5"/>

<Movimientos Descripcion="Deposito Ventana" Monto="221831" CodigoCuenta="94269013" Tipo="5"/>

</FechaOperacion>


<FechaOperacion Fecha="12-30-2020">

<Movimientos Descripcion="Deposito Ventana" Monto="80713" CodigoCuenta="85339034" Tipo="5"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="456920" CodigoCuenta="81851092" Tipo="6"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="473014" CodigoCuenta="15118378" Tipo="6"/>

<Movimientos Descripcion="Retiro Ventana" Monto="161029" CodigoCuenta="22689040" Tipo="3"/>

<Movimientos Descripcion="Deposito Ventana" Monto="416598" CodigoCuenta="13747030" Tipo="5"/>

<Movimientos Descripcion="Retiro Ventana" Monto="35563" CodigoCuenta="15118378" Tipo="3"/>

<Movimientos Descripcion="Compra" Monto="392214" CodigoCuenta="28555668" Tipo="1"/>

<Movimientos Descripcion="Deposito en ATM" Monto="98051" CodigoCuenta="64865831" Tipo="4"/>

<Movimientos Descripcion="Deposito en ATM" Monto="450987" CodigoCuenta="82792055" Tipo="4"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="253125" CodigoCuenta="59274731" Tipo="6"/>

<Movimientos Descripcion="Retiro Ventana" Monto="326412" CodigoCuenta="85393790" Tipo="3"/>

<Movimientos Descripcion="Deposito Ventana" Monto="156912" CodigoCuenta="32666385" Tipo="5"/>

<Movimientos Descripcion="Compra" Monto="126970" CodigoCuenta="82792055" Tipo="1"/>

<Movimientos Descripcion="Compra" Monto="130153" CodigoCuenta="30713560" Tipo="1"/>

<Movimientos Descripcion="Deposito en ATM" Monto="80933" CodigoCuenta="41519945" Tipo="4"/>

<Movimientos Descripcion="Retiro ATM" Monto="479213" CodigoCuenta="63759760" Tipo="2"/>

<Movimientos Descripcion="Retiro ATM" Monto="474316" CodigoCuenta="13747030" Tipo="2"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="127790" CodigoCuenta="22689040" Tipo="6"/>

<Movimientos Descripcion="Compra" Monto="53670" CodigoCuenta="15411425" Tipo="1"/>

</FechaOperacion>


<FechaOperacion Fecha="12-31-2020">

<Movimientos Descripcion="Deposito en ATM" Monto="325928" CodigoCuenta="86073678" Tipo="4"/>

<Movimientos Descripcion="Deposito en ATM" Monto="417578" CodigoCuenta="22689040" Tipo="4"/>

<Movimientos Descripcion="Deposito Ventana" Monto="240674" CodigoCuenta="24491553" Tipo="5"/>

<Movimientos Descripcion="Retiro Ventana" Monto="220199" CodigoCuenta="24093199" Tipo="3"/>

<Movimientos Descripcion="Compra" Monto="305081" CodigoCuenta="32666385" Tipo="1"/>

<Movimientos Descripcion="Compra" Monto="118105" CodigoCuenta="56793445" Tipo="1"/>

<Movimientos Descripcion="Compra" Monto="411350" CodigoCuenta="15118378" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="429251" CodigoCuenta="59274731" Tipo="2"/>

<Movimientos Descripcion="Compra" Monto="406965" CodigoCuenta="63759760" Tipo="1"/>

<Movimientos Descripcion="Deposito en ATM" Monto="356136" CodigoCuenta="87359138" Tipo="4"/>

<Movimientos Descripcion="Compra" Monto="130534" CodigoCuenta="73735032" Tipo="1"/>

<Movimientos Descripcion="Retiro Ventana" Monto="204374" CodigoCuenta="89045693" Tipo="3"/>

<Movimientos Descripcion="Compra" Monto="181764" CodigoCuenta="94269013" Tipo="1"/>

<Movimientos Descripcion="Devolucion de Compra" Monto="139851" CodigoCuenta="63759760" Tipo="6"/>

<Movimientos Descripcion="Deposito Ventana" Monto="192870" CodigoCuenta="24491553" Tipo="5"/>

<Movimientos Descripcion="Compra" Monto="457501" CodigoCuenta="59274731" Tipo="1"/>

<Movimientos Descripcion="Deposito Ventana" Monto="432241" CodigoCuenta="82792055" Tipo="5"/>

<Movimientos Descripcion="Compra" Monto="463971" CodigoCuenta="28555668" Tipo="1"/>

<Movimientos Descripcion="Retiro ATM" Monto="269575" CodigoCuenta="83253220" Tipo="2"/>

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

	DECLARE @TempUsuarios TABLE ( Sec int IDENTITY(1,1), 
								Usuario VARCHAR(50),
								Contrasenia VARCHAR(20),
								ValDocIdent VARCHAR(50),
								Administrador BIT)

	DECLARE @TempPuedeVer TABLE (Usuario VARCHAR(50),
								NumCuenta VARCHAR(50))

	DECLARE @TempCO TABLE (Sec INT IDENTITY(1,1),
							NumeroCuenta VARCHAR(50),
							EndDate DATE,
							Fee MONEY,
							Objetive VARCHAR(50),
							DaysOfDeposit INT,
							OANumber INT)

	DECLARE @TempEstadoCuenta TABLE (Sec INT IDENTITY(1,1), 
									 CuentaId INT,
									 EstadoCuentaId INT,
									 TipoCuenta INT,
									 Minimo MONEY,
									 FechaCreacion DATE)

	INSERT INTO @TempFechas(fechaOperacion)
	SELECT  T.Item.value('@Fecha', 'DATE')
	FROM @x.nodes('Operaciones/FechaOperacion') as T(Item)
	--SELECT * FROM @TempFechas

	DECLARE @OperationDate VARCHAR(16),
			@lo1 DATE, --iteradores
			@hi1 DATE

	SELECT @lo1 = MIN(fechaOperacion),
		   @hi1 = MAX(fechaOperacion)
	FROM @TempFechas

	WHILE @lo1 <= @hi1
		BEGIN
			SET @OperationDate = CONVERT(varchar, @lo1, 110)
			--SELECT @OperationDate AS Dia
			--borrando las filas de las tablas
			--DELETE @TempPersonas
			DELETE @TempCuentas
			DELETE @TempBeneficiario
			DELETE @TempMovimientos
			DELETE @TempUsuarios
			DELETE @TempPuedeVer
			DELETE @TempEstadoCuenta
			DELETE @TempCO
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
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@OperationDate")]/Persona') as T(Item)

			--Insertar en tablas variables

			INSERT INTO @TempCuentas(TipoCuentaID,
									 ValDocIDent,
									 NumeroCuenta)
			SELECT T.Item.value('@TipoCuentaId','INT'),
				   T.Item.value('@ValorDocumentoIdentidadDelCliente','VARCHAR(50)'),
				   T.Item.value('@NumeroCuenta','VARCHAR(50)')
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@OperationDate")]/Cuenta') as T(Item)

			INSERT INTO @TempBeneficiario(ParentescoID,
									 ValDocIDent,
									 NumeroCuenta,
									 Porcentaje)
			SELECT T.Item.value('@ParentezcoId','INT'),
				   T.Item.value('@ValorDocumentoIdentidadBeneficiario','VARCHAR(50)'),
	  			   T.Item.value('@NumeroCuenta','VARCHAR(50)'),
				   T.Item.value('@Porcentaje','INT')
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@OperationDate")]/Beneficiario') as T(Item)

			INSERT INTO @TempMovimientos(NumCuenta,
									 TipoMovimiento,
									 Monto,
									 Descripcion)
			SELECT T.Item.value('@CodigoCuenta','VARCHAR(50)'),
				   T.Item.value('@Tipo','INT'),
				   T.Item.value('@Monto','MONEY'),
				   T.Item.value('@Descripcion','VARCHAR(100)')
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@OperationDate")]/Movimientos') as T(Item)

			INSERT INTO @TempUsuarios(Usuario,
								Contrasenia,
								ValDocIdent,
								Administrador)
			SELECT T.Item.value('@User','VARCHAR(50)'),
				   T.Item.value('@Pass','VARCHAR(20)'),
				   T.Item.value('@ValorDocumentoIdentidad','VARCHAR(50)'),
				   T.Item.value('@EsAdministrador','BIT')
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@OperationDate")]/Usuario') as T(Item)

			INSERT INTO @TempPuedeVer(Usuario,
									  NumCuenta)
			SELECT T.Item.value('@User','VARCHAR(50)'),
				   T.Item.value('@Cuenta','VARCHAR(50)')
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@OperationDate")]/UsuarioPuedeVer') as T(Item)

			INSERT INTO @TempCO(NumeroCuenta,
								EndDate,
								Fee,
								Objetive,
								DaysOfDeposit,
								OANumber)
			SELECT T.Item.value('@NumeroCuentaPrimaria','VARCHAR(50)'),
				   T.Item.value('@FechaFinal','DATE'),
				   T.Item.value('@MontoAhorro','MONEY'),
				   T.Item.value('@Descripcion','VARCHAR(50)'),
				   T.Item.value('@DiaAhorro','INT'),
				   T.Item.value('@NumeroCuentaAhorro','INT')
			FROM @x.nodes('Operaciones/FechaOperacion[@Fecha=sql:variable("@OperationDate")]/CuentaAhorro') as T(Item)
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

			--------Benefactor

			--------Movimiento


			DECLARE 
					@minimo INT, 
					@maximo INT,
					@CuentaId INT,
					@PersonaId INT,
					@Tipo INT,
					@EstadoCuentaId INT,
					@monto MONEY,
					@SaldoActual MONEY,
					@Descripcion VARCHAR(100),
					@NumCuenta VARCHAR(50),
					@MinSaldo MONEY,
					@MovimientoActual INT

					SELECT @minimo =MIN(Sec), 
						   @maximo = MAX(Sec)
					FROM @TempMovimientos
					
					WHILE @minimo <= @maximo
						BEGIN 

							SELECT 
								@Tipo = TM.TipoMovimiento,
								@Descripcion = TM.Descripcion,
								@NumCuenta = TM.NumCuenta,
								@MovimientoActual = TM.TipoMovimiento
							FROM @TempMovimientos TM
							WHERE TM.Sec = @minimo 

							IF((@MovimientoActual = 1 OR @MovimientoActual = 2 OR @MovimientoActual = 3))
								BEGIN
									SELECT @monto = -1*TM.Monto
									FROM @TempMovimientos TM
									WHERE TM.Sec = @minimo

									IF (@MovimientoActual = 2)
										BEGIN
											UPDATE [dbo].[AccountStatement]
											SET AtmOps = AtmOps + 1,
												InsertAt = GETDATE(),
												InsertBy = 'script',
												InsertIn = '186.176.102.189'
											WHERE [dbo].[AccountStatement].[SavingsAccountId] = @CuentaId
										END
									ElSE IF (@MovimientoActual = 3)
										BEGIN
											UPDATE [dbo].[AccountStatement]
											SET HumOps = HumOps + 1,
												InsertAt = GETDATE(),
												InsertBy = 'script',
												InsertIn = '186.176.102.189'
											WHERE [dbo].[AccountStatement].[SavingsAccountId] = @CuentaId
										END
								END
							ELSE
								BEGIN
									SELECT @monto = TM.Monto
									FROM @TempMovimientos TM
									WHERE TM.Sec = @minimo
								END
							
							SELECT @CuentaId = SA.Id
							FROM [dbo].[SavingsAccount] SA,
								 @TempMovimientos TM
							WHERE TM.Sec = @minimo AND SA.[AccountNumber] = TM.NumCuenta

							SELECT @EstadoCuentaId = AC.Id
							FROM [dbo].[AccountStatement] AC
							WHERE @lo1 < AC.EndDate AND AC.[SavingsAccountId] = @CuentaId

							SELECT @SaldoActual = SA.Balance
							FROM [dbo].[SavingsAccount] SA
							WHERE SA.Id = @CuentaId

							SELECT @MinSaldo = AC.MinBalance
							FROM [dbo].[AccountStatement] AC
							WHERE @lo1 < AC.EndDate AND AC.Id = @EstadoCuentaId

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
								   ABS(@monto),
								   @SaldoActual + @monto,
								   @Descripcion,
								   1,
								   @lo1)

							UPDATE [dbo].[SavingsAccount]
							SET Balance = @SaldoActual + @monto,
								InsertAt = GETDATE(),
								InsertBy = 'script',
								InsertIn = '186.176.102.189'
							WHERE [dbo].[SavingsAccount].Id = @CuentaId

							IF((@SaldoActual + @monto) < @MinSaldo)
								BEGIN
									UPDATE [dbo].[AccountStatement]
									SET MinBalance = @SaldoActual + @monto,
										InsertAt = GETDATE(),
										InsertBy = 'script',
										InsertIn = '186.176.102.189'
									WHERE [dbo].[AccountStatement].[SavingsAccountId] = @CuentaId
								END

							IF (@MinSaldo = 0 AND @monto>0)
								BEGIN
									UPDATE [dbo].[AccountStatement]
									SET MinBalance = @monto,
										InsertAt = GETDATE(),
										InsertBy = 'script',
										InsertIn = '186.176.102.189'
									WHERE [dbo].[AccountStatement].[SavingsAccountId] = @CuentaId
								END

							SET @minimo = @minimo + 1
						END

			----------Movimiento

			----------Usuarios----------
			INSERT INTO [dbo].[User] (PersonId,
									  UserName,
									  Password,
									  isAdministrator,
									  InsertAt,
									  InsertBy,
									  InsertIn)
			SELECT TP.Id,
				   TU.Usuario,
				   TU.Contrasenia,
				   TU.Administrador,
				   GETDATE(),
				   'Script',
				   '186.176.102.189'
			FROM @TempUsuarios TU
			INNER JOIN [dbo].[Person] TP ON TP.[ValueDocIden] = TU.ValDocIdent
			----------Usuarios----------

			----------UsuarioPuedeVer----------
			INSERT INTO [dbo].[UserCanAccess] (UserId,
									  SavingsAccountId,
									  Condition,
									  InsertAt,
									  UpdateAt)
			SELECT U.Id,
				   SA.Id,
				   1,
				   GETDATE(),
				   GETDATE()
			FROM @TempPuedeVer TPV
			INNER JOIN [dbo].[User] U ON U.Password = TPV.Usuario
			INNER JOIN [dbo].[SavingsAccount] SA ON SA.AccountNumber = TPV.NumCuenta
			----------UsuarioPuedeVer----------

			--------------------CuentasObjetivo--------------------
			INSERT INTO [dbo].[ObjetiveAccount] (SavingsAccountId,
												StartDate,
												EndDate,
												Fee,
												Objective,
												Balance,
												AcumInterest,
												DaysOfDeposit,
												OANumber,
												Active)
			SELECT SA.Id,
				   @lo1,
				   TCO.EndDate,
				   TCO.Fee,
				   TCO.Objetive,
				   0,
				   (0.5*(DATEDIFF(MONTH, @lo1, TCO.EndDate)))/100,
				   TCO.DaysOfDeposit,
				   TCO.OANumber,
				   1
			FROM @TempCO TCO
			INNER JOIN [dbo].[SavingsAccount] SA ON SA.AccountNumber = TCO.NumeroCuenta
			--------------------CuentasObjetivo--------------------

			------------------InteresDiarioObjetiveAccount------------------
			DECLARE @minimo3 INT,
				    @maximo3 INT,
					@COId INT,
					@saldo MONEY,
					@intereses FLOAT

			SELECT @minimo3 = MIN(CO.Id),
				   @maximo3 = MAX(CO.Id)
			FROM [dbo].[ObjetiveAccount] CO

			WHILE @minimo3 <= @maximo3
				BEGIN
					SELECT @COId = CO.Id,
						   @saldo = CO.Balance,
						   @intereses = CO.AcumInterest
					FROM [dbo].[ObjetiveAccount] CO
					WHERE CO.Id = @minimo3  AND CO.Active = 1

					EXEC dbo.interesDiarioCO @COId, @saldo, @intereses, @lo1

					SET @minimo3 = @minimo3 + 1
				END
			------------------InteresDiarioObjetiveAccount------------------

			----------------------------DepositoCuentaObjetivo----------------------------

			DECLARE @minimo4 INT,
				    @maximo4 INT,
					@idCuentaPrincipal INT,
					@idCuentaObjetivo INT,
					@montoTran MONEY,
					@dia VARCHAR(50)

			SELECT @minimo4 = MIN(CO.Id),
				   @maximo4 = MAX(CO.Id)
			FROM [dbo].[ObjetiveAccount] CO


			WHILE @minimo4 <= @maximo4
				BEGIN
					SELECT @dia = OBJ.[DaysOfDeposit]
					FROM [dbo].[ObjetiveAccount] OBJ
					WHERE OBJ.Id = @minimo4  

					IF (DAY(@lo1) = @dia)
						BEGIN
							SELECT @idCuentaPrincipal = OBJ.[SavingsAccountId],
								   @idCuentaObjetivo = OBJ.[Id],
								   @montoTran = OBJ.[Fee]
							FROM [dbo].[ObjetiveAccount] OBJ
							WHERE OBJ.Id = @minimo4 AND OBJ.Active = 1

							EXEC dbo.depositoObjetivo @idCuentaPrincipal, @idCuentaObjetivo, @montoTran, @lo1

						END

					SET @minimo4 = @minimo4 + 1
				END

			------------------------------DepositoCuentaObjetivo----------------------------

			------------------------------RedencionCO--------------------------------

			DECLARE @minimo5 INT,
				    @maximo5 INT,
					@fecha DATE,
					@cuentaPrinId INT,
					@cuentaObjId INT

			SELECT @minimo5 = MIN(CO.Id),
				   @maximo5 = MAX(CO.Id)
			FROM [dbo].[ObjetiveAccount] CO


			WHILE @minimo5 <= @maximo5
				BEGIN
					SELECT @fecha = OBJ.[EndDate],
						   @cuentaPrinId = OBJ. [SavingsAccountId],
						   @cuentaObjId = OBJ.[Id]
					FROM [dbo].[ObjetiveAccount] OBJ
					WHERE OBJ.Id = @minimo5  

					IF ((CAST( @fecha AS DATE) = CAST( @lo1 AS DATE)))
						BEGIN
							EXEC dbo.redencionCO @cuentaPrinId, @cuentaObjId, @lo1
						END
					SET @minimo5 = @minimo5 + 1
				END
			----------------------------RedencionCO--------------------------------

			-------------Cerrar estados de cuenta---------------
			INSERT INTO @TempEstadoCuenta (CuentaId,
											EstadoCuentaId,
											TipoCuenta,
											Minimo,
											FechaCreacion)
			SELECT AC.[SavingsAccountId],
				   AC.[Id],
				   SA.[TypeSavingsAccountId],
				   AC.[MinBalance],
				   AC.[StartDate]
			FROM [dbo].[AccountStatement] AC,
				 [dbo].[SavingsAccount] SA
			WHERE (CAST(AC.[EndDate] AS DATE) = CAST(@lo1 AS DATE)) AND AC.[SavingsAccountId] = SA.Id

			DECLARE 
					@minimo2 INT, 
					@maximo2 INT,
					@Cuenta INT,
					@EstadoCuenta INT,
					@TipoCuenta INT,
					@SaldoMin MONEY,
					@FechaC DATE

			SELECT @minimo2 = MIN(Sec), 
				   @maximo2 = MAX(Sec)
			FROM @TempEstadoCuenta

			WHILE @minimo2 <= @maximo2
				BEGIN
					SELECT @Cuenta = TEC.CuentaId,
						   @EstadoCuenta = TEC.EstadoCuentaId,
						   @TipoCuenta = TEC.TipoCuenta,
						   @SaldoMin = TEC.Minimo,
						   @FechaC = TEC.FechaCreacion
					FROM @TempEstadoCuenta TEC
					WHERE TEC.Sec = @minimo2

					EXEC dbo.CerrarEstadoCuenta @Cuenta, @EstadoCuenta, @TipoCuenta, @SaldoMin, @FechaC, @lo1

					SET @minimo2 = @minimo2 + 1
				END
			----------------------------------------------------

			SET @lo1=DATEADD(d,1,@lo1)
		END


--SELECT * FROM [dbo].[AccountStatement]
--select * from [dbo].[SavingsAccount] where [dbo].[SavingsAccount].personId = 4
--select * from [dbo].[Movement CA]
--select * from Benefactor
--SELECT * from [dbo].[User]
--SELECT * from [dbo].[UserCanAccess]
--SELECT * FROM [dbo].[Person]
--SELECT * FROM [dbo].[ObjetiveAccount]
--SELECT * FROM [dbo].[Mov CO]
--SELECT * FROM [dbo].[Mov CO Interest]
--select * from [user] where [user].id = 1


--SELECT 1
--WHERE (CAST('12-12-2020' AS DATE) = CAST('12-12-2020' AS DATE))