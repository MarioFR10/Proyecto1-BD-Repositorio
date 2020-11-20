﻿DECLARE @x XML
SET @x = '<Datos>
  <Tipo_Doc>
    <TipoDocuIdentidad Id="1" Nombre="Cedula Nacional"/>
    <TipoDocuIdentidad Id="2" Nombre="Cedula Residente"/>
    <TipoDocuIdentidad Id="3" Nombre="Pasaporte"/>
    <TipoDocuIdentidad Id="4" Nombre="Cedula Juridica"/>
    <TipoDocuIdentidad Id="5" Nombre="Permiso de Trabajo"/>
    <TipoDocuIdentidad Id="6" Nombre="Cedula Extranjera"/>
  </Tipo_Doc>

  <Tipo_Moneda>
    <TipoMoneda Id="1" Nombre="Colones" Simbolo="₡"/>
    <TipoMoneda Id="2" Nombre="Dolares" Simbolo="$"/>
    <TipoMoneda Id="3" Nombre="Euros" Simbolo="€"/>
  </Tipo_Moneda>
  
  <Parentezcos>
    <Parentezco Id="1" Nombre="Padre"/>
    <Parentezco Id="2" Nombre="Madre"/>
    <Parentezco Id="3" Nombre="Hijo"/>
    <Parentezco Id="4" Nombre="Hija"/>
    <Parentezco Id="5" Nombre="Hermano"/>
    <Parentezco Id="6" Nombre="Hermana"/>
    <Parentezco Id="7" Nombre="amigo"/>
    <Parentezco Id="8" Nombre="amiga"/>
  </Parentezcos>


  <Tipo_Cuenta_Ahorros>
    <TipoCuentaAhorro Id="1" Nombre="Proletario" IdTipoMoneda="1" SaldoMinimo="25000.00" MultaSaldoMin="3000.00" CargoAnual = "5000" NumRetirosHumano="5" NumRetirosAutomatico ="8" ComisionHumano="300" ComisionAutomatico="300" Interes ="10" />
    <TipoCuentaAhorro Id="2" Nombre="Profesional" IdTipoMoneda="1" SaldoMinimo="50000.00" MultaSaldoMin="3000.00" CargoAnual = "15000" NumRetirosHumano="5" NumRetirosAutomatico ="8" ComisionHumano="500" ComisionAutomatico="500" Interes ="15" />
    <TipoCuentaAhorro Id="3" Nombre="Exclusivo" IdTipoMoneda="1" SaldoMinimo="100000.00" MultaSaldoMin="3000.00" CargoAnual = "30000" NumRetirosHumano="5" NumRetirosAutomatico ="8" ComisionHumano="1000" ComisionAutomatico="1000" Interes ="20" />
  </Tipo_Cuenta_Ahorros>

  <!-- catalogos-->
  <Personas>
    <Persona TipoDocuIdentidad="1" Nombre="Javith Aguero Hernandez" ValorDocumentoIdentidad="117370445" FechaNacimiento="1999-03-20" Email="aguerojavith@gmail.com" Telefono1="85343403" Telefono2="24197636"/>
    <Persona TipoDocuIdentidad="1" Nombre="Osvaldo Aguero Hernandez" ValorDocumentoIdentidad="12738545" FechaNacimiento="1994-10-13" Email="osadage@gmail.com" Telefono1="87541766" Telefono2="24197545"/>
    <Persona TipoDocuIdentidad="1" Nombre="Franco Quiros Ramirez" ValorDocumentoIdentidad="106030039" FechaNacimiento="1963-04-09" Email="fquiros@itcr.ac.cr" Telefono1="87128720" Telefono2="22124523"/>
    <Persona TipoDocuIdentidad="1" Nombre="Juana Perez Mendez" ValorDocumentoIdentidad="144488000" FechaNacimiento="1973-10-09" Email="perezjuana@yahoo.com" Telefono1="70112205" Telefono2="22064286"/>
    <Persona TipoDocuIdentidad="1" Nombre="Marco Orozco Guevara" ValorDocumentoIdentidad="153816920" FechaNacimiento="1982-09-27" Email="orozcomarco@yahoo.com" Telefono1="84846568" Telefono2="20436193"/>
    <Persona TipoDocuIdentidad="1" Nombre="Guadalupe Zuñiga Chacon" ValorDocumentoIdentidad="105711321" FechaNacimiento="1988-06-05" Email="zuñigaguadalupe@gmail.com" Telefono1="75624554" Telefono2="24415744"/>
    <Persona TipoDocuIdentidad="1" Nombre="Juana Oviedo Trejos" ValorDocumentoIdentidad="195864670" FechaNacimiento="1992-09-22" Email="oviedojuana@gmail.com" Telefono1="74584726" Telefono2="28517141"/>
    <Persona TipoDocuIdentidad="1" Nombre="Óscar Villalobos Romero" ValorDocumentoIdentidad="145019786" FechaNacimiento="1977-03-01" Email="villalobosóscar@hotmail.com" Telefono1="72639471" Telefono2="23969186"/>
    <Persona TipoDocuIdentidad="1" Nombre="Ana Hernandez Gomez" ValorDocumentoIdentidad="149892757" FechaNacimiento="1971-01-06" Email="hernandezana@gmail.com" Telefono1="84257486" Telefono2="24381362"/>
    <Persona TipoDocuIdentidad="1" Nombre="Jose Flores Arguedas" ValorDocumentoIdentidad="179934028" FechaNacimiento="1971-01-26" Email="floresjose@yahoo.com" Telefono1="67707206" Telefono2="25114511"/>
    <Persona TipoDocuIdentidad="1" Nombre="Óscar Alvarado Lobo" ValorDocumentoIdentidad="176790244" FechaNacimiento="2003-09-12" Email="alvaradoóscar@gmail.com" Telefono1="85669123" Telefono2="23768261"/>
    <Persona TipoDocuIdentidad="1" Nombre="Ruben Cubero Duarte" ValorDocumentoIdentidad="167231980" FechaNacimiento="1996-06-01" Email="cuberoruben@yahoo.com" Telefono1="78241767" Telefono2="27668408"/>
    <Persona TipoDocuIdentidad="1" Nombre="Elena Flores Varela" ValorDocumentoIdentidad="159471918" FechaNacimiento="1998-05-06" Email="floreselena@gmail.com" Telefono1="66198589" Telefono2="24834379"/>
    <Persona TipoDocuIdentidad="1" Nombre="Jose Ulloa Ulate" ValorDocumentoIdentidad="163482829" FechaNacimiento="2006-10-20" Email="ulloajose@outlook.com" Telefono1="75054233" Telefono2="25115426"/>
    <Persona TipoDocuIdentidad="1" Nombre="Armando Mendez Fonseca" ValorDocumentoIdentidad="163444875" FechaNacimiento="1970-07-08" Email="mendezarmando@gmail.com" Telefono1="83318758" Telefono2="27319086"/>
    <Persona TipoDocuIdentidad="1" Nombre="Araceli Serrano Arroyo" ValorDocumentoIdentidad="124532423" FechaNacimiento="1972-06-06" Email="serranoaraceli@hotmail.com" Telefono1="81135107" Telefono2="23020064"/>
    <Persona TipoDocuIdentidad="1" Nombre="Victor Moreno Melendez" ValorDocumentoIdentidad="143217478" FechaNacimiento="1998-10-08" Email="morenovictor@yahoo.com" Telefono1="78758222" Telefono2="20054709"/>
    <Persona TipoDocuIdentidad="1" Nombre="Agustin Guevara Oviedo" ValorDocumentoIdentidad="182157649" FechaNacimiento="1972-01-27" Email="guevaraagustin@yahoo.com" Telefono1="64151372" Telefono2="23261725"/>
    <Persona TipoDocuIdentidad="1" Nombre="Araceli Artavia Gamboa" ValorDocumentoIdentidad="117359964" FechaNacimiento="2009-04-16" Email="artaviaaraceli@gmail.com" Telefono1="68960591" Telefono2="26030512"/>
    <Persona TipoDocuIdentidad="1" Nombre="Ana Ulloa Cubero" ValorDocumentoIdentidad="144127398" FechaNacimiento="2002-02-01" Email="ulloaana@gmail.com" Telefono1="74484886" Telefono2="22554608"/>
    <Persona TipoDocuIdentidad="1" Nombre="Luisa Barrantes Artavia" ValorDocumentoIdentidad="123168420" FechaNacimiento="1979-01-03" Email="barrantesluisa@gmail.com" Telefono1="74976638" Telefono2="20704613"/>
    <Persona TipoDocuIdentidad="1" Nombre="Juana Sancho Alvarado" ValorDocumentoIdentidad="130982238" FechaNacimiento="1975-08-11" Email="sanchojuana@outlook.com" Telefono1="88067296" Telefono2="23067270"/>
    <Persona TipoDocuIdentidad="1" Nombre="Veronica Chacon Gomez" ValorDocumentoIdentidad="117983527" FechaNacimiento="1976-10-02" Email="chaconveronica@yahoo.com" Telefono1="67983909" Telefono2="23644964"/>
    <Persona TipoDocuIdentidad="1" Nombre="Manuel Ruiz Fuentes" ValorDocumentoIdentidad="165553974" FechaNacimiento="1981-05-12" Email="ruizmanuel@outlook.com" Telefono1="78639851" Telefono2="20415737"/>
    <Persona TipoDocuIdentidad="1" Nombre="Francisco Fernandez Calvo" ValorDocumentoIdentidad="188401987" FechaNacimiento="1984-02-27" Email="fernandezfrancisco@yahoo.com" Telefono1="70494206" Telefono2="26506549"/>
    <Persona TipoDocuIdentidad="1" Nombre="Jesus Gomez Marin" ValorDocumentoIdentidad="111266789" FechaNacimiento="1975-11-07" Email="gomezjesus@outlook.com" Telefono1="87785224" Telefono2="25503373"/>
    <Persona TipoDocuIdentidad="1" Nombre="Antonio Castro Saenz" ValorDocumentoIdentidad="123485695" FechaNacimiento="1973-03-18" Email="castroantonio@gmail.com" Telefono1="63788447" Telefono2="28606182"/>
    <Persona TipoDocuIdentidad="1" Nombre="Daniel Esquivel Retana" ValorDocumentoIdentidad="174009421" FechaNacimiento="1971-06-13" Email="esquiveldaniel@outlook.com" Telefono1="70850322" Telefono2="27810635"/>
    <Persona TipoDocuIdentidad="1" Nombre="Guadalupe Arce Romero" ValorDocumentoIdentidad="110839943" FechaNacimiento="1995-02-02" Email="arceguadalupe@yahoo.com" Telefono1="71546150" Telefono2="27387992"/>
    <Persona TipoDocuIdentidad="1" Nombre="Elena Moreno Gamboa" ValorDocumentoIdentidad="128965552" FechaNacimiento="1970-08-12" Email="morenoelena@yahoo.com" Telefono1="72600503" Telefono2="21350753"/>
    <Persona TipoDocuIdentidad="1" Nombre="Jorge Gomez Murillo" ValorDocumentoIdentidad="197009534" FechaNacimiento="1995-09-19" Email="gomezjorge@outlook.com" Telefono1="88860159" Telefono2="23612150"/>
    <Persona TipoDocuIdentidad="1" Nombre="Armando Ulate Ulate" ValorDocumentoIdentidad="108498449" FechaNacimiento="2009-01-09" Email="ulatearmando@yahoo.com" Telefono1="79823481" Telefono2="29033265"/>
    <Persona TipoDocuIdentidad="1" Nombre="Guadalupe Hernandez Mesen" ValorDocumentoIdentidad="159967351" FechaNacimiento="1995-11-23" Email="hernandezguadalupe@outlook.com" Telefono1="86264294" Telefono2="20938185"/>
    <Persona TipoDocuIdentidad="1" Nombre="Guadalupe Sancho Cerdas" ValorDocumentoIdentidad="182017351" FechaNacimiento="1982-03-14" Email="sanchoguadalupe@outlook.com" Telefono1="66920373" Telefono2="20680181"/>
    <Persona TipoDocuIdentidad="1" Nombre="Elena Cordoba Madriz" ValorDocumentoIdentidad="158742839" FechaNacimiento="1985-06-15" Email="cordobaelena@gmail.com" Telefono1="76909253" Telefono2="29612574"/>
    <Persona TipoDocuIdentidad="1" Nombre="Gustavo Arguedas Valverde" ValorDocumentoIdentidad="158453180" FechaNacimiento="1973-10-23" Email="arguedasgustavo@yahoo.com" Telefono1="72786970" Telefono2="28981340"/>
    <Persona TipoDocuIdentidad="1" Nombre="Javier Gonzalez Barrantes" ValorDocumentoIdentidad="163663784" FechaNacimiento="2003-12-12" Email="gonzalezjavier@hotmail.com" Telefono1="62366464" Telefono2="25865012"/>
    <Persona TipoDocuIdentidad="1" Nombre="Veronica Mata Oviedo" ValorDocumentoIdentidad="131567071" FechaNacimiento="1994-04-04" Email="mataveronica@hotmail.com" Telefono1="78627212" Telefono2="28542468"/>
    <Persona TipoDocuIdentidad="1" Nombre="David Arguedas Hernandez" ValorDocumentoIdentidad="127920248" FechaNacimiento="1975-01-26" Email="arguedasdavid@gmail.com" Telefono1="64324186" Telefono2="21371658"/>
    <Persona TipoDocuIdentidad="1" Nombre="Jose Vindas Campos" ValorDocumentoIdentidad="146448431" FechaNacimiento="1999-12-05" Email="vindasjose@outlook.com" Telefono1="72396134" Telefono2="22273420"/>
    <Persona TipoDocuIdentidad="1" Nombre="Martha Mata Artavia" ValorDocumentoIdentidad="137030304" FechaNacimiento="2005-04-20" Email="matamartha@hotmail.com" Telefono1="78279800" Telefono2="22144149"/>
    <Persona TipoDocuIdentidad="1" Nombre="Luisa Gomez Mendez" ValorDocumentoIdentidad="150445262" FechaNacimiento="1974-01-02" Email="gomezluisa@outlook.com" Telefono1="77009103" Telefono2="23969602"/>
    <Persona TipoDocuIdentidad="1" Nombre="Elena Mata Ulloa" ValorDocumentoIdentidad="169839045" FechaNacimiento="2000-06-09" Email="mataelena@yahoo.com" Telefono1="82306490" Telefono2="23829787"/>
    <Persona TipoDocuIdentidad="1" Nombre="Maria Garita Gutierrez" ValorDocumentoIdentidad="174808854" FechaNacimiento="1996-08-26" Email="garitamaria@hotmail.com" Telefono1="78317974" Telefono2="22023831"/>
    <Persona TipoDocuIdentidad="1" Nombre="David Gomez Montoya" ValorDocumentoIdentidad="133999731" FechaNacimiento="1976-01-13" Email="gomezdavid@gmail.com" Telefono1="88299667" Telefono2="22517528"/>
    <Persona TipoDocuIdentidad="1" Nombre="Gabriel Cubero Araya" ValorDocumentoIdentidad="190827168" FechaNacimiento="2007-06-07" Email="cuberogabriel@yahoo.com" Telefono1="72910376" Telefono2="24230935"/>
    <Persona TipoDocuIdentidad="1" Nombre="Maria Mata Marin" ValorDocumentoIdentidad="177230015" FechaNacimiento="1980-02-22" Email="matamaria@outlook.com" Telefono1="62588192" Telefono2="20070072"/>
    <Persona TipoDocuIdentidad="1" Nombre="Araceli Cascante Moya" ValorDocumentoIdentidad="145224763" FechaNacimiento="1982-07-06" Email="cascantearaceli@yahoo.com" Telefono1="86816329" Telefono2="24659187"/>
    <Persona TipoDocuIdentidad="1" Nombre="Rosario Mora Oviedo" ValorDocumentoIdentidad="190123830" FechaNacimiento="1972-11-18" Email="morarosario@outlook.com" Telefono1="87050247" Telefono2="29094221"/>
    <Persona TipoDocuIdentidad="1" Nombre="Araceli Arce Ulloa" ValorDocumentoIdentidad="118427232" FechaNacimiento="2001-09-05" Email="arcearaceli@outlook.com" Telefono1="77204711" Telefono2="24486089"/>
    <Persona TipoDocuIdentidad="1" Nombre="Maria Roman Contreras" ValorDocumentoIdentidad="153062089" FechaNacimiento="1986-04-07" Email="romanmaria@gmail.com" Telefono1="64991161" Telefono2="25509328"/>
    <Persona TipoDocuIdentidad="1" Nombre="Alberto Lizano Cubero" ValorDocumentoIdentidad="136975395" FechaNacimiento="1988-06-06" Email="lizanoalberto@outlook.com" Telefono1="66609739" Telefono2="24096855"/>
    <Persona TipoDocuIdentidad="1" Nombre="Gustavo Briceño Contreras" ValorDocumentoIdentidad="118882593" FechaNacimiento="1996-10-07" Email="briceñogustavo@gmail.com" Telefono1="74330626" Telefono2="20742696"/>
    <Persona TipoDocuIdentidad="1" Nombre="Agustin Martinez Mesen" ValorDocumentoIdentidad="152711632" FechaNacimiento="1975-08-16" Email="martinezagustin@hotmail.com" Telefono1="79515954" Telefono2="25412870"/>
    <Persona TipoDocuIdentidad="1" Nombre="Roberto Serrano Madrigal" ValorDocumentoIdentidad="161104984" FechaNacimiento="1971-08-22" Email="serranoroberto@gmail.com" Telefono1="86134733" Telefono2="21571099"/>
    <Persona TipoDocuIdentidad="1" Nombre="Gustavo Serrano Chacon" ValorDocumentoIdentidad="147877492" FechaNacimiento="1979-01-28" Email="serranogustavo@gmail.com" Telefono1="73745410" Telefono2="27308621"/>
    <Persona TipoDocuIdentidad="1" Nombre="Luisa Leiva Alfaro" ValorDocumentoIdentidad="168556538" FechaNacimiento="1995-11-24" Email="leivaluisa@outlook.com" Telefono1="64001058" Telefono2="22979425"/>
    <Persona TipoDocuIdentidad="1" Nombre="Maria Valverde Zamora" ValorDocumentoIdentidad="134914730" FechaNacimiento="1978-10-28" Email="valverdemaria@hotmail.com" Telefono1="74731717" Telefono2="22347258"/>
    <Persona TipoDocuIdentidad="1" Nombre="Marco Reyes Arroyo" ValorDocumentoIdentidad="139813320" FechaNacimiento="1970-05-15" Email="reyesmarco@hotmail.com" Telefono1="80980417" Telefono2="27941094"/>
    <Persona TipoDocuIdentidad="1" Nombre="Isabel Cerdas Saborio" ValorDocumentoIdentidad="125000522" FechaNacimiento="1970-03-21" Email="cerdasisabel@gmail.com" Telefono1="78994915" Telefono2="21598027"/>
    <Persona TipoDocuIdentidad="1" Nombre="Gabriel Retana Moreno" ValorDocumentoIdentidad="100673640" FechaNacimiento="1994-01-12" Email="retanagabriel@outlook.com" Telefono1="82546895" Telefono2="21695361"/>
    <Persona TipoDocuIdentidad="1" Nombre="Luisa Mesen Zuñiga" ValorDocumentoIdentidad="169098517" FechaNacimiento="2007-07-22" Email="mesenluisa@outlook.com" Telefono1="63349996" Telefono2="20741303"/>
    <Persona TipoDocuIdentidad="1" Nombre="Antonio Vindas Valverde" ValorDocumentoIdentidad="165057936" FechaNacimiento="2000-05-04" Email="vindasantonio@hotmail.com" Telefono1="78951860" Telefono2="21359380"/>
    <Persona TipoDocuIdentidad="1" Nombre="Ana Orozco Barrantes" ValorDocumentoIdentidad="169618231" FechaNacimiento="2007-03-05" Email="orozcoana@gmail.com" Telefono1="73120540" Telefono2="21601400"/>
    <Persona TipoDocuIdentidad="1" Nombre="Jorge Campos Briceño" ValorDocumentoIdentidad="120333190" FechaNacimiento="2008-07-12" Email="camposjorge@hotmail.com" Telefono1="80132342" Telefono2="23327334"/>
    <Persona TipoDocuIdentidad="1" Nombre="Manuel Fernandez Madrigal" ValorDocumentoIdentidad="163553801" FechaNacimiento="1984-04-07" Email="fernandezmanuel@outlook.com" Telefono1="80343821" Telefono2="23654073"/>
    <Persona TipoDocuIdentidad="1" Nombre="Fernanda Carmona Lizano" ValorDocumentoIdentidad="113251331" FechaNacimiento="2000-11-24" Email="carmonafernanda@hotmail.com" Telefono1="68716651" Telefono2="23867987"/>
    <Persona TipoDocuIdentidad="1" Nombre="David Retana Zamora" ValorDocumentoIdentidad="188410319" FechaNacimiento="1976-10-13" Email="retanadavid@outlook.com" Telefono1="69413907" Telefono2="24879294"/>
    <Persona TipoDocuIdentidad="1" Nombre="Armando Barrantes Ulate" ValorDocumentoIdentidad="199403646" FechaNacimiento="1984-07-17" Email="barrantesarmando@gmail.com" Telefono1="80651464" Telefono2="25191017"/>
    <Persona TipoDocuIdentidad="1" Nombre="Jorge Marin Cespedes" ValorDocumentoIdentidad="152348362" FechaNacimiento="1995-07-22" Email="marinjorge@hotmail.com" Telefono1="72878459" Telefono2="28056945"/>
    <Persona TipoDocuIdentidad="1" Nombre="Manuel Aguilar Arce" ValorDocumentoIdentidad="150205835" FechaNacimiento="2008-08-06" Email="aguilarmanuel@hotmail.com" Telefono1="76442031" Telefono2="27820859"/>
    <Persona TipoDocuIdentidad="1" Nombre="Daniel Moreno Gamboa" ValorDocumentoIdentidad="101995117" FechaNacimiento="1993-02-27" Email="morenodaniel@yahoo.com" Telefono1="64712586" Telefono2="26636650"/>
    <Persona TipoDocuIdentidad="1" Nombre="Daniel Lobo Madriz" ValorDocumentoIdentidad="122111670" FechaNacimiento="1998-10-23" Email="lobodaniel@gmail.com" Telefono1="63314303" Telefono2="24831698"/>
    <Persona TipoDocuIdentidad="1" Nombre="Araceli Roman Melendez" ValorDocumentoIdentidad="131927856" FechaNacimiento="1980-03-09" Email="romanaraceli@yahoo.com" Telefono1="77935210" Telefono2="28081350"/>
    <Persona TipoDocuIdentidad="1" Nombre="David Carmona Flores" ValorDocumentoIdentidad="143713856" FechaNacimiento="2003-05-01" Email="carmonadavid@yahoo.com" Telefono1="83384660" Telefono2="29294080"/>
    <Persona TipoDocuIdentidad="1" Nombre="Martha Umaña Oviedo" ValorDocumentoIdentidad="178375881" FechaNacimiento="2004-12-03" Email="umañamartha@hotmail.com" Telefono1="73649247" Telefono2="21011278"/>
    <Persona TipoDocuIdentidad="1" Nombre="Fernanda Cordoba Barrantes" ValorDocumentoIdentidad="113219168" FechaNacimiento="1995-03-16" Email="cordobafernanda@gmail.com" Telefono1="83850890" Telefono2="25983988"/>
    <Persona TipoDocuIdentidad="1" Nombre="Maria Villarreal Mendez" ValorDocumentoIdentidad="133186390" FechaNacimiento="1973-05-07" Email="villarrealmaria@outlook.com" Telefono1="74357830" Telefono2="25278263"/>
    <Persona TipoDocuIdentidad="1" Nombre="David Matarrita Cespedes" ValorDocumentoIdentidad="107687952" FechaNacimiento="2002-10-20" Email="matarritadavid@yahoo.com" Telefono1="74281147" Telefono2="27896811"/>
    <Persona TipoDocuIdentidad="1" Nombre="David Aguilar Chacon" ValorDocumentoIdentidad="135878368" FechaNacimiento="1977-09-06" Email="aguilardavid@hotmail.com" Telefono1="71280849" Telefono2="22639348"/>
    <Persona TipoDocuIdentidad="1" Nombre="Teresa Reyes Calvo" ValorDocumentoIdentidad="189149822" FechaNacimiento="2003-12-03" Email="reyesteresa@yahoo.com" Telefono1="86796708" Telefono2="24187642"/>
    <Persona TipoDocuIdentidad="1" Nombre="Luisa Mata Zamora" ValorDocumentoIdentidad="108487167" FechaNacimiento="1975-12-16" Email="mataluisa@outlook.com" Telefono1="65525107" Telefono2="24675264"/>
    <Persona TipoDocuIdentidad="1" Nombre="Veronica Reyes Ruiz" ValorDocumentoIdentidad="140728483" FechaNacimiento="1971-03-21" Email="reyesveronica@outlook.com" Telefono1="63560949" Telefono2="21743253"/>
    <Persona TipoDocuIdentidad="1" Nombre="Luisa Cascante Montoya" ValorDocumentoIdentidad="152668209" FechaNacimiento="1995-02-14" Email="cascanteluisa@outlook.com" Telefono1="87415071" Telefono2="28064943"/>
    <Persona TipoDocuIdentidad="1" Nombre="Isabel Rivera Carvajal" ValorDocumentoIdentidad="174329739" FechaNacimiento="1975-01-23" Email="riveraisabel@outlook.com" Telefono1="85165977" Telefono2="25814203"/>
    <Persona TipoDocuIdentidad="1" Nombre="Gloria Padilla Peña" ValorDocumentoIdentidad="110852503" FechaNacimiento="1981-08-13" Email="padillagloria@hotmail.com" Telefono1="87266535" Telefono2="20471569"/>
    <Persona TipoDocuIdentidad="1" Nombre="Yolanda Monge Castro" ValorDocumentoIdentidad="176967894" FechaNacimiento="1996-04-01" Email="mongeyolanda@outlook.com" Telefono1="80130984" Telefono2="22043106"/>
    <Persona TipoDocuIdentidad="1" Nombre="David Barrantes Aguilar" ValorDocumentoIdentidad="106261426" FechaNacimiento="1986-12-28" Email="barrantesdavid@yahoo.com" Telefono1="75054550" Telefono2="27475909"/>
    <Persona TipoDocuIdentidad="1" Nombre="Alberto Saborio Montoya" ValorDocumentoIdentidad="142941111" FechaNacimiento="1979-10-01" Email="saborioalberto@outlook.com" Telefono1="85668031" Telefono2="28913932"/>
    <Persona TipoDocuIdentidad="1" Nombre="Gustavo Duarte Valverde" ValorDocumentoIdentidad="109067704" FechaNacimiento="2006-06-25" Email="duartegustavo@outlook.com" Telefono1="82765812" Telefono2="27066817"/>
    <Persona TipoDocuIdentidad="1" Nombre="Rosa Matarrita Umaña" ValorDocumentoIdentidad="185351883" FechaNacimiento="1972-02-17" Email="matarritarosa@outlook.com" Telefono1="86512737" Telefono2="22604651"/>
    <Persona TipoDocuIdentidad="1" Nombre="Rosa Carvajal Melendez" ValorDocumentoIdentidad="180881845" FechaNacimiento="2008-04-07" Email="carvajalrosa@outlook.com" Telefono1="79411347" Telefono2="29258376"/>
    <Persona TipoDocuIdentidad="1" Nombre="Roberto Serrano Reyes" ValorDocumentoIdentidad="138597348" FechaNacimiento="1985-01-13" Email="serranoroberto@hotmail.com" Telefono1="79627272" Telefono2="23809653"/>
    <Persona TipoDocuIdentidad="1" Nombre="Javier Salas Contreras" ValorDocumentoIdentidad="168856475" FechaNacimiento="1974-05-26" Email="salasjavier@hotmail.com" Telefono1="72442270" Telefono2="28452109"/>
    <Persona TipoDocuIdentidad="1" Nombre="Óscar Acosta Murillo" ValorDocumentoIdentidad="147441451" FechaNacimiento="2000-02-09" Email="acostaóscar@hotmail.com" Telefono1="63048575" Telefono2="28971897"/>
    <Persona TipoDocuIdentidad="1" Nombre="Rosa Contreras Salas" ValorDocumentoIdentidad="136191600" FechaNacimiento="1975-09-14" Email="contrerasrosa@yahoo.com" Telefono1="78522030" Telefono2="21155193"/>
    <Persona TipoDocuIdentidad="1" Nombre="Luisa Robles Lobo" ValorDocumentoIdentidad="139329273" FechaNacimiento="1973-05-10" Email="roblesluisa@gmail.com" Telefono1="66185116" Telefono2="28890389"/>
    <Persona TipoDocuIdentidad="1" Nombre="Ruben Alvarado Villarreal" ValorDocumentoIdentidad="118343518" FechaNacimiento="1991-03-08" Email="alvaradoruben@gmail.com" Telefono1="81170178" Telefono2="22024848"/>
    <Persona TipoDocuIdentidad="1" Nombre="Jesus Robles Duarte" ValorDocumentoIdentidad="113437879" FechaNacimiento="1979-10-11" Email="roblesjesus@gmail.com" Telefono1="70667455" Telefono2="25184593"/>
    <Persona TipoDocuIdentidad="1" Nombre="Pedro Villalobos Marin" ValorDocumentoIdentidad="171426907" FechaNacimiento="1974-02-12" Email="villalobospedro@gmail.com" Telefono1="80763081" Telefono2="23594514"/>
    <Persona TipoDocuIdentidad="1" Nombre="Gloria Ruiz Orozco" ValorDocumentoIdentidad="134225981" FechaNacimiento="1990-05-28" Email="ruizgloria@gmail.com" Telefono1="63360816" Telefono2="22950386"/>
    <Persona TipoDocuIdentidad="1" Nombre="Isabel Mendez Orozco" ValorDocumentoIdentidad="143062990" FechaNacimiento="1994-10-23" Email="mendezisabel@hotmail.com" Telefono1="89952550" Telefono2="25247636"/>
    <Persona TipoDocuIdentidad="1" Nombre="Rosario Alvarez Cespedes" ValorDocumentoIdentidad="160713985" FechaNacimiento="1975-10-19" Email="alvarezrosario@hotmail.com" Telefono1="84314114" Telefono2="22811250"/>
  </Personas>


  <Cuentas>
   <Cuenta ValorDocumentoIdentidadDelCliente="117370445" TipoCuentaId="1" NumeroCuenta="11000001" FechaCreacion="2020-10-13" Saldo="1000000.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="197009534" TipoCuentaId="3" NumeroCuenta="11013939" FechaCreacion="2020-07-04" Saldo="45670345.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="185351883" TipoCuentaId="1" NumeroCuenta="11493715" FechaCreacion="2016-10-13" Saldo="55904600.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="105711321" TipoCuentaId="1" NumeroCuenta="11592082" FechaCreacion="2018-01-23" Saldo="54996631.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="101995117" TipoCuentaId="2" NumeroCuenta="11860716" FechaCreacion="2020-03-23" Saldo="39121797.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="131567071" TipoCuentaId="3" NumeroCuenta="11687607" FechaCreacion="2014-09-23" Saldo="15877051.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="139813320" TipoCuentaId="1" NumeroCuenta="11010717" FechaCreacion="2016-10-18" Saldo="30630724.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="118427232" TipoCuentaId="1" NumeroCuenta="11469827" FechaCreacion="2013-05-16" Saldo="55323336.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="100673640" TipoCuentaId="1" NumeroCuenta="11117419" FechaCreacion="2020-01-15" Saldo="19503297.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="182157649" TipoCuentaId="1" NumeroCuenta="11108731" FechaCreacion="2018-12-09" Saldo="11593590.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="123485695" TipoCuentaId="3" NumeroCuenta="11260649" FechaCreacion="2016-05-19" Saldo="20511890.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="195864670" TipoCuentaId="2" NumeroCuenta="11327131" FechaCreacion="2010-02-02" Saldo="44960377.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="118882593" TipoCuentaId="2" NumeroCuenta="11620727" FechaCreacion="2020-04-03" Saldo="70129925.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="174808854" TipoCuentaId="1" NumeroCuenta="11385711" FechaCreacion="2010-04-16" Saldo="42254864.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="174009421" TipoCuentaId="1" NumeroCuenta="11534267" FechaCreacion="2010-07-08" Saldo="84241403.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="105711321" TipoCuentaId="3" NumeroCuenta="11024586" FechaCreacion="2019-10-13" Saldo="5502422.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="177230015" TipoCuentaId="1" NumeroCuenta="11589496" FechaCreacion="2020-04-20" Saldo="85578897.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="144488000" TipoCuentaId="3" NumeroCuenta="11794632" FechaCreacion="2012-01-28" Saldo="32301567.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="174808854" TipoCuentaId="1" NumeroCuenta="11514529" FechaCreacion="2019-03-24" Saldo="30164562.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="143217478" TipoCuentaId="3" NumeroCuenta="11405188" FechaCreacion="2010-01-02" Saldo="36362498.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="171426907" TipoCuentaId="3" NumeroCuenta="11085499" FechaCreacion="2017-02-20" Saldo="23236720.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="139329273" TipoCuentaId="1" NumeroCuenta="11373328" FechaCreacion="2016-01-03" Saldo="15594614.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="146448431" TipoCuentaId="3" NumeroCuenta="11392498" FechaCreacion="2019-11-13" Saldo="40362710.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="188410319" TipoCuentaId="1" NumeroCuenta="11704963" FechaCreacion="2012-08-06" Saldo="23329481.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="108487167" TipoCuentaId="2" NumeroCuenta="11335073" FechaCreacion="2013-11-20" Saldo="87306987.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="152668209" TipoCuentaId="2" NumeroCuenta="11796772" FechaCreacion="2015-04-05" Saldo="61940918.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="105711321" TipoCuentaId="2" NumeroCuenta="11665553" FechaCreacion="2014-08-23" Saldo="88940010.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="118427232" TipoCuentaId="1" NumeroCuenta="11683263" FechaCreacion="2016-04-27" Saldo="8884311.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="136975395" TipoCuentaId="1" NumeroCuenta="11329729" FechaCreacion="2011-05-24" Saldo="23324323.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="145019786" TipoCuentaId="1" NumeroCuenta="11589772" FechaCreacion="2013-05-28" Saldo="73494620.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="171426907" TipoCuentaId="1" NumeroCuenta="11463737" FechaCreacion="2012-04-19" Saldo="29379485.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="153062089" TipoCuentaId="2" NumeroCuenta="11943543" FechaCreacion="2017-04-03" Saldo="460083.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="137030304" TipoCuentaId="1" NumeroCuenta="11559857" FechaCreacion="2014-12-03" Saldo="73834739.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="131927856" TipoCuentaId="1" NumeroCuenta="11107814" FechaCreacion="2020-10-10" Saldo="39125732.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="143062990" TipoCuentaId="3" NumeroCuenta="11245285" FechaCreacion="2018-01-07" Saldo="54771930.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="180881845" TipoCuentaId="1" NumeroCuenta="11184977" FechaCreacion="2019-03-05" Saldo="44992914.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="143062990" TipoCuentaId="3" NumeroCuenta="11656323" FechaCreacion="2011-11-18" Saldo="19028303.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="161104984" TipoCuentaId="1" NumeroCuenta="11906350" FechaCreacion="2017-11-27" Saldo="68393567.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="160713985" TipoCuentaId="1" NumeroCuenta="11326139" FechaCreacion="2018-01-23" Saldo="39031990.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="143713856" TipoCuentaId="3" NumeroCuenta="11090371" FechaCreacion="2019-12-02" Saldo="50031566.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="167231980" TipoCuentaId="2" NumeroCuenta="11331999" FechaCreacion="2018-06-16" Saldo="54852072.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="108498449" TipoCuentaId="3" NumeroCuenta="11572464" FechaCreacion="2011-09-26" Saldo="2655771.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="125000522" TipoCuentaId="2" NumeroCuenta="11688942" FechaCreacion="2016-07-17" Saldo="76271760.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="150445262" TipoCuentaId="2" NumeroCuenta="11619085" FechaCreacion="2017-05-10" Saldo="15793587.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="101995117" TipoCuentaId="3" NumeroCuenta="11876702" FechaCreacion="2018-09-17" Saldo="49714501.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="110839943" TipoCuentaId="1" NumeroCuenta="11946763" FechaCreacion="2018-07-05" Saldo="72997918.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="106261426" TipoCuentaId="2" NumeroCuenta="11662844" FechaCreacion="2016-05-01" Saldo="16501112.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="135878368" TipoCuentaId="3" NumeroCuenta="11164352" FechaCreacion="2015-05-25" Saldo="22462337.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="110852503" TipoCuentaId="2" NumeroCuenta="11744607" FechaCreacion="2010-05-20" Saldo="57455222.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="144488000" TipoCuentaId="1" NumeroCuenta="11271116" FechaCreacion="2018-02-15" Saldo="81230932.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="174329739" TipoCuentaId="2" NumeroCuenta="11559001" FechaCreacion="2012-07-01" Saldo="74130436.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="180881845" TipoCuentaId="2" NumeroCuenta="11911212" FechaCreacion="2014-04-02" Saldo="13445239.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="159471918" TipoCuentaId="3" NumeroCuenta="11926871" FechaCreacion="2017-10-01" Saldo="46072920.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="150445262" TipoCuentaId="2" NumeroCuenta="11231182" FechaCreacion="2015-09-05" Saldo="43382699.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="163444875" TipoCuentaId="1" NumeroCuenta="11369347" FechaCreacion="2013-01-16" Saldo="51789553.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="189149822" TipoCuentaId="3" NumeroCuenta="11887844" FechaCreacion="2011-05-28" Saldo="26660696.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="171426907" TipoCuentaId="1" NumeroCuenta="11550097" FechaCreacion="2012-02-09" Saldo="64142625.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="182017351" TipoCuentaId="3" NumeroCuenta="11353150" FechaCreacion="2020-10-03" Saldo="20540625.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="123485695" TipoCuentaId="2" NumeroCuenta="11523965" FechaCreacion="2011-09-18" Saldo="55349163.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="161104984" TipoCuentaId="1" NumeroCuenta="11718078" FechaCreacion="2016-04-08" Saldo="65039711.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="138597348" TipoCuentaId="1" NumeroCuenta="11857673" FechaCreacion="2011-01-19" Saldo="77004852.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="139329273" TipoCuentaId="1" NumeroCuenta="11743285" FechaCreacion="2013-09-14" Saldo="59633911.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="130982238" TipoCuentaId="1" NumeroCuenta="11810863" FechaCreacion="2013-04-18" Saldo="20522082.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="117359964" TipoCuentaId="2" NumeroCuenta="11580263" FechaCreacion="2012-06-26" Saldo="83964960.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="140728483" TipoCuentaId="3" NumeroCuenta="11376583" FechaCreacion="2012-11-14" Saldo="37441791.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="158453180" TipoCuentaId="2" NumeroCuenta="11803382" FechaCreacion="2013-08-06" Saldo="80178488.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="163482829" TipoCuentaId="3" NumeroCuenta="11912657" FechaCreacion="2017-08-01" Saldo="82726427.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="139813320" TipoCuentaId="2" NumeroCuenta="11723762" FechaCreacion="2020-07-20" Saldo="57816903.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="176967894" TipoCuentaId="3" NumeroCuenta="11485022" FechaCreacion="2017-10-10" Saldo="51078662.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="169839045" TipoCuentaId="1" NumeroCuenta="11461191" FechaCreacion="2018-01-01" Saldo="10622102.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="108487167" TipoCuentaId="1" NumeroCuenta="11030946" FechaCreacion="2020-07-05" Saldo="74887194.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="174009421" TipoCuentaId="2" NumeroCuenta="11646718" FechaCreacion="2017-06-14" Saldo="19535130.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="159471918" TipoCuentaId="1" NumeroCuenta="11276446" FechaCreacion="2019-05-23" Saldo="16112370.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="190123830" TipoCuentaId="2" NumeroCuenta="11515832" FechaCreacion="2019-11-01" Saldo="12116117.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="185351883" TipoCuentaId="1" NumeroCuenta="11878561" FechaCreacion="2013-05-27" Saldo="50418712.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="176967894" TipoCuentaId="1" NumeroCuenta="11177296" FechaCreacion="2018-09-17" Saldo="79011299.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="195864670" TipoCuentaId="3" NumeroCuenta="11047707" FechaCreacion="2013-05-22" Saldo="84212113.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="158742839" TipoCuentaId="2" NumeroCuenta="11727944" FechaCreacion="2015-06-15" Saldo="70559981.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="140728483" TipoCuentaId="2" NumeroCuenta="11367221" FechaCreacion="2011-10-04" Saldo="14863181.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="188410319" TipoCuentaId="1" NumeroCuenta="11074472" FechaCreacion="2015-05-18" Saldo="88079747.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="134914730" TipoCuentaId="1" NumeroCuenta="11717523" FechaCreacion="2016-03-03" Saldo="48513697.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="130982238" TipoCuentaId="2" NumeroCuenta="11698661" FechaCreacion="2015-10-14" Saldo="1990325.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="147441451" TipoCuentaId="1" NumeroCuenta="11195546" FechaCreacion="2011-06-21" Saldo="66263244.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="163663784" TipoCuentaId="3" NumeroCuenta="11960326" FechaCreacion="2015-07-22" Saldo="86363295.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="118427232" TipoCuentaId="2" NumeroCuenta="11718762" FechaCreacion="2020-03-04" Saldo="34188760.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="109067704" TipoCuentaId="3" NumeroCuenta="11901258" FechaCreacion="2019-01-11" Saldo="51664899.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="199403646" TipoCuentaId="1" NumeroCuenta="11481862" FechaCreacion="2010-10-02" Saldo="13154702.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="177230015" TipoCuentaId="1" NumeroCuenta="11575136" FechaCreacion="2017-08-07" Saldo="72550649.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="139329273" TipoCuentaId="1" NumeroCuenta="11749619" FechaCreacion="2012-09-14" Saldo="64869066.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="180881845" TipoCuentaId="3" NumeroCuenta="11053263" FechaCreacion="2020-10-27" Saldo="4552056.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="108498449" TipoCuentaId="2" NumeroCuenta="11554662" FechaCreacion="2020-03-13" Saldo="33772600.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="136975395" TipoCuentaId="1" NumeroCuenta="11893632" FechaCreacion="2015-03-07" Saldo="8157087.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="131567071" TipoCuentaId="2" NumeroCuenta="11046419" FechaCreacion="2020-11-02" Saldo="30252285.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="100673640" TipoCuentaId="2" NumeroCuenta="11275551" FechaCreacion="2013-04-22" Saldo="26411934.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="131927856" TipoCuentaId="2" NumeroCuenta="11383961" FechaCreacion="2018-03-10" Saldo="59700529.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="139813320" TipoCuentaId="3" NumeroCuenta="11208369" FechaCreacion="2010-07-17" Saldo="30743099.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="167231980" TipoCuentaId="2" NumeroCuenta="11620444" FechaCreacion="2013-05-15" Saldo="85402806.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="161104984" TipoCuentaId="3" NumeroCuenta="11606859" FechaCreacion="2012-05-11" Saldo="68939625.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="182157649" TipoCuentaId="1" NumeroCuenta="11234701" FechaCreacion="2019-09-23" Saldo="30238252.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="143062990" TipoCuentaId="2" NumeroCuenta="11316046" FechaCreacion="2020-03-28" Saldo="47710940.00"/>
   <Cuenta ValorDocumentoIdentidadDelCliente="117359964" TipoCuentaId="2" NumeroCuenta="11717598" FechaCreacion="2016-08-28" Saldo="26745278.00"/>
  </Cuentas>


  <!-- Entre 20 y 30-->

  <Beneficiarios>
    <Beneficiario NumeroCuenta="11000001" ValorDocumentoIdentidadBeneficiario="12738545" ParentezcoId="5" Porcentaje="25" />
    <Beneficiario NumeroCuenta="11461191" ValorDocumentoIdentidadBeneficiario="105711321" ParentezcoId="7" Porcentaje="87"/>
    <Beneficiario NumeroCuenta="11717523" ValorDocumentoIdentidadBeneficiario="153062089" ParentezcoId="1" Porcentaje="74"/>
    <Beneficiario NumeroCuenta="11260649" ValorDocumentoIdentidadBeneficiario="150205835" ParentezcoId="3" Porcentaje="36"/>
    <Beneficiario NumeroCuenta="11013939" ValorDocumentoIdentidadBeneficiario="168556538" ParentezcoId="7" Porcentaje="10"/>
    <Beneficiario NumeroCuenta="11857673" ValorDocumentoIdentidadBeneficiario="110839943" ParentezcoId="2" Porcentaje="10"/>
    <Beneficiario NumeroCuenta="11688942" ValorDocumentoIdentidadBeneficiario="152348362" ParentezcoId="3" Porcentaje="51"/>
    <Beneficiario NumeroCuenta="11665553" ValorDocumentoIdentidadBeneficiario="153816920" ParentezcoId="4" Porcentaje="59"/>
    <Beneficiario NumeroCuenta="11010717" ValorDocumentoIdentidadBeneficiario="106261426" ParentezcoId="1" Porcentaje="46"/>
    <Beneficiario NumeroCuenta="11943543" ValorDocumentoIdentidadBeneficiario="122111670" ParentezcoId="4" Porcentaje="24"/>
    <Beneficiario NumeroCuenta="11090371" ValorDocumentoIdentidadBeneficiario="117359964" ParentezcoId="3" Porcentaje="27"/>
    <Beneficiario NumeroCuenta="11857673" ValorDocumentoIdentidadBeneficiario="128965552" ParentezcoId="8" Porcentaje="90"/>
    <Beneficiario NumeroCuenta="11717598" ValorDocumentoIdentidadBeneficiario="144488000" ParentezcoId="3" Porcentaje="43"/>
    <Beneficiario NumeroCuenta="11717523" ValorDocumentoIdentidadBeneficiario="169098517" ParentezcoId="2" Porcentaje="26"/>
    <Beneficiario NumeroCuenta="11559857" ValorDocumentoIdentidadBeneficiario="177230015" ParentezcoId="6" Porcentaje="53"/>
    <Beneficiario NumeroCuenta="11717598" ValorDocumentoIdentidadBeneficiario="174329739" ParentezcoId="2" Porcentaje="27"/>
    <Beneficiario NumeroCuenta="11656323" ValorDocumentoIdentidadBeneficiario="199403646" ParentezcoId="5" Porcentaje="1"/>
    <Beneficiario NumeroCuenta="11090371" ValorDocumentoIdentidadBeneficiario="131927856" ParentezcoId="1" Porcentaje="68"/>
    <Beneficiario NumeroCuenta="11245285" ValorDocumentoIdentidadBeneficiario="165553974" ParentezcoId="8" Porcentaje="51"/>
    <Beneficiario NumeroCuenta="11392498" ValorDocumentoIdentidadBeneficiario="138597348" ParentezcoId="3" Porcentaje="62"/>
    <Beneficiario NumeroCuenta="11405188" ValorDocumentoIdentidadBeneficiario="177230015" ParentezcoId="4" Porcentaje="15"/>
    <Beneficiario NumeroCuenta="11047707" ValorDocumentoIdentidadBeneficiario="143217478" ParentezcoId="7" Porcentaje="100"/>
    <Beneficiario NumeroCuenta="11946763" ValorDocumentoIdentidadBeneficiario="180881845" ParentezcoId="8" Porcentaje="75"/>
    <Beneficiario NumeroCuenta="11717598" ValorDocumentoIdentidadBeneficiario="131927856" ParentezcoId="1" Porcentaje="21"/>
    <Beneficiario NumeroCuenta="11013939" ValorDocumentoIdentidadBeneficiario="125000522" ParentezcoId="1" Porcentaje="90"/>
    <Beneficiario NumeroCuenta="11592082" ValorDocumentoIdentidadBeneficiario="179934028" ParentezcoId="7" Porcentaje="3"/>
    <Beneficiario NumeroCuenta="11893632" ValorDocumentoIdentidadBeneficiario="118882593" ParentezcoId="2" Porcentaje="63"/>
    <Beneficiario NumeroCuenta="11046419" ValorDocumentoIdentidadBeneficiario="133186390" ParentezcoId="8" Porcentaje="61"/>
    <Beneficiario NumeroCuenta="11107814" ValorDocumentoIdentidadBeneficiario="182017351" ParentezcoId="8" Porcentaje="80"/>
    <Beneficiario NumeroCuenta="11717598" ValorDocumentoIdentidadBeneficiario="136191600" ParentezcoId="7" Porcentaje="9"/>
    <Beneficiario NumeroCuenta="11260649" ValorDocumentoIdentidadBeneficiario="169618231" ParentezcoId="7" Porcentaje="64"/>
    <Beneficiario NumeroCuenta="11385711" ValorDocumentoIdentidadBeneficiario="105711321" ParentezcoId="4" Porcentaje="13"/>
    <Beneficiario NumeroCuenta="11887844" ValorDocumentoIdentidadBeneficiario="118343518" ParentezcoId="3" Porcentaje="93"/>
    <Beneficiario NumeroCuenta="11550097" ValorDocumentoIdentidadBeneficiario="149892757" ParentezcoId="7" Porcentaje="66"/>
    <Beneficiario NumeroCuenta="11177296" ValorDocumentoIdentidadBeneficiario="110852503" ParentezcoId="7" Porcentaje="64"/>
    <Beneficiario NumeroCuenta="11550097" ValorDocumentoIdentidadBeneficiario="131567071" ParentezcoId="5" Porcentaje="34"/>
    <Beneficiario NumeroCuenta="11912657" ValorDocumentoIdentidadBeneficiario="108487167" ParentezcoId="1" Porcentaje="30"/>
    <Beneficiario NumeroCuenta="11117419" ValorDocumentoIdentidadBeneficiario="160713985" ParentezcoId="3" Porcentaje="71"/>
    <Beneficiario NumeroCuenta="11331999" ValorDocumentoIdentidadBeneficiario="182017351" ParentezcoId="4" Porcentaje="57"/>
    <Beneficiario NumeroCuenta="11276446" ValorDocumentoIdentidadBeneficiario="139813320" ParentezcoId="8" Porcentaje="9"/>
    <Beneficiario NumeroCuenta="11554662" ValorDocumentoIdentidadBeneficiario="163482829" ParentezcoId="7" Porcentaje="38"/>
    <Beneficiario NumeroCuenta="11554662" ValorDocumentoIdentidadBeneficiario="113219168" ParentezcoId="7" Porcentaje="62"/>
    <Beneficiario NumeroCuenta="11926871" ValorDocumentoIdentidadBeneficiario="108487167" ParentezcoId="7" Porcentaje="10"/>
    <Beneficiario NumeroCuenta="11688942" ValorDocumentoIdentidadBeneficiario="153062089" ParentezcoId="7" Porcentaje="5"/>
    <Beneficiario NumeroCuenta="11580263" ValorDocumentoIdentidadBeneficiario="146448431" ParentezcoId="1" Porcentaje="94"/>
    <Beneficiario NumeroCuenta="11887844" ValorDocumentoIdentidadBeneficiario="106261426" ParentezcoId="1" Porcentaje="7"/>
    <Beneficiario NumeroCuenta="11316046" ValorDocumentoIdentidadBeneficiario="111266789" ParentezcoId="8" Porcentaje="6"/>
    <Beneficiario NumeroCuenta="11534267" ValorDocumentoIdentidadBeneficiario="108487167" ParentezcoId="5" Porcentaje="15"/>
    <Beneficiario NumeroCuenta="11335073" ValorDocumentoIdentidadBeneficiario="153816920" ParentezcoId="5" Porcentaje="7"/>
    <Beneficiario NumeroCuenta="11383961" ValorDocumentoIdentidadBeneficiario="180881845" ParentezcoId="3" Porcentaje="85"/>
    <Beneficiario NumeroCuenta="11469827" ValorDocumentoIdentidadBeneficiario="167231980" ParentezcoId="1" Porcentaje="4"/>
    <Beneficiario NumeroCuenta="11926871" ValorDocumentoIdentidadBeneficiario="163663784" ParentezcoId="7" Porcentaje="90"/>
    <Beneficiario NumeroCuenta="11665553" ValorDocumentoIdentidadBeneficiario="174808854" ParentezcoId="5" Porcentaje="41"/>
    <Beneficiario NumeroCuenta="11316046" ValorDocumentoIdentidadBeneficiario="161104984" ParentezcoId="6" Porcentaje="33"/>
    <Beneficiario NumeroCuenta="11177296" ValorDocumentoIdentidadBeneficiario="159471918" ParentezcoId="7" Porcentaje="36"/>
    <Beneficiario NumeroCuenta="11373328" ValorDocumentoIdentidadBeneficiario="101995117" ParentezcoId="5" Porcentaje="31"/>
    <Beneficiario NumeroCuenta="11810863" ValorDocumentoIdentidadBeneficiario="106261426" ParentezcoId="6" Porcentaje="91"/>
    <Beneficiario NumeroCuenta="11943543" ValorDocumentoIdentidadBeneficiario="165057936" ParentezcoId="7" Porcentaje="54"/>
    <Beneficiario NumeroCuenta="11810863" ValorDocumentoIdentidadBeneficiario="110839943" ParentezcoId="3" Porcentaje="9"/>
    <Beneficiario NumeroCuenta="11376583" ValorDocumentoIdentidadBeneficiario="145224763" ParentezcoId="4" Porcentaje="66"/>
    <Beneficiario NumeroCuenta="11208369" ValorDocumentoIdentidadBeneficiario="158453180" ParentezcoId="7" Porcentaje="64"/>
    <Beneficiario NumeroCuenta="11534267" ValorDocumentoIdentidadBeneficiario="163482829" ParentezcoId="1" Porcentaje="42"/>
    <Beneficiario NumeroCuenta="11108731" ValorDocumentoIdentidadBeneficiario="118343518" ParentezcoId="5" Porcentaje="27"/>
    <Beneficiario NumeroCuenta="11727944" ValorDocumentoIdentidadBeneficiario="150445262" ParentezcoId="2" Porcentaje="46"/>
    <Beneficiario NumeroCuenta="11481862" ValorDocumentoIdentidadBeneficiario="178375881" ParentezcoId="2" Porcentaje="47"/>
    <Beneficiario NumeroCuenta="11514529" ValorDocumentoIdentidadBeneficiario="108487167" ParentezcoId="7" Porcentaje="30"/>
    <Beneficiario NumeroCuenta="11662844" ValorDocumentoIdentidadBeneficiario="122111670" ParentezcoId="7" Porcentaje="50"/>
    <Beneficiario NumeroCuenta="11534267" ValorDocumentoIdentidadBeneficiario="128965552" ParentezcoId="6" Porcentaje="10"/>
    <Beneficiario NumeroCuenta="11744607" ValorDocumentoIdentidadBeneficiario="189149822" ParentezcoId="4" Porcentaje="98"/>
    <Beneficiario NumeroCuenta="11316046" ValorDocumentoIdentidadBeneficiario="100673640" ParentezcoId="2" Porcentaje="17"/>
    <Beneficiario NumeroCuenta="11493715" ValorDocumentoIdentidadBeneficiario="174808854" ParentezcoId="2" Porcentaje="93"/>
    <Beneficiario NumeroCuenta="11164352" ValorDocumentoIdentidadBeneficiario="143062990" ParentezcoId="1" Porcentaje="4"/>
    <Beneficiario NumeroCuenta="11053263" ValorDocumentoIdentidadBeneficiario="138597348" ParentezcoId="7" Porcentaje="67"/>
    <Beneficiario NumeroCuenta="11687607" ValorDocumentoIdentidadBeneficiario="165057936" ParentezcoId="2" Porcentaje="58"/>
    <Beneficiario NumeroCuenta="11743285" ValorDocumentoIdentidadBeneficiario="145019786" ParentezcoId="7" Porcentaje="74"/>
    <Beneficiario NumeroCuenta="11335073" ValorDocumentoIdentidadBeneficiario="122111670" ParentezcoId="4" Porcentaje="8"/>
    <Beneficiario NumeroCuenta="11276446" ValorDocumentoIdentidadBeneficiario="111266789" ParentezcoId="7" Porcentaje="20"/>
    <Beneficiario NumeroCuenta="11912657" ValorDocumentoIdentidadBeneficiario="182157649" ParentezcoId="5" Porcentaje="70"/>
    <Beneficiario NumeroCuenta="11024586" ValorDocumentoIdentidadBeneficiario="117359964" ParentezcoId="8" Porcentaje="36"/>
    <Beneficiario NumeroCuenta="11184977" ValorDocumentoIdentidadBeneficiario="134914730" ParentezcoId="7" Porcentaje="69"/>
    <Beneficiario NumeroCuenta="11589772" ValorDocumentoIdentidadBeneficiario="111266789" ParentezcoId="1" Porcentaje="49"/>
    <Beneficiario NumeroCuenta="11718078" ValorDocumentoIdentidadBeneficiario="147441451" ParentezcoId="7" Porcentaje="67"/>
    <Beneficiario NumeroCuenta="11327131" ValorDocumentoIdentidadBeneficiario="110852503" ParentezcoId="7" Porcentaje="26"/>
    <Beneficiario NumeroCuenta="11662844" ValorDocumentoIdentidadBeneficiario="153816920" ParentezcoId="1" Porcentaje="8"/>
    <Beneficiario NumeroCuenta="11316046" ValorDocumentoIdentidadBeneficiario="149892757" ParentezcoId="4" Porcentaje="34"/>
    <Beneficiario NumeroCuenta="11385711" ValorDocumentoIdentidadBeneficiario="165057936" ParentezcoId="2" Porcentaje="87"/>
    <Beneficiario NumeroCuenta="11245285" ValorDocumentoIdentidadBeneficiario="169618231" ParentezcoId="6" Porcentaje="49"/>
    <Beneficiario NumeroCuenta="11589496" ValorDocumentoIdentidadBeneficiario="152668209" ParentezcoId="4" Porcentaje="35"/>
    <Beneficiario NumeroCuenta="11683263" ValorDocumentoIdentidadBeneficiario="195864670" ParentezcoId="7" Porcentaje="41"/>
    <Beneficiario NumeroCuenta="11376583" ValorDocumentoIdentidadBeneficiario="110852503" ParentezcoId="7" Porcentaje="6"/>
    <Beneficiario NumeroCuenta="11572464" ValorDocumentoIdentidadBeneficiario="147441451" ParentezcoId="6" Porcentaje="85"/>
    <Beneficiario NumeroCuenta="11580263" ValorDocumentoIdentidadBeneficiario="106261426" ParentezcoId="4" Porcentaje="4"/>
  </Beneficiarios>


  <Estados_de_Cuenta>
    <Estado_de_Cuenta NumeroCuenta="11013939" fechaInicio="2020-07-04" fechaFin="2020-08-04"  saldoInicial="45670345.00" saldoFinal="8371641.00" />
    <Estado_de_Cuenta NumeroCuenta="11013939" fechaInicio="2020-08-04" fechaFin="2020-09-04"  saldoInicial="8371641.00" saldoFinal="8400771.00" />
    <Estado_de_Cuenta NumeroCuenta="11013939" fechaInicio="2020-09-04" fechaFin="2020-10-04"  saldoInicial="8400771.00" saldoFinal="343194.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-01-23" fechaFin="2018-02-23"  saldoInicial="54996631.00" saldoFinal="1470744.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-02-23" fechaFin="2018-03-23"  saldoInicial="1470744.00" saldoFinal="4210648.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-03-23" fechaFin="2018-04-23"  saldoInicial="4210648.00" saldoFinal="6885170.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-04-23" fechaFin="2018-05-23"  saldoInicial="6885170.00" saldoFinal="6699004.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-05-23" fechaFin="2018-06-23"  saldoInicial="6699004.00" saldoFinal="6949521.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-06-23" fechaFin="2018-07-23"  saldoInicial="6949521.00" saldoFinal="2523174.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-07-23" fechaFin="2018-08-23"  saldoInicial="2523174.00" saldoFinal="112706.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-08-23" fechaFin="2018-09-23"  saldoInicial="112706.00" saldoFinal="624559.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-09-23" fechaFin="2018-10-23"  saldoInicial="624559.00" saldoFinal="6050313.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-10-23" fechaFin="2018-11-23"  saldoInicial="6050313.00" saldoFinal="5080872.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-11-23" fechaFin="2018-12-23"  saldoInicial="5080872.00" saldoFinal="5666935.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2018-12-23" fechaFin="2019-01-23"  saldoInicial="5666935.00" saldoFinal="2574004.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-01-23" fechaFin="2019-02-23"  saldoInicial="2574004.00" saldoFinal="2793615.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-02-23" fechaFin="2019-03-23"  saldoInicial="2793615.00" saldoFinal="7467361.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-03-23" fechaFin="2019-04-23"  saldoInicial="7467361.00" saldoFinal="8055246.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-04-23" fechaFin="2019-05-23"  saldoInicial="8055246.00" saldoFinal="7187253.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-05-23" fechaFin="2019-06-23"  saldoInicial="7187253.00" saldoFinal="291204.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-06-23" fechaFin="2019-07-23"  saldoInicial="291204.00" saldoFinal="2344875.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-07-23" fechaFin="2019-08-23"  saldoInicial="2344875.00" saldoFinal="1024760.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-08-23" fechaFin="2019-09-23"  saldoInicial="1024760.00" saldoFinal="6168400.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-09-23" fechaFin="2019-10-23"  saldoInicial="6168400.00" saldoFinal="367171.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-10-23" fechaFin="2019-11-23"  saldoInicial="367171.00" saldoFinal="4858299.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-11-23" fechaFin="2019-12-23"  saldoInicial="4858299.00" saldoFinal="2628009.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2019-12-23" fechaFin="2020-01-23"  saldoInicial="2628009.00" saldoFinal="3896201.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2020-01-23" fechaFin="2020-02-23"  saldoInicial="3896201.00" saldoFinal="3891473.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2020-02-23" fechaFin="2020-03-23"  saldoInicial="3891473.00" saldoFinal="3528110.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2020-03-23" fechaFin="2020-04-23"  saldoInicial="3528110.00" saldoFinal="6392785.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2020-04-23" fechaFin="2020-05-23"  saldoInicial="6392785.00" saldoFinal="5594343.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2020-05-23" fechaFin="2020-06-23"  saldoInicial="5594343.00" saldoFinal="871269.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2020-06-23" fechaFin="2020-07-23"  saldoInicial="871269.00" saldoFinal="1919975.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2020-07-23" fechaFin="2020-08-23"  saldoInicial="1919975.00" saldoFinal="3458391.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2020-08-23" fechaFin="2020-09-23"  saldoInicial="3458391.00" saldoFinal="7534761.00" />
    <Estado_de_Cuenta NumeroCuenta="11592082" fechaInicio="2020-09-23" fechaFin="2020-10-23"  saldoInicial="7534761.00" saldoFinal="5296040.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2014-09-23" fechaFin="2014-10-23"  saldoInicial="15877051.00" saldoFinal="3791009.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2014-10-23" fechaFin="2014-11-23"  saldoInicial="3791009.00" saldoFinal="5001276.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2014-11-23" fechaFin="2014-12-23"  saldoInicial="5001276.00" saldoFinal="439291.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2014-12-23" fechaFin="2015-01-23"  saldoInicial="439291.00" saldoFinal="2338258.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-01-23" fechaFin="2015-02-23"  saldoInicial="2338258.00" saldoFinal="3200150.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-02-23" fechaFin="2015-03-23"  saldoInicial="3200150.00" saldoFinal="2032540.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-03-23" fechaFin="2015-04-23"  saldoInicial="2032540.00" saldoFinal="2710135.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-04-23" fechaFin="2015-05-23"  saldoInicial="2710135.00" saldoFinal="5765315.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-05-23" fechaFin="2015-06-23"  saldoInicial="5765315.00" saldoFinal="8598793.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-06-23" fechaFin="2015-07-23"  saldoInicial="8598793.00" saldoFinal="8669297.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-07-23" fechaFin="2015-08-23"  saldoInicial="8669297.00" saldoFinal="7346576.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-08-23" fechaFin="2015-09-23"  saldoInicial="7346576.00" saldoFinal="5790137.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-09-23" fechaFin="2015-10-23"  saldoInicial="5790137.00" saldoFinal="3588200.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-10-23" fechaFin="2015-11-23"  saldoInicial="3588200.00" saldoFinal="809977.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-11-23" fechaFin="2015-12-23"  saldoInicial="809977.00" saldoFinal="4889897.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2015-12-23" fechaFin="2016-01-23"  saldoInicial="4889897.00" saldoFinal="8677527.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-01-23" fechaFin="2016-02-23"  saldoInicial="8677527.00" saldoFinal="2608011.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-02-23" fechaFin="2016-03-23"  saldoInicial="2608011.00" saldoFinal="263804.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-03-23" fechaFin="2016-04-23"  saldoInicial="263804.00" saldoFinal="5333380.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-04-23" fechaFin="2016-05-23"  saldoInicial="5333380.00" saldoFinal="6579664.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-05-23" fechaFin="2016-06-23"  saldoInicial="6579664.00" saldoFinal="7013808.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-06-23" fechaFin="2016-07-23"  saldoInicial="7013808.00" saldoFinal="6900014.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-07-23" fechaFin="2016-08-23"  saldoInicial="6900014.00" saldoFinal="2068570.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-08-23" fechaFin="2016-09-23"  saldoInicial="2068570.00" saldoFinal="5963523.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-09-23" fechaFin="2016-10-23"  saldoInicial="5963523.00" saldoFinal="8164683.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-10-23" fechaFin="2016-11-23"  saldoInicial="8164683.00" saldoFinal="1400149.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-11-23" fechaFin="2016-12-23"  saldoInicial="1400149.00" saldoFinal="7341987.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2016-12-23" fechaFin="2017-01-23"  saldoInicial="7341987.00" saldoFinal="8415119.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-01-23" fechaFin="2017-02-23"  saldoInicial="8415119.00" saldoFinal="5718362.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-02-23" fechaFin="2017-03-23"  saldoInicial="5718362.00" saldoFinal="1176666.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-03-23" fechaFin="2017-04-23"  saldoInicial="1176666.00" saldoFinal="3067964.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-04-23" fechaFin="2017-05-23"  saldoInicial="3067964.00" saldoFinal="943930.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-05-23" fechaFin="2017-06-23"  saldoInicial="943930.00" saldoFinal="4414167.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-06-23" fechaFin="2017-07-23"  saldoInicial="4414167.00" saldoFinal="4405404.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-07-23" fechaFin="2017-08-23"  saldoInicial="4405404.00" saldoFinal="3255516.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-08-23" fechaFin="2017-09-23"  saldoInicial="3255516.00" saldoFinal="3601998.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-09-23" fechaFin="2017-10-23"  saldoInicial="3601998.00" saldoFinal="1510320.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-10-23" fechaFin="2017-11-23"  saldoInicial="1510320.00" saldoFinal="6003370.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-11-23" fechaFin="2017-12-23"  saldoInicial="6003370.00" saldoFinal="2210511.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2017-12-23" fechaFin="2018-01-23"  saldoInicial="2210511.00" saldoFinal="6693952.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-01-23" fechaFin="2018-02-23"  saldoInicial="6693952.00" saldoFinal="7889254.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-02-23" fechaFin="2018-03-23"  saldoInicial="7889254.00" saldoFinal="1805128.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-03-23" fechaFin="2018-04-23"  saldoInicial="1805128.00" saldoFinal="1372893.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-04-23" fechaFin="2018-05-23"  saldoInicial="1372893.00" saldoFinal="1699212.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-05-23" fechaFin="2018-06-23"  saldoInicial="1699212.00" saldoFinal="6913664.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-06-23" fechaFin="2018-07-23"  saldoInicial="6913664.00" saldoFinal="5500937.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-07-23" fechaFin="2018-08-23"  saldoInicial="5500937.00" saldoFinal="4896460.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-08-23" fechaFin="2018-09-23"  saldoInicial="4896460.00" saldoFinal="1573119.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-09-23" fechaFin="2018-10-23"  saldoInicial="1573119.00" saldoFinal="2340699.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-10-23" fechaFin="2018-11-23"  saldoInicial="2340699.00" saldoFinal="8618567.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-11-23" fechaFin="2018-12-23"  saldoInicial="8618567.00" saldoFinal="5199022.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2018-12-23" fechaFin="2019-01-23"  saldoInicial="5199022.00" saldoFinal="2267059.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-01-23" fechaFin="2019-02-23"  saldoInicial="2267059.00" saldoFinal="328910.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-02-23" fechaFin="2019-03-23"  saldoInicial="328910.00" saldoFinal="7524596.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-03-23" fechaFin="2019-04-23"  saldoInicial="7524596.00" saldoFinal="1343907.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-04-23" fechaFin="2019-05-23"  saldoInicial="1343907.00" saldoFinal="1365440.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-05-23" fechaFin="2019-06-23"  saldoInicial="1365440.00" saldoFinal="2741403.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-06-23" fechaFin="2019-07-23"  saldoInicial="2741403.00" saldoFinal="8770883.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-07-23" fechaFin="2019-08-23"  saldoInicial="8770883.00" saldoFinal="7525600.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-08-23" fechaFin="2019-09-23"  saldoInicial="7525600.00" saldoFinal="2992816.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-09-23" fechaFin="2019-10-23"  saldoInicial="2992816.00" saldoFinal="689083.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-10-23" fechaFin="2019-11-23"  saldoInicial="689083.00" saldoFinal="7841122.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-11-23" fechaFin="2019-12-23"  saldoInicial="7841122.00" saldoFinal="1482907.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2019-12-23" fechaFin="2020-01-23"  saldoInicial="1482907.00" saldoFinal="8774832.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2020-01-23" fechaFin="2020-02-23"  saldoInicial="8774832.00" saldoFinal="8319027.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2020-02-23" fechaFin="2020-03-23"  saldoInicial="8319027.00" saldoFinal="8689537.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2020-03-23" fechaFin="2020-04-23"  saldoInicial="8689537.00" saldoFinal="2932775.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2020-04-23" fechaFin="2020-05-23"  saldoInicial="2932775.00" saldoFinal="7757557.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2020-05-23" fechaFin="2020-06-23"  saldoInicial="7757557.00" saldoFinal="5933652.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2020-06-23" fechaFin="2020-07-23"  saldoInicial="5933652.00" saldoFinal="92869.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2020-07-23" fechaFin="2020-08-23"  saldoInicial="92869.00" saldoFinal="8956563.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2020-08-23" fechaFin="2020-09-23"  saldoInicial="8956563.00" saldoFinal="565343.00" />
    <Estado_de_Cuenta NumeroCuenta="11687607" fechaInicio="2020-09-23" fechaFin="2020-10-23"  saldoInicial="565343.00" saldoFinal="6586669.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2013-05-16" fechaFin="2013-06-16"  saldoInicial="55323336.00" saldoFinal="6984791.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2013-06-16" fechaFin="2013-07-16"  saldoInicial="6984791.00" saldoFinal="2190867.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2013-07-16" fechaFin="2013-08-16"  saldoInicial="2190867.00" saldoFinal="5209379.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2013-08-16" fechaFin="2013-09-16"  saldoInicial="5209379.00" saldoFinal="6562027.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2013-09-16" fechaFin="2013-10-16"  saldoInicial="6562027.00" saldoFinal="3604823.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2013-10-16" fechaFin="2013-11-16"  saldoInicial="3604823.00" saldoFinal="6190708.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2013-11-16" fechaFin="2013-12-16"  saldoInicial="6190708.00" saldoFinal="2815598.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2013-12-16" fechaFin="2014-01-16"  saldoInicial="2815598.00" saldoFinal="6885451.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-01-16" fechaFin="2014-02-16"  saldoInicial="6885451.00" saldoFinal="8858209.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-02-16" fechaFin="2014-03-16"  saldoInicial="8858209.00" saldoFinal="8973410.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-03-16" fechaFin="2014-04-16"  saldoInicial="8973410.00" saldoFinal="5112513.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-04-16" fechaFin="2014-05-16"  saldoInicial="5112513.00" saldoFinal="2724389.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-05-16" fechaFin="2014-06-16"  saldoInicial="2724389.00" saldoFinal="1101568.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-06-16" fechaFin="2014-07-16"  saldoInicial="1101568.00" saldoFinal="6650541.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-07-16" fechaFin="2014-08-16"  saldoInicial="6650541.00" saldoFinal="6982211.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-08-16" fechaFin="2014-09-16"  saldoInicial="6982211.00" saldoFinal="1274261.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-09-16" fechaFin="2014-10-16"  saldoInicial="1274261.00" saldoFinal="2990106.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-10-16" fechaFin="2014-11-16"  saldoInicial="2990106.00" saldoFinal="3641019.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-11-16" fechaFin="2014-12-16"  saldoInicial="3641019.00" saldoFinal="8259203.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2014-12-16" fechaFin="2015-01-16"  saldoInicial="8259203.00" saldoFinal="6397392.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-01-16" fechaFin="2015-02-16"  saldoInicial="6397392.00" saldoFinal="249661.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-02-16" fechaFin="2015-03-16"  saldoInicial="249661.00" saldoFinal="3129497.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-03-16" fechaFin="2015-04-16"  saldoInicial="3129497.00" saldoFinal="4914739.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-04-16" fechaFin="2015-05-16"  saldoInicial="4914739.00" saldoFinal="2258739.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-05-16" fechaFin="2015-06-16"  saldoInicial="2258739.00" saldoFinal="4171026.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-06-16" fechaFin="2015-07-16"  saldoInicial="4171026.00" saldoFinal="8392639.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-07-16" fechaFin="2015-08-16"  saldoInicial="8392639.00" saldoFinal="7343863.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-08-16" fechaFin="2015-09-16"  saldoInicial="7343863.00" saldoFinal="3334918.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-09-16" fechaFin="2015-10-16"  saldoInicial="3334918.00" saldoFinal="381659.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-10-16" fechaFin="2015-11-16"  saldoInicial="381659.00" saldoFinal="3046251.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-11-16" fechaFin="2015-12-16"  saldoInicial="3046251.00" saldoFinal="6822890.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2015-12-16" fechaFin="2016-01-16"  saldoInicial="6822890.00" saldoFinal="5278979.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-01-16" fechaFin="2016-02-16"  saldoInicial="5278979.00" saldoFinal="228246.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-02-16" fechaFin="2016-03-16"  saldoInicial="228246.00" saldoFinal="8010229.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-03-16" fechaFin="2016-04-16"  saldoInicial="8010229.00" saldoFinal="1618051.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-04-16" fechaFin="2016-05-16"  saldoInicial="1618051.00" saldoFinal="4057808.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-05-16" fechaFin="2016-06-16"  saldoInicial="4057808.00" saldoFinal="817124.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-06-16" fechaFin="2016-07-16"  saldoInicial="817124.00" saldoFinal="5436888.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-07-16" fechaFin="2016-08-16"  saldoInicial="5436888.00" saldoFinal="5633050.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-08-16" fechaFin="2016-09-16"  saldoInicial="5633050.00" saldoFinal="2251529.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-09-16" fechaFin="2016-10-16"  saldoInicial="2251529.00" saldoFinal="5558839.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-10-16" fechaFin="2016-11-16"  saldoInicial="5558839.00" saldoFinal="2830180.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-11-16" fechaFin="2016-12-16"  saldoInicial="2830180.00" saldoFinal="7877272.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2016-12-16" fechaFin="2017-01-16"  saldoInicial="7877272.00" saldoFinal="7764407.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-01-16" fechaFin="2017-02-16"  saldoInicial="7764407.00" saldoFinal="6385558.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-02-16" fechaFin="2017-03-16"  saldoInicial="6385558.00" saldoFinal="7164592.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-03-16" fechaFin="2017-04-16"  saldoInicial="7164592.00" saldoFinal="2531787.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-04-16" fechaFin="2017-05-16"  saldoInicial="2531787.00" saldoFinal="4639656.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-05-16" fechaFin="2017-06-16"  saldoInicial="4639656.00" saldoFinal="5505100.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-06-16" fechaFin="2017-07-16"  saldoInicial="5505100.00" saldoFinal="5506562.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-07-16" fechaFin="2017-08-16"  saldoInicial="5506562.00" saldoFinal="4007742.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-08-16" fechaFin="2017-09-16"  saldoInicial="4007742.00" saldoFinal="5622319.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-09-16" fechaFin="2017-10-16"  saldoInicial="5622319.00" saldoFinal="4726975.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-10-16" fechaFin="2017-11-16"  saldoInicial="4726975.00" saldoFinal="8622601.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-11-16" fechaFin="2017-12-16"  saldoInicial="8622601.00" saldoFinal="4618993.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2017-12-16" fechaFin="2018-01-16"  saldoInicial="4618993.00" saldoFinal="2020911.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-01-16" fechaFin="2018-02-16"  saldoInicial="2020911.00" saldoFinal="8221764.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-02-16" fechaFin="2018-03-16"  saldoInicial="8221764.00" saldoFinal="5825058.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-03-16" fechaFin="2018-04-16"  saldoInicial="5825058.00" saldoFinal="3848306.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-04-16" fechaFin="2018-05-16"  saldoInicial="3848306.00" saldoFinal="979952.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-05-16" fechaFin="2018-06-16"  saldoInicial="979952.00" saldoFinal="1385086.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-06-16" fechaFin="2018-07-16"  saldoInicial="1385086.00" saldoFinal="4957050.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-07-16" fechaFin="2018-08-16"  saldoInicial="4957050.00" saldoFinal="476831.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-08-16" fechaFin="2018-09-16"  saldoInicial="476831.00" saldoFinal="74503.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-09-16" fechaFin="2018-10-16"  saldoInicial="74503.00" saldoFinal="5142008.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-10-16" fechaFin="2018-11-16"  saldoInicial="5142008.00" saldoFinal="4775442.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-11-16" fechaFin="2018-12-16"  saldoInicial="4775442.00" saldoFinal="2422743.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2018-12-16" fechaFin="2019-01-16"  saldoInicial="2422743.00" saldoFinal="45098.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-01-16" fechaFin="2019-02-16"  saldoInicial="45098.00" saldoFinal="6322120.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-02-16" fechaFin="2019-03-16"  saldoInicial="6322120.00" saldoFinal="8782286.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-03-16" fechaFin="2019-04-16"  saldoInicial="8782286.00" saldoFinal="8507304.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-04-16" fechaFin="2019-05-16"  saldoInicial="8507304.00" saldoFinal="4272905.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-05-16" fechaFin="2019-06-16"  saldoInicial="4272905.00" saldoFinal="6272709.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-06-16" fechaFin="2019-07-16"  saldoInicial="6272709.00" saldoFinal="2475273.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-07-16" fechaFin="2019-08-16"  saldoInicial="2475273.00" saldoFinal="1365979.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-08-16" fechaFin="2019-09-16"  saldoInicial="1365979.00" saldoFinal="6206725.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-09-16" fechaFin="2019-10-16"  saldoInicial="6206725.00" saldoFinal="4623416.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-10-16" fechaFin="2019-11-16"  saldoInicial="4623416.00" saldoFinal="2630582.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-11-16" fechaFin="2019-12-16"  saldoInicial="2630582.00" saldoFinal="1900919.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2019-12-16" fechaFin="2020-01-16"  saldoInicial="1900919.00" saldoFinal="7101795.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2020-01-16" fechaFin="2020-02-16"  saldoInicial="7101795.00" saldoFinal="7138211.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2020-02-16" fechaFin="2020-03-16"  saldoInicial="7138211.00" saldoFinal="7441176.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2020-03-16" fechaFin="2020-04-16"  saldoInicial="7441176.00" saldoFinal="5596221.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2020-04-16" fechaFin="2020-05-16"  saldoInicial="5596221.00" saldoFinal="2036918.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2020-05-16" fechaFin="2020-06-16"  saldoInicial="2036918.00" saldoFinal="1681690.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2020-06-16" fechaFin="2020-07-16"  saldoInicial="1681690.00" saldoFinal="1765192.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2020-07-16" fechaFin="2020-08-16"  saldoInicial="1765192.00" saldoFinal="8199950.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2020-08-16" fechaFin="2020-09-16"  saldoInicial="8199950.00" saldoFinal="3951021.00" />
    <Estado_de_Cuenta NumeroCuenta="11469827" fechaInicio="2020-09-16" fechaFin="2020-10-16"  saldoInicial="3951021.00" saldoFinal="5591747.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2018-12-09" fechaFin="2019-01-09"  saldoInicial="11593590.00" saldoFinal="5222072.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-01-09" fechaFin="2019-02-09"  saldoInicial="5222072.00" saldoFinal="4319733.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-02-09" fechaFin="2019-03-09"  saldoInicial="4319733.00" saldoFinal="1287667.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-03-09" fechaFin="2019-04-09"  saldoInicial="1287667.00" saldoFinal="6183698.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-04-09" fechaFin="2019-05-09"  saldoInicial="6183698.00" saldoFinal="7306439.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-05-09" fechaFin="2019-06-09"  saldoInicial="7306439.00" saldoFinal="111765.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-06-09" fechaFin="2019-07-09"  saldoInicial="111765.00" saldoFinal="7251813.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-07-09" fechaFin="2019-08-09"  saldoInicial="7251813.00" saldoFinal="5818468.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-08-09" fechaFin="2019-09-09"  saldoInicial="5818468.00" saldoFinal="8361240.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-09-09" fechaFin="2019-10-09"  saldoInicial="8361240.00" saldoFinal="4618633.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-10-09" fechaFin="2019-11-09"  saldoInicial="4618633.00" saldoFinal="737090.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-11-09" fechaFin="2019-12-09"  saldoInicial="737090.00" saldoFinal="4562694.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2019-12-09" fechaFin="2020-01-09"  saldoInicial="4562694.00" saldoFinal="5251484.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2020-01-09" fechaFin="2020-02-09"  saldoInicial="5251484.00" saldoFinal="1042474.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2020-02-09" fechaFin="2020-03-09"  saldoInicial="1042474.00" saldoFinal="5346358.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2020-03-09" fechaFin="2020-04-09"  saldoInicial="5346358.00" saldoFinal="5658040.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2020-04-09" fechaFin="2020-05-09"  saldoInicial="5658040.00" saldoFinal="3370631.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2020-05-09" fechaFin="2020-06-09"  saldoInicial="3370631.00" saldoFinal="2487422.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2020-06-09" fechaFin="2020-07-09"  saldoInicial="2487422.00" saldoFinal="7821478.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2020-07-09" fechaFin="2020-08-09"  saldoInicial="7821478.00" saldoFinal="550658.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2020-08-09" fechaFin="2020-09-09"  saldoInicial="550658.00" saldoFinal="1748964.00" />
    <Estado_de_Cuenta NumeroCuenta="11108731" fechaInicio="2020-09-09" fechaFin="2020-10-09"  saldoInicial="1748964.00" saldoFinal="6865312.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2010-02-02" fechaFin="2010-03-02"  saldoInicial="44960377.00" saldoFinal="1929745.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2010-03-02" fechaFin="2010-04-02"  saldoInicial="1929745.00" saldoFinal="808456.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2010-04-02" fechaFin="2010-05-02"  saldoInicial="808456.00" saldoFinal="2660247.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2010-05-02" fechaFin="2010-06-02"  saldoInicial="2660247.00" saldoFinal="1764251.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2010-06-02" fechaFin="2010-07-02"  saldoInicial="1764251.00" saldoFinal="6219671.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2010-07-02" fechaFin="2010-08-02"  saldoInicial="6219671.00" saldoFinal="1466080.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2010-08-02" fechaFin="2010-09-02"  saldoInicial="1466080.00" saldoFinal="802162.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2010-09-02" fechaFin="2010-10-02"  saldoInicial="802162.00" saldoFinal="5970938.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2010-10-02" fechaFin="2010-11-02"  saldoInicial="5970938.00" saldoFinal="2064146.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2010-11-02" fechaFin="2010-12-02"  saldoInicial="2064146.00" saldoFinal="7829126.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2010-12-02" fechaFin="2011-01-02"  saldoInicial="7829126.00" saldoFinal="2489144.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-01-02" fechaFin="2011-02-02"  saldoInicial="2489144.00" saldoFinal="4278277.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-02-02" fechaFin="2011-03-02"  saldoInicial="4278277.00" saldoFinal="6572335.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-03-02" fechaFin="2011-04-02"  saldoInicial="6572335.00" saldoFinal="6027809.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-04-02" fechaFin="2011-05-02"  saldoInicial="6027809.00" saldoFinal="2094420.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-05-02" fechaFin="2011-06-02"  saldoInicial="2094420.00" saldoFinal="871192.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-06-02" fechaFin="2011-07-02"  saldoInicial="871192.00" saldoFinal="6791619.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-07-02" fechaFin="2011-08-02"  saldoInicial="6791619.00" saldoFinal="978739.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-08-02" fechaFin="2011-09-02"  saldoInicial="978739.00" saldoFinal="8622072.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-09-02" fechaFin="2011-10-02"  saldoInicial="8622072.00" saldoFinal="3564770.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-10-02" fechaFin="2011-11-02"  saldoInicial="3564770.00" saldoFinal="8008654.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-11-02" fechaFin="2011-12-02"  saldoInicial="8008654.00" saldoFinal="6069874.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2011-12-02" fechaFin="2012-01-02"  saldoInicial="6069874.00" saldoFinal="2972967.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-01-02" fechaFin="2012-02-02"  saldoInicial="2972967.00" saldoFinal="8804940.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-02-02" fechaFin="2012-03-02"  saldoInicial="8804940.00" saldoFinal="4311758.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-03-02" fechaFin="2012-04-02"  saldoInicial="4311758.00" saldoFinal="8525217.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-04-02" fechaFin="2012-05-02"  saldoInicial="8525217.00" saldoFinal="1949684.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-05-02" fechaFin="2012-06-02"  saldoInicial="1949684.00" saldoFinal="7295747.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-06-02" fechaFin="2012-07-02"  saldoInicial="7295747.00" saldoFinal="4710945.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-07-02" fechaFin="2012-08-02"  saldoInicial="4710945.00" saldoFinal="1476917.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-08-02" fechaFin="2012-09-02"  saldoInicial="1476917.00" saldoFinal="7811795.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-09-02" fechaFin="2012-10-02"  saldoInicial="7811795.00" saldoFinal="793499.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-10-02" fechaFin="2012-11-02"  saldoInicial="793499.00" saldoFinal="3424490.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-11-02" fechaFin="2012-12-02"  saldoInicial="3424490.00" saldoFinal="4697755.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2012-12-02" fechaFin="2013-01-02"  saldoInicial="4697755.00" saldoFinal="4158922.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-01-02" fechaFin="2013-02-02"  saldoInicial="4158922.00" saldoFinal="3418813.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-02-02" fechaFin="2013-03-02"  saldoInicial="3418813.00" saldoFinal="4826590.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-03-02" fechaFin="2013-04-02"  saldoInicial="4826590.00" saldoFinal="4072590.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-04-02" fechaFin="2013-05-02"  saldoInicial="4072590.00" saldoFinal="3543446.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-05-02" fechaFin="2013-06-02"  saldoInicial="3543446.00" saldoFinal="4536032.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-06-02" fechaFin="2013-07-02"  saldoInicial="4536032.00" saldoFinal="4628187.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-07-02" fechaFin="2013-08-02"  saldoInicial="4628187.00" saldoFinal="7265698.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-08-02" fechaFin="2013-09-02"  saldoInicial="7265698.00" saldoFinal="680407.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-09-02" fechaFin="2013-10-02"  saldoInicial="680407.00" saldoFinal="7781213.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-10-02" fechaFin="2013-11-02"  saldoInicial="7781213.00" saldoFinal="3703687.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-11-02" fechaFin="2013-12-02"  saldoInicial="3703687.00" saldoFinal="258344.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2013-12-02" fechaFin="2014-01-02"  saldoInicial="258344.00" saldoFinal="7817299.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-01-02" fechaFin="2014-02-02"  saldoInicial="7817299.00" saldoFinal="6607329.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-02-02" fechaFin="2014-03-02"  saldoInicial="6607329.00" saldoFinal="2070258.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-03-02" fechaFin="2014-04-02"  saldoInicial="2070258.00" saldoFinal="3686527.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-04-02" fechaFin="2014-05-02"  saldoInicial="3686527.00" saldoFinal="8351390.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-05-02" fechaFin="2014-06-02"  saldoInicial="8351390.00" saldoFinal="2757244.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-06-02" fechaFin="2014-07-02"  saldoInicial="2757244.00" saldoFinal="2653771.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-07-02" fechaFin="2014-08-02"  saldoInicial="2653771.00" saldoFinal="6188790.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-08-02" fechaFin="2014-09-02"  saldoInicial="6188790.00" saldoFinal="6648362.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-09-02" fechaFin="2014-10-02"  saldoInicial="6648362.00" saldoFinal="5638173.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-10-02" fechaFin="2014-11-02"  saldoInicial="5638173.00" saldoFinal="1603027.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-11-02" fechaFin="2014-12-02"  saldoInicial="1603027.00" saldoFinal="2856678.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2014-12-02" fechaFin="2015-01-02"  saldoInicial="2856678.00" saldoFinal="3138023.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-01-02" fechaFin="2015-02-02"  saldoInicial="3138023.00" saldoFinal="4440042.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-02-02" fechaFin="2015-03-02"  saldoInicial="4440042.00" saldoFinal="2943843.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-03-02" fechaFin="2015-04-02"  saldoInicial="2943843.00" saldoFinal="5299177.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-04-02" fechaFin="2015-05-02"  saldoInicial="5299177.00" saldoFinal="8265241.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-05-02" fechaFin="2015-06-02"  saldoInicial="8265241.00" saldoFinal="8217710.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-06-02" fechaFin="2015-07-02"  saldoInicial="8217710.00" saldoFinal="8646855.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-07-02" fechaFin="2015-08-02"  saldoInicial="8646855.00" saldoFinal="7063525.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-08-02" fechaFin="2015-09-02"  saldoInicial="7063525.00" saldoFinal="7170281.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-09-02" fechaFin="2015-10-02"  saldoInicial="7170281.00" saldoFinal="8365374.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-10-02" fechaFin="2015-11-02"  saldoInicial="8365374.00" saldoFinal="7881281.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-11-02" fechaFin="2015-12-02"  saldoInicial="7881281.00" saldoFinal="8436067.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2015-12-02" fechaFin="2016-01-02"  saldoInicial="8436067.00" saldoFinal="7945636.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-01-02" fechaFin="2016-02-02"  saldoInicial="7945636.00" saldoFinal="7530770.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-02-02" fechaFin="2016-03-02"  saldoInicial="7530770.00" saldoFinal="3119102.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-03-02" fechaFin="2016-04-02"  saldoInicial="3119102.00" saldoFinal="716484.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-04-02" fechaFin="2016-05-02"  saldoInicial="716484.00" saldoFinal="1925708.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-05-02" fechaFin="2016-06-02"  saldoInicial="1925708.00" saldoFinal="8308858.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-06-02" fechaFin="2016-07-02"  saldoInicial="8308858.00" saldoFinal="3914068.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-07-02" fechaFin="2016-08-02"  saldoInicial="3914068.00" saldoFinal="2389053.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-08-02" fechaFin="2016-09-02"  saldoInicial="2389053.00" saldoFinal="442121.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-09-02" fechaFin="2016-10-02"  saldoInicial="442121.00" saldoFinal="2879517.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-10-02" fechaFin="2016-11-02"  saldoInicial="2879517.00" saldoFinal="4339766.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-11-02" fechaFin="2016-12-02"  saldoInicial="4339766.00" saldoFinal="166995.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2016-12-02" fechaFin="2017-01-02"  saldoInicial="166995.00" saldoFinal="640589.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-01-02" fechaFin="2017-02-02"  saldoInicial="640589.00" saldoFinal="7888275.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-02-02" fechaFin="2017-03-02"  saldoInicial="7888275.00" saldoFinal="378691.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-03-02" fechaFin="2017-04-02"  saldoInicial="378691.00" saldoFinal="6131415.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-04-02" fechaFin="2017-05-02"  saldoInicial="6131415.00" saldoFinal="6934910.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-05-02" fechaFin="2017-06-02"  saldoInicial="6934910.00" saldoFinal="2362472.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-06-02" fechaFin="2017-07-02"  saldoInicial="2362472.00" saldoFinal="5207465.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-07-02" fechaFin="2017-08-02"  saldoInicial="5207465.00" saldoFinal="5994387.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-08-02" fechaFin="2017-09-02"  saldoInicial="5994387.00" saldoFinal="6434422.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-09-02" fechaFin="2017-10-02"  saldoInicial="6434422.00" saldoFinal="3097574.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-10-02" fechaFin="2017-11-02"  saldoInicial="3097574.00" saldoFinal="4624266.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-11-02" fechaFin="2017-12-02"  saldoInicial="4624266.00" saldoFinal="8193748.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2017-12-02" fechaFin="2018-01-02"  saldoInicial="8193748.00" saldoFinal="8971023.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-01-02" fechaFin="2018-02-02"  saldoInicial="8971023.00" saldoFinal="1982195.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-02-02" fechaFin="2018-03-02"  saldoInicial="1982195.00" saldoFinal="8400330.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-03-02" fechaFin="2018-04-02"  saldoInicial="8400330.00" saldoFinal="1305301.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-04-02" fechaFin="2018-05-02"  saldoInicial="1305301.00" saldoFinal="5704551.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-05-02" fechaFin="2018-06-02"  saldoInicial="5704551.00" saldoFinal="2328156.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-06-02" fechaFin="2018-07-02"  saldoInicial="2328156.00" saldoFinal="2318654.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-07-02" fechaFin="2018-08-02"  saldoInicial="2318654.00" saldoFinal="4708786.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-08-02" fechaFin="2018-09-02"  saldoInicial="4708786.00" saldoFinal="3103008.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-09-02" fechaFin="2018-10-02"  saldoInicial="3103008.00" saldoFinal="7917448.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-10-02" fechaFin="2018-11-02"  saldoInicial="7917448.00" saldoFinal="4341873.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-11-02" fechaFin="2018-12-02"  saldoInicial="4341873.00" saldoFinal="5048047.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2018-12-02" fechaFin="2019-01-02"  saldoInicial="5048047.00" saldoFinal="5797517.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-01-02" fechaFin="2019-02-02"  saldoInicial="5797517.00" saldoFinal="6584613.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-02-02" fechaFin="2019-03-02"  saldoInicial="6584613.00" saldoFinal="3227552.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-03-02" fechaFin="2019-04-02"  saldoInicial="3227552.00" saldoFinal="5878042.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-04-02" fechaFin="2019-05-02"  saldoInicial="5878042.00" saldoFinal="4360987.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-05-02" fechaFin="2019-06-02"  saldoInicial="4360987.00" saldoFinal="4859025.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-06-02" fechaFin="2019-07-02"  saldoInicial="4859025.00" saldoFinal="1050260.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-07-02" fechaFin="2019-08-02"  saldoInicial="1050260.00" saldoFinal="6162450.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-08-02" fechaFin="2019-09-02"  saldoInicial="6162450.00" saldoFinal="5087089.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-09-02" fechaFin="2019-10-02"  saldoInicial="5087089.00" saldoFinal="8458374.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-10-02" fechaFin="2019-11-02"  saldoInicial="8458374.00" saldoFinal="7333139.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-11-02" fechaFin="2019-12-02"  saldoInicial="7333139.00" saldoFinal="7151901.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2019-12-02" fechaFin="2020-01-02"  saldoInicial="7151901.00" saldoFinal="1518717.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2020-01-02" fechaFin="2020-02-02"  saldoInicial="1518717.00" saldoFinal="7747131.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2020-02-02" fechaFin="2020-03-02"  saldoInicial="7747131.00" saldoFinal="7305572.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2020-03-02" fechaFin="2020-04-02"  saldoInicial="7305572.00" saldoFinal="6291453.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2020-04-02" fechaFin="2020-05-02"  saldoInicial="6291453.00" saldoFinal="1671184.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2020-05-02" fechaFin="2020-06-02"  saldoInicial="1671184.00" saldoFinal="144430.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2020-06-02" fechaFin="2020-07-02"  saldoInicial="144430.00" saldoFinal="4075862.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2020-07-02" fechaFin="2020-08-02"  saldoInicial="4075862.00" saldoFinal="2668620.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2020-08-02" fechaFin="2020-09-02"  saldoInicial="2668620.00" saldoFinal="7963533.00" />
    <Estado_de_Cuenta NumeroCuenta="11327131" fechaInicio="2020-09-02" fechaFin="2020-10-02"  saldoInicial="7963533.00" saldoFinal="4571633.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2010-04-16" fechaFin="2010-05-16"  saldoInicial="42254864.00" saldoFinal="5083716.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2010-05-16" fechaFin="2010-06-16"  saldoInicial="5083716.00" saldoFinal="5830102.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2010-06-16" fechaFin="2010-07-16"  saldoInicial="5830102.00" saldoFinal="4914533.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2010-07-16" fechaFin="2010-08-16"  saldoInicial="4914533.00" saldoFinal="4203583.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2010-08-16" fechaFin="2010-09-16"  saldoInicial="4203583.00" saldoFinal="1429063.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2010-09-16" fechaFin="2010-10-16"  saldoInicial="1429063.00" saldoFinal="1934468.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2010-10-16" fechaFin="2010-11-16"  saldoInicial="1934468.00" saldoFinal="2348143.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2010-11-16" fechaFin="2010-12-16"  saldoInicial="2348143.00" saldoFinal="1188764.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2010-12-16" fechaFin="2011-01-16"  saldoInicial="1188764.00" saldoFinal="7857224.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-01-16" fechaFin="2011-02-16"  saldoInicial="7857224.00" saldoFinal="3888523.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-02-16" fechaFin="2011-03-16"  saldoInicial="3888523.00" saldoFinal="8188859.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-03-16" fechaFin="2011-04-16"  saldoInicial="8188859.00" saldoFinal="6126567.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-04-16" fechaFin="2011-05-16"  saldoInicial="6126567.00" saldoFinal="7520700.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-05-16" fechaFin="2011-06-16"  saldoInicial="7520700.00" saldoFinal="361236.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-06-16" fechaFin="2011-07-16"  saldoInicial="361236.00" saldoFinal="8410698.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-07-16" fechaFin="2011-08-16"  saldoInicial="8410698.00" saldoFinal="3177836.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-08-16" fechaFin="2011-09-16"  saldoInicial="3177836.00" saldoFinal="1715238.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-09-16" fechaFin="2011-10-16"  saldoInicial="1715238.00" saldoFinal="6538279.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-10-16" fechaFin="2011-11-16"  saldoInicial="6538279.00" saldoFinal="2270943.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-11-16" fechaFin="2011-12-16"  saldoInicial="2270943.00" saldoFinal="3939905.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2011-12-16" fechaFin="2012-01-16"  saldoInicial="3939905.00" saldoFinal="7488183.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-01-16" fechaFin="2012-02-16"  saldoInicial="7488183.00" saldoFinal="376431.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-02-16" fechaFin="2012-03-16"  saldoInicial="376431.00" saldoFinal="3502353.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-03-16" fechaFin="2012-04-16"  saldoInicial="3502353.00" saldoFinal="5946308.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-04-16" fechaFin="2012-05-16"  saldoInicial="5946308.00" saldoFinal="883759.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-05-16" fechaFin="2012-06-16"  saldoInicial="883759.00" saldoFinal="6678950.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-06-16" fechaFin="2012-07-16"  saldoInicial="6678950.00" saldoFinal="8054903.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-07-16" fechaFin="2012-08-16"  saldoInicial="8054903.00" saldoFinal="4219749.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-08-16" fechaFin="2012-09-16"  saldoInicial="4219749.00" saldoFinal="1681589.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-09-16" fechaFin="2012-10-16"  saldoInicial="1681589.00" saldoFinal="2944865.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-10-16" fechaFin="2012-11-16"  saldoInicial="2944865.00" saldoFinal="2385893.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-11-16" fechaFin="2012-12-16"  saldoInicial="2385893.00" saldoFinal="198350.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2012-12-16" fechaFin="2013-01-16"  saldoInicial="198350.00" saldoFinal="8283322.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-01-16" fechaFin="2013-02-16"  saldoInicial="8283322.00" saldoFinal="3437287.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-02-16" fechaFin="2013-03-16"  saldoInicial="3437287.00" saldoFinal="6053609.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-03-16" fechaFin="2013-04-16"  saldoInicial="6053609.00" saldoFinal="426845.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-04-16" fechaFin="2013-05-16"  saldoInicial="426845.00" saldoFinal="6673715.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-05-16" fechaFin="2013-06-16"  saldoInicial="6673715.00" saldoFinal="4038337.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-06-16" fechaFin="2013-07-16"  saldoInicial="4038337.00" saldoFinal="5029337.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-07-16" fechaFin="2013-08-16"  saldoInicial="5029337.00" saldoFinal="1858021.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-08-16" fechaFin="2013-09-16"  saldoInicial="1858021.00" saldoFinal="5799897.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-09-16" fechaFin="2013-10-16"  saldoInicial="5799897.00" saldoFinal="8772888.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-10-16" fechaFin="2013-11-16"  saldoInicial="8772888.00" saldoFinal="4672824.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-11-16" fechaFin="2013-12-16"  saldoInicial="4672824.00" saldoFinal="1064763.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2013-12-16" fechaFin="2014-01-16"  saldoInicial="1064763.00" saldoFinal="1182917.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-01-16" fechaFin="2014-02-16"  saldoInicial="1182917.00" saldoFinal="4604161.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-02-16" fechaFin="2014-03-16"  saldoInicial="4604161.00" saldoFinal="4356511.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-03-16" fechaFin="2014-04-16"  saldoInicial="4356511.00" saldoFinal="7847565.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-04-16" fechaFin="2014-05-16"  saldoInicial="7847565.00" saldoFinal="5434171.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-05-16" fechaFin="2014-06-16"  saldoInicial="5434171.00" saldoFinal="4255010.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-06-16" fechaFin="2014-07-16"  saldoInicial="4255010.00" saldoFinal="5640058.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-07-16" fechaFin="2014-08-16"  saldoInicial="5640058.00" saldoFinal="5736094.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-08-16" fechaFin="2014-09-16"  saldoInicial="5736094.00" saldoFinal="4248051.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-09-16" fechaFin="2014-10-16"  saldoInicial="4248051.00" saldoFinal="5003672.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-10-16" fechaFin="2014-11-16"  saldoInicial="5003672.00" saldoFinal="2224105.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-11-16" fechaFin="2014-12-16"  saldoInicial="2224105.00" saldoFinal="3170668.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2014-12-16" fechaFin="2015-01-16"  saldoInicial="3170668.00" saldoFinal="7835652.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-01-16" fechaFin="2015-02-16"  saldoInicial="7835652.00" saldoFinal="5844190.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-02-16" fechaFin="2015-03-16"  saldoInicial="5844190.00" saldoFinal="2627294.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-03-16" fechaFin="2015-04-16"  saldoInicial="2627294.00" saldoFinal="4455164.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-04-16" fechaFin="2015-05-16"  saldoInicial="4455164.00" saldoFinal="7571883.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-05-16" fechaFin="2015-06-16"  saldoInicial="7571883.00" saldoFinal="7354645.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-06-16" fechaFin="2015-07-16"  saldoInicial="7354645.00" saldoFinal="2837920.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-07-16" fechaFin="2015-08-16"  saldoInicial="2837920.00" saldoFinal="518644.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-08-16" fechaFin="2015-09-16"  saldoInicial="518644.00" saldoFinal="5795904.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-09-16" fechaFin="2015-10-16"  saldoInicial="5795904.00" saldoFinal="7166105.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-10-16" fechaFin="2015-11-16"  saldoInicial="7166105.00" saldoFinal="4180.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-11-16" fechaFin="2015-12-16"  saldoInicial="4180.00" saldoFinal="7874713.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2015-12-16" fechaFin="2016-01-16"  saldoInicial="7874713.00" saldoFinal="6023873.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-01-16" fechaFin="2016-02-16"  saldoInicial="6023873.00" saldoFinal="4567607.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-02-16" fechaFin="2016-03-16"  saldoInicial="4567607.00" saldoFinal="5710038.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-03-16" fechaFin="2016-04-16"  saldoInicial="5710038.00" saldoFinal="4894845.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-04-16" fechaFin="2016-05-16"  saldoInicial="4894845.00" saldoFinal="4278587.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-05-16" fechaFin="2016-06-16"  saldoInicial="4278587.00" saldoFinal="476451.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-06-16" fechaFin="2016-07-16"  saldoInicial="476451.00" saldoFinal="1317746.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-07-16" fechaFin="2016-08-16"  saldoInicial="1317746.00" saldoFinal="6961152.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-08-16" fechaFin="2016-09-16"  saldoInicial="6961152.00" saldoFinal="6018726.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-09-16" fechaFin="2016-10-16"  saldoInicial="6018726.00" saldoFinal="3482611.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-10-16" fechaFin="2016-11-16"  saldoInicial="3482611.00" saldoFinal="1420464.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-11-16" fechaFin="2016-12-16"  saldoInicial="1420464.00" saldoFinal="1457907.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2016-12-16" fechaFin="2017-01-16"  saldoInicial="1457907.00" saldoFinal="394758.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-01-16" fechaFin="2017-02-16"  saldoInicial="394758.00" saldoFinal="7634021.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-02-16" fechaFin="2017-03-16"  saldoInicial="7634021.00" saldoFinal="7666089.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-03-16" fechaFin="2017-04-16"  saldoInicial="7666089.00" saldoFinal="6862034.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-04-16" fechaFin="2017-05-16"  saldoInicial="6862034.00" saldoFinal="5820057.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-05-16" fechaFin="2017-06-16"  saldoInicial="5820057.00" saldoFinal="7730440.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-06-16" fechaFin="2017-07-16"  saldoInicial="7730440.00" saldoFinal="105781.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-07-16" fechaFin="2017-08-16"  saldoInicial="105781.00" saldoFinal="3322539.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-08-16" fechaFin="2017-09-16"  saldoInicial="3322539.00" saldoFinal="786121.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-09-16" fechaFin="2017-10-16"  saldoInicial="786121.00" saldoFinal="3120138.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-10-16" fechaFin="2017-11-16"  saldoInicial="3120138.00" saldoFinal="8570639.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-11-16" fechaFin="2017-12-16"  saldoInicial="8570639.00" saldoFinal="4096625.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2017-12-16" fechaFin="2018-01-16"  saldoInicial="4096625.00" saldoFinal="8725689.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-01-16" fechaFin="2018-02-16"  saldoInicial="8725689.00" saldoFinal="6240192.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-02-16" fechaFin="2018-03-16"  saldoInicial="6240192.00" saldoFinal="2136335.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-03-16" fechaFin="2018-04-16"  saldoInicial="2136335.00" saldoFinal="3152256.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-04-16" fechaFin="2018-05-16"  saldoInicial="3152256.00" saldoFinal="3092873.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-05-16" fechaFin="2018-06-16"  saldoInicial="3092873.00" saldoFinal="138003.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-06-16" fechaFin="2018-07-16"  saldoInicial="138003.00" saldoFinal="684389.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-07-16" fechaFin="2018-08-16"  saldoInicial="684389.00" saldoFinal="7073508.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-08-16" fechaFin="2018-09-16"  saldoInicial="7073508.00" saldoFinal="8839999.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-09-16" fechaFin="2018-10-16"  saldoInicial="8839999.00" saldoFinal="7549663.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-10-16" fechaFin="2018-11-16"  saldoInicial="7549663.00" saldoFinal="8757635.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-11-16" fechaFin="2018-12-16"  saldoInicial="8757635.00" saldoFinal="5644888.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2018-12-16" fechaFin="2019-01-16"  saldoInicial="5644888.00" saldoFinal="4576393.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-01-16" fechaFin="2019-02-16"  saldoInicial="4576393.00" saldoFinal="7535933.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-02-16" fechaFin="2019-03-16"  saldoInicial="7535933.00" saldoFinal="284462.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-03-16" fechaFin="2019-04-16"  saldoInicial="284462.00" saldoFinal="999808.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-04-16" fechaFin="2019-05-16"  saldoInicial="999808.00" saldoFinal="2912402.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-05-16" fechaFin="2019-06-16"  saldoInicial="2912402.00" saldoFinal="7472849.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-06-16" fechaFin="2019-07-16"  saldoInicial="7472849.00" saldoFinal="542010.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-07-16" fechaFin="2019-08-16"  saldoInicial="542010.00" saldoFinal="8758663.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-08-16" fechaFin="2019-09-16"  saldoInicial="8758663.00" saldoFinal="5704490.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-09-16" fechaFin="2019-10-16"  saldoInicial="5704490.00" saldoFinal="5056176.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-10-16" fechaFin="2019-11-16"  saldoInicial="5056176.00" saldoFinal="2711407.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-11-16" fechaFin="2019-12-16"  saldoInicial="2711407.00" saldoFinal="1373368.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2019-12-16" fechaFin="2020-01-16"  saldoInicial="1373368.00" saldoFinal="477408.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2020-01-16" fechaFin="2020-02-16"  saldoInicial="477408.00" saldoFinal="5496971.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2020-02-16" fechaFin="2020-03-16"  saldoInicial="5496971.00" saldoFinal="1637349.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2020-03-16" fechaFin="2020-04-16"  saldoInicial="1637349.00" saldoFinal="4975248.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2020-04-16" fechaFin="2020-05-16"  saldoInicial="4975248.00" saldoFinal="6280556.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2020-05-16" fechaFin="2020-06-16"  saldoInicial="6280556.00" saldoFinal="3188829.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2020-06-16" fechaFin="2020-07-16"  saldoInicial="3188829.00" saldoFinal="6626123.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2020-07-16" fechaFin="2020-08-16"  saldoInicial="6626123.00" saldoFinal="6322385.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2020-08-16" fechaFin="2020-09-16"  saldoInicial="6322385.00" saldoFinal="8481213.00" />
    <Estado_de_Cuenta NumeroCuenta="11385711" fechaInicio="2020-09-16" fechaFin="2020-10-16"  saldoInicial="8481213.00" saldoFinal="2719195.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2019-10-13" fechaFin="2019-11-13"  saldoInicial="5502422.00" saldoFinal="8180005.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2019-11-13" fechaFin="2019-12-13"  saldoInicial="8180005.00" saldoFinal="168398.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2019-12-13" fechaFin="2020-01-13"  saldoInicial="168398.00" saldoFinal="3445884.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2020-01-13" fechaFin="2020-02-13"  saldoInicial="3445884.00" saldoFinal="7318501.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2020-02-13" fechaFin="2020-03-13"  saldoInicial="7318501.00" saldoFinal="8759182.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2020-03-13" fechaFin="2020-04-13"  saldoInicial="8759182.00" saldoFinal="416276.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2020-04-13" fechaFin="2020-05-13"  saldoInicial="416276.00" saldoFinal="4860663.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2020-05-13" fechaFin="2020-06-13"  saldoInicial="4860663.00" saldoFinal="3894826.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2020-06-13" fechaFin="2020-07-13"  saldoInicial="3894826.00" saldoFinal="4421365.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2020-07-13" fechaFin="2020-08-13"  saldoInicial="4421365.00" saldoFinal="8816461.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2020-08-13" fechaFin="2020-09-13"  saldoInicial="8816461.00" saldoFinal="65959.00" />
    <Estado_de_Cuenta NumeroCuenta="11024586" fechaInicio="2020-09-13" fechaFin="2020-10-13"  saldoInicial="65959.00" saldoFinal="3067659.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-01-28" fechaFin="2012-02-28"  saldoInicial="32301567.00" saldoFinal="7073263.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-02-28" fechaFin="2012-03-28"  saldoInicial="7073263.00" saldoFinal="8824647.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-03-28" fechaFin="2012-04-28"  saldoInicial="8824647.00" saldoFinal="4461165.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-04-28" fechaFin="2012-05-28"  saldoInicial="4461165.00" saldoFinal="5562739.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-05-28" fechaFin="2012-06-28"  saldoInicial="5562739.00" saldoFinal="8333920.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-06-28" fechaFin="2012-07-28"  saldoInicial="8333920.00" saldoFinal="8330272.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-07-28" fechaFin="2012-08-28"  saldoInicial="8330272.00" saldoFinal="1640195.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-08-28" fechaFin="2012-09-28"  saldoInicial="1640195.00" saldoFinal="7536738.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-09-28" fechaFin="2012-10-28"  saldoInicial="7536738.00" saldoFinal="4542732.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-10-28" fechaFin="2012-11-28"  saldoInicial="4542732.00" saldoFinal="5394168.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-11-28" fechaFin="2012-12-28"  saldoInicial="5394168.00" saldoFinal="3891037.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2012-12-28" fechaFin="2013-01-28"  saldoInicial="3891037.00" saldoFinal="6341929.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-01-28" fechaFin="2013-02-28"  saldoInicial="6341929.00" saldoFinal="5302629.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-02-28" fechaFin="2013-03-28"  saldoInicial="5302629.00" saldoFinal="1715876.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-03-28" fechaFin="2013-04-28"  saldoInicial="1715876.00" saldoFinal="4958467.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-04-28" fechaFin="2013-05-28"  saldoInicial="4958467.00" saldoFinal="4907998.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-05-28" fechaFin="2013-06-28"  saldoInicial="4907998.00" saldoFinal="7641807.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-06-28" fechaFin="2013-07-28"  saldoInicial="7641807.00" saldoFinal="3901237.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-07-28" fechaFin="2013-08-28"  saldoInicial="3901237.00" saldoFinal="1119626.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-08-28" fechaFin="2013-09-28"  saldoInicial="1119626.00" saldoFinal="3370148.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-09-28" fechaFin="2013-10-28"  saldoInicial="3370148.00" saldoFinal="7697385.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-10-28" fechaFin="2013-11-28"  saldoInicial="7697385.00" saldoFinal="4645170.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-11-28" fechaFin="2013-12-28"  saldoInicial="4645170.00" saldoFinal="3835235.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2013-12-28" fechaFin="2014-01-28"  saldoInicial="3835235.00" saldoFinal="772135.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-01-28" fechaFin="2014-02-28"  saldoInicial="772135.00" saldoFinal="7988177.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-02-28" fechaFin="2014-03-28"  saldoInicial="7988177.00" saldoFinal="1083556.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-03-28" fechaFin="2014-04-28"  saldoInicial="1083556.00" saldoFinal="5800000.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-04-28" fechaFin="2014-05-28"  saldoInicial="5800000.00" saldoFinal="924094.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-05-28" fechaFin="2014-06-28"  saldoInicial="924094.00" saldoFinal="4894357.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-06-28" fechaFin="2014-07-28"  saldoInicial="4894357.00" saldoFinal="7974344.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-07-28" fechaFin="2014-08-28"  saldoInicial="7974344.00" saldoFinal="1288574.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-08-28" fechaFin="2014-09-28"  saldoInicial="1288574.00" saldoFinal="6496173.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-09-28" fechaFin="2014-10-28"  saldoInicial="6496173.00" saldoFinal="2932453.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-10-28" fechaFin="2014-11-28"  saldoInicial="2932453.00" saldoFinal="1962912.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-11-28" fechaFin="2014-12-28"  saldoInicial="1962912.00" saldoFinal="341235.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2014-12-28" fechaFin="2015-01-28"  saldoInicial="341235.00" saldoFinal="6307445.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-01-28" fechaFin="2015-02-28"  saldoInicial="6307445.00" saldoFinal="6318344.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-02-28" fechaFin="2015-03-28"  saldoInicial="6318344.00" saldoFinal="1305349.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-03-28" fechaFin="2015-04-28"  saldoInicial="1305349.00" saldoFinal="458713.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-04-28" fechaFin="2015-05-28"  saldoInicial="458713.00" saldoFinal="6993227.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-05-28" fechaFin="2015-06-28"  saldoInicial="6993227.00" saldoFinal="1578823.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-06-28" fechaFin="2015-07-28"  saldoInicial="1578823.00" saldoFinal="1632387.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-07-28" fechaFin="2015-08-28"  saldoInicial="1632387.00" saldoFinal="2470800.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-08-28" fechaFin="2015-09-28"  saldoInicial="2470800.00" saldoFinal="8199417.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-09-28" fechaFin="2015-10-28"  saldoInicial="8199417.00" saldoFinal="8884463.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-10-28" fechaFin="2015-11-28"  saldoInicial="8884463.00" saldoFinal="4961654.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-11-28" fechaFin="2015-12-28"  saldoInicial="4961654.00" saldoFinal="6747408.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2015-12-28" fechaFin="2016-01-28"  saldoInicial="6747408.00" saldoFinal="94972.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-01-28" fechaFin="2016-02-28"  saldoInicial="94972.00" saldoFinal="7556200.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-02-28" fechaFin="2016-03-28"  saldoInicial="7556200.00" saldoFinal="3913503.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-03-28" fechaFin="2016-04-28"  saldoInicial="3913503.00" saldoFinal="44726.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-04-28" fechaFin="2016-05-28"  saldoInicial="44726.00" saldoFinal="6323795.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-05-28" fechaFin="2016-06-28"  saldoInicial="6323795.00" saldoFinal="1097583.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-06-28" fechaFin="2016-07-28"  saldoInicial="1097583.00" saldoFinal="383446.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-07-28" fechaFin="2016-08-28"  saldoInicial="383446.00" saldoFinal="2124322.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-08-28" fechaFin="2016-09-28"  saldoInicial="2124322.00" saldoFinal="3928152.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-09-28" fechaFin="2016-10-28"  saldoInicial="3928152.00" saldoFinal="8604930.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-10-28" fechaFin="2016-11-28"  saldoInicial="8604930.00" saldoFinal="8550780.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-11-28" fechaFin="2016-12-28"  saldoInicial="8550780.00" saldoFinal="5374585.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2016-12-28" fechaFin="2017-01-28"  saldoInicial="5374585.00" saldoFinal="3836999.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-01-28" fechaFin="2017-02-28"  saldoInicial="3836999.00" saldoFinal="2950637.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-02-28" fechaFin="2017-03-28"  saldoInicial="2950637.00" saldoFinal="457960.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-03-28" fechaFin="2017-04-28"  saldoInicial="457960.00" saldoFinal="4423306.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-04-28" fechaFin="2017-05-28"  saldoInicial="4423306.00" saldoFinal="5757652.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-05-28" fechaFin="2017-06-28"  saldoInicial="5757652.00" saldoFinal="3099314.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-06-28" fechaFin="2017-07-28"  saldoInicial="3099314.00" saldoFinal="7004830.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-07-28" fechaFin="2017-08-28"  saldoInicial="7004830.00" saldoFinal="5530159.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-08-28" fechaFin="2017-09-28"  saldoInicial="5530159.00" saldoFinal="6623715.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-09-28" fechaFin="2017-10-28"  saldoInicial="6623715.00" saldoFinal="2953234.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-10-28" fechaFin="2017-11-28"  saldoInicial="2953234.00" saldoFinal="5012151.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-11-28" fechaFin="2017-12-28"  saldoInicial="5012151.00" saldoFinal="8027353.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2017-12-28" fechaFin="2018-01-28"  saldoInicial="8027353.00" saldoFinal="7111155.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-01-28" fechaFin="2018-02-28"  saldoInicial="7111155.00" saldoFinal="8575245.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-02-28" fechaFin="2018-03-28"  saldoInicial="8575245.00" saldoFinal="3978922.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-03-28" fechaFin="2018-04-28"  saldoInicial="3978922.00" saldoFinal="5742597.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-04-28" fechaFin="2018-05-28"  saldoInicial="5742597.00" saldoFinal="381873.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-05-28" fechaFin="2018-06-28"  saldoInicial="381873.00" saldoFinal="7529982.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-06-28" fechaFin="2018-07-28"  saldoInicial="7529982.00" saldoFinal="3636285.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-07-28" fechaFin="2018-08-28"  saldoInicial="3636285.00" saldoFinal="4944800.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-08-28" fechaFin="2018-09-28"  saldoInicial="4944800.00" saldoFinal="3429431.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-09-28" fechaFin="2018-10-28"  saldoInicial="3429431.00" saldoFinal="5985640.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-10-28" fechaFin="2018-11-28"  saldoInicial="5985640.00" saldoFinal="2718980.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-11-28" fechaFin="2018-12-28"  saldoInicial="2718980.00" saldoFinal="6632778.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2018-12-28" fechaFin="2019-01-28"  saldoInicial="6632778.00" saldoFinal="1590696.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-01-28" fechaFin="2019-02-28"  saldoInicial="1590696.00" saldoFinal="1641252.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-02-28" fechaFin="2019-03-28"  saldoInicial="1641252.00" saldoFinal="1626622.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-03-28" fechaFin="2019-04-28"  saldoInicial="1626622.00" saldoFinal="7161878.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-04-28" fechaFin="2019-05-28"  saldoInicial="7161878.00" saldoFinal="2622004.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-05-28" fechaFin="2019-06-28"  saldoInicial="2622004.00" saldoFinal="4655862.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-06-28" fechaFin="2019-07-28"  saldoInicial="4655862.00" saldoFinal="6776889.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-07-28" fechaFin="2019-08-28"  saldoInicial="6776889.00" saldoFinal="3721346.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-08-28" fechaFin="2019-09-28"  saldoInicial="3721346.00" saldoFinal="6724850.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-09-28" fechaFin="2019-10-28"  saldoInicial="6724850.00" saldoFinal="1596790.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-10-28" fechaFin="2019-11-28"  saldoInicial="1596790.00" saldoFinal="881169.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-11-28" fechaFin="2019-12-28"  saldoInicial="881169.00" saldoFinal="5805608.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2019-12-28" fechaFin="2020-01-28"  saldoInicial="5805608.00" saldoFinal="6789626.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2020-01-28" fechaFin="2020-02-28"  saldoInicial="6789626.00" saldoFinal="6590917.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2020-02-28" fechaFin="2020-03-28"  saldoInicial="6590917.00" saldoFinal="4339699.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2020-03-28" fechaFin="2020-04-28"  saldoInicial="4339699.00" saldoFinal="987566.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2020-04-28" fechaFin="2020-05-28"  saldoInicial="987566.00" saldoFinal="6163345.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2020-05-28" fechaFin="2020-06-28"  saldoInicial="6163345.00" saldoFinal="1636735.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2020-06-28" fechaFin="2020-07-28"  saldoInicial="1636735.00" saldoFinal="798096.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2020-07-28" fechaFin="2020-08-28"  saldoInicial="798096.00" saldoFinal="2917968.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2020-08-28" fechaFin="2020-09-28"  saldoInicial="2917968.00" saldoFinal="4364092.00" />
    <Estado_de_Cuenta NumeroCuenta="11794632" fechaInicio="2020-09-28" fechaFin="2020-10-28"  saldoInicial="4364092.00" saldoFinal="2435814.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-01-02" fechaFin="2010-02-02"  saldoInicial="36362498.00" saldoFinal="6842643.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-02-02" fechaFin="2010-03-02"  saldoInicial="6842643.00" saldoFinal="7795586.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-03-02" fechaFin="2010-04-02"  saldoInicial="7795586.00" saldoFinal="3300034.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-04-02" fechaFin="2010-05-02"  saldoInicial="3300034.00" saldoFinal="4351662.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-05-02" fechaFin="2010-06-02"  saldoInicial="4351662.00" saldoFinal="5048124.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-06-02" fechaFin="2010-07-02"  saldoInicial="5048124.00" saldoFinal="4126829.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-07-02" fechaFin="2010-08-02"  saldoInicial="4126829.00" saldoFinal="4562300.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-08-02" fechaFin="2010-09-02"  saldoInicial="4562300.00" saldoFinal="1142196.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-09-02" fechaFin="2010-10-02"  saldoInicial="1142196.00" saldoFinal="3774044.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-10-02" fechaFin="2010-11-02"  saldoInicial="3774044.00" saldoFinal="2926191.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-11-02" fechaFin="2010-12-02"  saldoInicial="2926191.00" saldoFinal="5040791.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2010-12-02" fechaFin="2011-01-02"  saldoInicial="5040791.00" saldoFinal="2610902.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-01-02" fechaFin="2011-02-02"  saldoInicial="2610902.00" saldoFinal="1392059.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-02-02" fechaFin="2011-03-02"  saldoInicial="1392059.00" saldoFinal="2100922.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-03-02" fechaFin="2011-04-02"  saldoInicial="2100922.00" saldoFinal="4707261.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-04-02" fechaFin="2011-05-02"  saldoInicial="4707261.00" saldoFinal="4656665.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-05-02" fechaFin="2011-06-02"  saldoInicial="4656665.00" saldoFinal="605134.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-06-02" fechaFin="2011-07-02"  saldoInicial="605134.00" saldoFinal="626378.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-07-02" fechaFin="2011-08-02"  saldoInicial="626378.00" saldoFinal="4883116.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-08-02" fechaFin="2011-09-02"  saldoInicial="4883116.00" saldoFinal="7890309.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-09-02" fechaFin="2011-10-02"  saldoInicial="7890309.00" saldoFinal="3105487.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-10-02" fechaFin="2011-11-02"  saldoInicial="3105487.00" saldoFinal="5555214.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-11-02" fechaFin="2011-12-02"  saldoInicial="5555214.00" saldoFinal="208807.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2011-12-02" fechaFin="2012-01-02"  saldoInicial="208807.00" saldoFinal="7643838.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-01-02" fechaFin="2012-02-02"  saldoInicial="7643838.00" saldoFinal="2039345.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-02-02" fechaFin="2012-03-02"  saldoInicial="2039345.00" saldoFinal="4544648.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-03-02" fechaFin="2012-04-02"  saldoInicial="4544648.00" saldoFinal="2101299.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-04-02" fechaFin="2012-05-02"  saldoInicial="2101299.00" saldoFinal="8290553.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-05-02" fechaFin="2012-06-02"  saldoInicial="8290553.00" saldoFinal="5010539.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-06-02" fechaFin="2012-07-02"  saldoInicial="5010539.00" saldoFinal="6706773.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-07-02" fechaFin="2012-08-02"  saldoInicial="6706773.00" saldoFinal="4515915.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-08-02" fechaFin="2012-09-02"  saldoInicial="4515915.00" saldoFinal="4911227.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-09-02" fechaFin="2012-10-02"  saldoInicial="4911227.00" saldoFinal="1527935.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-10-02" fechaFin="2012-11-02"  saldoInicial="1527935.00" saldoFinal="5355754.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-11-02" fechaFin="2012-12-02"  saldoInicial="5355754.00" saldoFinal="3663956.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2012-12-02" fechaFin="2013-01-02"  saldoInicial="3663956.00" saldoFinal="550017.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-01-02" fechaFin="2013-02-02"  saldoInicial="550017.00" saldoFinal="464996.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-02-02" fechaFin="2013-03-02"  saldoInicial="464996.00" saldoFinal="4452307.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-03-02" fechaFin="2013-04-02"  saldoInicial="4452307.00" saldoFinal="6527151.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-04-02" fechaFin="2013-05-02"  saldoInicial="6527151.00" saldoFinal="3176975.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-05-02" fechaFin="2013-06-02"  saldoInicial="3176975.00" saldoFinal="3392616.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-06-02" fechaFin="2013-07-02"  saldoInicial="3392616.00" saldoFinal="8693088.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-07-02" fechaFin="2013-08-02"  saldoInicial="8693088.00" saldoFinal="982751.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-08-02" fechaFin="2013-09-02"  saldoInicial="982751.00" saldoFinal="8854456.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-09-02" fechaFin="2013-10-02"  saldoInicial="8854456.00" saldoFinal="7835328.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-10-02" fechaFin="2013-11-02"  saldoInicial="7835328.00" saldoFinal="2609387.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-11-02" fechaFin="2013-12-02"  saldoInicial="2609387.00" saldoFinal="6285416.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2013-12-02" fechaFin="2014-01-02"  saldoInicial="6285416.00" saldoFinal="6759345.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-01-02" fechaFin="2014-02-02"  saldoInicial="6759345.00" saldoFinal="3806826.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-02-02" fechaFin="2014-03-02"  saldoInicial="3806826.00" saldoFinal="1880076.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-03-02" fechaFin="2014-04-02"  saldoInicial="1880076.00" saldoFinal="7092484.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-04-02" fechaFin="2014-05-02"  saldoInicial="7092484.00" saldoFinal="1846120.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-05-02" fechaFin="2014-06-02"  saldoInicial="1846120.00" saldoFinal="8286817.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-06-02" fechaFin="2014-07-02"  saldoInicial="8286817.00" saldoFinal="8652196.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-07-02" fechaFin="2014-08-02"  saldoInicial="8652196.00" saldoFinal="4892247.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-08-02" fechaFin="2014-09-02"  saldoInicial="4892247.00" saldoFinal="4945215.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-09-02" fechaFin="2014-10-02"  saldoInicial="4945215.00" saldoFinal="1462626.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-10-02" fechaFin="2014-11-02"  saldoInicial="1462626.00" saldoFinal="4858647.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-11-02" fechaFin="2014-12-02"  saldoInicial="4858647.00" saldoFinal="6672703.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2014-12-02" fechaFin="2015-01-02"  saldoInicial="6672703.00" saldoFinal="608785.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-01-02" fechaFin="2015-02-02"  saldoInicial="608785.00" saldoFinal="4541760.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-02-02" fechaFin="2015-03-02"  saldoInicial="4541760.00" saldoFinal="7304262.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-03-02" fechaFin="2015-04-02"  saldoInicial="7304262.00" saldoFinal="2074719.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-04-02" fechaFin="2015-05-02"  saldoInicial="2074719.00" saldoFinal="4663333.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-05-02" fechaFin="2015-06-02"  saldoInicial="4663333.00" saldoFinal="2806001.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-06-02" fechaFin="2015-07-02"  saldoInicial="2806001.00" saldoFinal="982666.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-07-02" fechaFin="2015-08-02"  saldoInicial="982666.00" saldoFinal="4830477.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-08-02" fechaFin="2015-09-02"  saldoInicial="4830477.00" saldoFinal="6433019.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-09-02" fechaFin="2015-10-02"  saldoInicial="6433019.00" saldoFinal="884964.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-10-02" fechaFin="2015-11-02"  saldoInicial="884964.00" saldoFinal="8139606.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-11-02" fechaFin="2015-12-02"  saldoInicial="8139606.00" saldoFinal="7178712.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2015-12-02" fechaFin="2016-01-02"  saldoInicial="7178712.00" saldoFinal="815307.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-01-02" fechaFin="2016-02-02"  saldoInicial="815307.00" saldoFinal="5258923.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-02-02" fechaFin="2016-03-02"  saldoInicial="5258923.00" saldoFinal="2132824.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-03-02" fechaFin="2016-04-02"  saldoInicial="2132824.00" saldoFinal="7535391.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-04-02" fechaFin="2016-05-02"  saldoInicial="7535391.00" saldoFinal="1685173.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-05-02" fechaFin="2016-06-02"  saldoInicial="1685173.00" saldoFinal="1874499.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-06-02" fechaFin="2016-07-02"  saldoInicial="1874499.00" saldoFinal="731083.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-07-02" fechaFin="2016-08-02"  saldoInicial="731083.00" saldoFinal="258587.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-08-02" fechaFin="2016-09-02"  saldoInicial="258587.00" saldoFinal="6815581.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-09-02" fechaFin="2016-10-02"  saldoInicial="6815581.00" saldoFinal="4828441.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-10-02" fechaFin="2016-11-02"  saldoInicial="4828441.00" saldoFinal="247565.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-11-02" fechaFin="2016-12-02"  saldoInicial="247565.00" saldoFinal="2441504.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2016-12-02" fechaFin="2017-01-02"  saldoInicial="2441504.00" saldoFinal="573857.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-01-02" fechaFin="2017-02-02"  saldoInicial="573857.00" saldoFinal="8657297.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-02-02" fechaFin="2017-03-02"  saldoInicial="8657297.00" saldoFinal="4480310.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-03-02" fechaFin="2017-04-02"  saldoInicial="4480310.00" saldoFinal="3673366.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-04-02" fechaFin="2017-05-02"  saldoInicial="3673366.00" saldoFinal="5421659.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-05-02" fechaFin="2017-06-02"  saldoInicial="5421659.00" saldoFinal="2350147.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-06-02" fechaFin="2017-07-02"  saldoInicial="2350147.00" saldoFinal="1997846.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-07-02" fechaFin="2017-08-02"  saldoInicial="1997846.00" saldoFinal="3820087.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-08-02" fechaFin="2017-09-02"  saldoInicial="3820087.00" saldoFinal="8466779.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-09-02" fechaFin="2017-10-02"  saldoInicial="8466779.00" saldoFinal="3701923.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-10-02" fechaFin="2017-11-02"  saldoInicial="3701923.00" saldoFinal="7005096.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-11-02" fechaFin="2017-12-02"  saldoInicial="7005096.00" saldoFinal="8942385.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2017-12-02" fechaFin="2018-01-02"  saldoInicial="8942385.00" saldoFinal="1548556.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-01-02" fechaFin="2018-02-02"  saldoInicial="1548556.00" saldoFinal="1349523.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-02-02" fechaFin="2018-03-02"  saldoInicial="1349523.00" saldoFinal="4304362.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-03-02" fechaFin="2018-04-02"  saldoInicial="4304362.00" saldoFinal="821926.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-04-02" fechaFin="2018-05-02"  saldoInicial="821926.00" saldoFinal="4242386.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-05-02" fechaFin="2018-06-02"  saldoInicial="4242386.00" saldoFinal="773788.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-06-02" fechaFin="2018-07-02"  saldoInicial="773788.00" saldoFinal="2381715.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-07-02" fechaFin="2018-08-02"  saldoInicial="2381715.00" saldoFinal="6980446.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-08-02" fechaFin="2018-09-02"  saldoInicial="6980446.00" saldoFinal="8212284.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-09-02" fechaFin="2018-10-02"  saldoInicial="8212284.00" saldoFinal="8617399.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-10-02" fechaFin="2018-11-02"  saldoInicial="8617399.00" saldoFinal="5979942.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-11-02" fechaFin="2018-12-02"  saldoInicial="5979942.00" saldoFinal="2231336.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2018-12-02" fechaFin="2019-01-02"  saldoInicial="2231336.00" saldoFinal="1265713.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-01-02" fechaFin="2019-02-02"  saldoInicial="1265713.00" saldoFinal="755156.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-02-02" fechaFin="2019-03-02"  saldoInicial="755156.00" saldoFinal="3474190.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-03-02" fechaFin="2019-04-02"  saldoInicial="3474190.00" saldoFinal="1800797.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-04-02" fechaFin="2019-05-02"  saldoInicial="1800797.00" saldoFinal="1506409.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-05-02" fechaFin="2019-06-02"  saldoInicial="1506409.00" saldoFinal="1689184.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-06-02" fechaFin="2019-07-02"  saldoInicial="1689184.00" saldoFinal="4069374.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-07-02" fechaFin="2019-08-02"  saldoInicial="4069374.00" saldoFinal="3829105.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-08-02" fechaFin="2019-09-02"  saldoInicial="3829105.00" saldoFinal="8978263.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-09-02" fechaFin="2019-10-02"  saldoInicial="8978263.00" saldoFinal="1724324.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-10-02" fechaFin="2019-11-02"  saldoInicial="1724324.00" saldoFinal="6642687.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-11-02" fechaFin="2019-12-02"  saldoInicial="6642687.00" saldoFinal="2490764.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2019-12-02" fechaFin="2020-01-02"  saldoInicial="2490764.00" saldoFinal="1452098.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2020-01-02" fechaFin="2020-02-02"  saldoInicial="1452098.00" saldoFinal="1398523.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2020-02-02" fechaFin="2020-03-02"  saldoInicial="1398523.00" saldoFinal="1945107.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2020-03-02" fechaFin="2020-04-02"  saldoInicial="1945107.00" saldoFinal="7982192.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2020-04-02" fechaFin="2020-05-02"  saldoInicial="7982192.00" saldoFinal="4471998.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2020-05-02" fechaFin="2020-06-02"  saldoInicial="4471998.00" saldoFinal="6162642.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2020-06-02" fechaFin="2020-07-02"  saldoInicial="6162642.00" saldoFinal="8953061.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2020-07-02" fechaFin="2020-08-02"  saldoInicial="8953061.00" saldoFinal="1029091.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2020-08-02" fechaFin="2020-09-02"  saldoInicial="1029091.00" saldoFinal="8551229.00" />
    <Estado_de_Cuenta NumeroCuenta="11405188" fechaInicio="2020-09-02" fechaFin="2020-10-02"  saldoInicial="8551229.00" saldoFinal="8400095.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-01-03" fechaFin="2016-02-03"  saldoInicial="15594614.00" saldoFinal="8788062.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-02-03" fechaFin="2016-03-03"  saldoInicial="8788062.00" saldoFinal="5340861.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-03-03" fechaFin="2016-04-03"  saldoInicial="5340861.00" saldoFinal="2295522.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-04-03" fechaFin="2016-05-03"  saldoInicial="2295522.00" saldoFinal="3741559.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-05-03" fechaFin="2016-06-03"  saldoInicial="3741559.00" saldoFinal="4117826.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-06-03" fechaFin="2016-07-03"  saldoInicial="4117826.00" saldoFinal="6107817.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-07-03" fechaFin="2016-08-03"  saldoInicial="6107817.00" saldoFinal="8723558.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-08-03" fechaFin="2016-09-03"  saldoInicial="8723558.00" saldoFinal="5825375.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-09-03" fechaFin="2016-10-03"  saldoInicial="5825375.00" saldoFinal="7504256.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-10-03" fechaFin="2016-11-03"  saldoInicial="7504256.00" saldoFinal="556614.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-11-03" fechaFin="2016-12-03"  saldoInicial="556614.00" saldoFinal="93628.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2016-12-03" fechaFin="2017-01-03"  saldoInicial="93628.00" saldoFinal="7376300.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-01-03" fechaFin="2017-02-03"  saldoInicial="7376300.00" saldoFinal="5415941.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-02-03" fechaFin="2017-03-03"  saldoInicial="5415941.00" saldoFinal="7375902.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-03-03" fechaFin="2017-04-03"  saldoInicial="7375902.00" saldoFinal="8296833.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-04-03" fechaFin="2017-05-03"  saldoInicial="8296833.00" saldoFinal="2769177.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-05-03" fechaFin="2017-06-03"  saldoInicial="2769177.00" saldoFinal="8973393.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-06-03" fechaFin="2017-07-03"  saldoInicial="8973393.00" saldoFinal="3754157.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-07-03" fechaFin="2017-08-03"  saldoInicial="3754157.00" saldoFinal="6860956.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-08-03" fechaFin="2017-09-03"  saldoInicial="6860956.00" saldoFinal="7193083.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-09-03" fechaFin="2017-10-03"  saldoInicial="7193083.00" saldoFinal="4005039.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-10-03" fechaFin="2017-11-03"  saldoInicial="4005039.00" saldoFinal="2625035.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-11-03" fechaFin="2017-12-03"  saldoInicial="2625035.00" saldoFinal="1837937.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2017-12-03" fechaFin="2018-01-03"  saldoInicial="1837937.00" saldoFinal="1981922.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-01-03" fechaFin="2018-02-03"  saldoInicial="1981922.00" saldoFinal="6385009.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-02-03" fechaFin="2018-03-03"  saldoInicial="6385009.00" saldoFinal="4315740.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-03-03" fechaFin="2018-04-03"  saldoInicial="4315740.00" saldoFinal="2784085.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-04-03" fechaFin="2018-05-03"  saldoInicial="2784085.00" saldoFinal="8387035.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-05-03" fechaFin="2018-06-03"  saldoInicial="8387035.00" saldoFinal="6414455.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-06-03" fechaFin="2018-07-03"  saldoInicial="6414455.00" saldoFinal="3375013.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-07-03" fechaFin="2018-08-03"  saldoInicial="3375013.00" saldoFinal="8652270.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-08-03" fechaFin="2018-09-03"  saldoInicial="8652270.00" saldoFinal="819002.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-09-03" fechaFin="2018-10-03"  saldoInicial="819002.00" saldoFinal="2247371.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-10-03" fechaFin="2018-11-03"  saldoInicial="2247371.00" saldoFinal="7008914.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-11-03" fechaFin="2018-12-03"  saldoInicial="7008914.00" saldoFinal="2363270.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2018-12-03" fechaFin="2019-01-03"  saldoInicial="2363270.00" saldoFinal="3179850.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-01-03" fechaFin="2019-02-03"  saldoInicial="3179850.00" saldoFinal="8189566.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-02-03" fechaFin="2019-03-03"  saldoInicial="8189566.00" saldoFinal="7173023.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-03-03" fechaFin="2019-04-03"  saldoInicial="7173023.00" saldoFinal="190506.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-04-03" fechaFin="2019-05-03"  saldoInicial="190506.00" saldoFinal="2034695.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-05-03" fechaFin="2019-06-03"  saldoInicial="2034695.00" saldoFinal="6996421.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-06-03" fechaFin="2019-07-03"  saldoInicial="6996421.00" saldoFinal="2247275.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-07-03" fechaFin="2019-08-03"  saldoInicial="2247275.00" saldoFinal="4789261.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-08-03" fechaFin="2019-09-03"  saldoInicial="4789261.00" saldoFinal="6365710.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-09-03" fechaFin="2019-10-03"  saldoInicial="6365710.00" saldoFinal="3977442.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-10-03" fechaFin="2019-11-03"  saldoInicial="3977442.00" saldoFinal="8831687.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-11-03" fechaFin="2019-12-03"  saldoInicial="8831687.00" saldoFinal="8526470.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2019-12-03" fechaFin="2020-01-03"  saldoInicial="8526470.00" saldoFinal="7381157.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2020-01-03" fechaFin="2020-02-03"  saldoInicial="7381157.00" saldoFinal="1454151.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2020-02-03" fechaFin="2020-03-03"  saldoInicial="1454151.00" saldoFinal="6512670.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2020-03-03" fechaFin="2020-04-03"  saldoInicial="6512670.00" saldoFinal="547074.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2020-04-03" fechaFin="2020-05-03"  saldoInicial="547074.00" saldoFinal="4008472.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2020-05-03" fechaFin="2020-06-03"  saldoInicial="4008472.00" saldoFinal="3766005.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2020-06-03" fechaFin="2020-07-03"  saldoInicial="3766005.00" saldoFinal="7201801.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2020-07-03" fechaFin="2020-08-03"  saldoInicial="7201801.00" saldoFinal="5968727.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2020-08-03" fechaFin="2020-09-03"  saldoInicial="5968727.00" saldoFinal="3734169.00" />
    <Estado_de_Cuenta NumeroCuenta="11373328" fechaInicio="2020-09-03" fechaFin="2020-10-03"  saldoInicial="3734169.00" saldoFinal="8090568.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2012-08-06" fechaFin="2012-09-06"  saldoInicial="23329481.00" saldoFinal="8977044.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2012-09-06" fechaFin="2012-10-06"  saldoInicial="8977044.00" saldoFinal="3336784.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2012-10-06" fechaFin="2012-11-06"  saldoInicial="3336784.00" saldoFinal="176011.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2012-11-06" fechaFin="2012-12-06"  saldoInicial="176011.00" saldoFinal="8560111.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2012-12-06" fechaFin="2013-01-06"  saldoInicial="8560111.00" saldoFinal="4397124.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-01-06" fechaFin="2013-02-06"  saldoInicial="4397124.00" saldoFinal="2666978.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-02-06" fechaFin="2013-03-06"  saldoInicial="2666978.00" saldoFinal="2378617.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-03-06" fechaFin="2013-04-06"  saldoInicial="2378617.00" saldoFinal="3497746.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-04-06" fechaFin="2013-05-06"  saldoInicial="3497746.00" saldoFinal="2703940.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-05-06" fechaFin="2013-06-06"  saldoInicial="2703940.00" saldoFinal="7143756.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-06-06" fechaFin="2013-07-06"  saldoInicial="7143756.00" saldoFinal="2976440.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-07-06" fechaFin="2013-08-06"  saldoInicial="2976440.00" saldoFinal="7077367.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-08-06" fechaFin="2013-09-06"  saldoInicial="7077367.00" saldoFinal="3232058.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-09-06" fechaFin="2013-10-06"  saldoInicial="3232058.00" saldoFinal="4013110.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-10-06" fechaFin="2013-11-06"  saldoInicial="4013110.00" saldoFinal="221137.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-11-06" fechaFin="2013-12-06"  saldoInicial="221137.00" saldoFinal="8168396.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2013-12-06" fechaFin="2014-01-06"  saldoInicial="8168396.00" saldoFinal="4385274.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-01-06" fechaFin="2014-02-06"  saldoInicial="4385274.00" saldoFinal="268502.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-02-06" fechaFin="2014-03-06"  saldoInicial="268502.00" saldoFinal="3486974.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-03-06" fechaFin="2014-04-06"  saldoInicial="3486974.00" saldoFinal="8427991.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-04-06" fechaFin="2014-05-06"  saldoInicial="8427991.00" saldoFinal="6918344.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-05-06" fechaFin="2014-06-06"  saldoInicial="6918344.00" saldoFinal="6593515.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-06-06" fechaFin="2014-07-06"  saldoInicial="6593515.00" saldoFinal="6852538.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-07-06" fechaFin="2014-08-06"  saldoInicial="6852538.00" saldoFinal="1886581.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-08-06" fechaFin="2014-09-06"  saldoInicial="1886581.00" saldoFinal="514171.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-09-06" fechaFin="2014-10-06"  saldoInicial="514171.00" saldoFinal="8652346.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-10-06" fechaFin="2014-11-06"  saldoInicial="8652346.00" saldoFinal="6047239.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-11-06" fechaFin="2014-12-06"  saldoInicial="6047239.00" saldoFinal="6900522.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2014-12-06" fechaFin="2015-01-06"  saldoInicial="6900522.00" saldoFinal="3315478.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-01-06" fechaFin="2015-02-06"  saldoInicial="3315478.00" saldoFinal="3251846.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-02-06" fechaFin="2015-03-06"  saldoInicial="3251846.00" saldoFinal="4984772.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-03-06" fechaFin="2015-04-06"  saldoInicial="4984772.00" saldoFinal="2185498.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-04-06" fechaFin="2015-05-06"  saldoInicial="2185498.00" saldoFinal="740052.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-05-06" fechaFin="2015-06-06"  saldoInicial="740052.00" saldoFinal="6520198.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-06-06" fechaFin="2015-07-06"  saldoInicial="6520198.00" saldoFinal="5074969.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-07-06" fechaFin="2015-08-06"  saldoInicial="5074969.00" saldoFinal="2082553.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-08-06" fechaFin="2015-09-06"  saldoInicial="2082553.00" saldoFinal="7511025.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-09-06" fechaFin="2015-10-06"  saldoInicial="7511025.00" saldoFinal="6683138.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-10-06" fechaFin="2015-11-06"  saldoInicial="6683138.00" saldoFinal="922204.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-11-06" fechaFin="2015-12-06"  saldoInicial="922204.00" saldoFinal="8549618.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2015-12-06" fechaFin="2016-01-06"  saldoInicial="8549618.00" saldoFinal="1481296.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-01-06" fechaFin="2016-02-06"  saldoInicial="1481296.00" saldoFinal="3103205.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-02-06" fechaFin="2016-03-06"  saldoInicial="3103205.00" saldoFinal="1702968.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-03-06" fechaFin="2016-04-06"  saldoInicial="1702968.00" saldoFinal="2783285.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-04-06" fechaFin="2016-05-06"  saldoInicial="2783285.00" saldoFinal="1359367.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-05-06" fechaFin="2016-06-06"  saldoInicial="1359367.00" saldoFinal="6177669.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-06-06" fechaFin="2016-07-06"  saldoInicial="6177669.00" saldoFinal="5374832.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-07-06" fechaFin="2016-08-06"  saldoInicial="5374832.00" saldoFinal="6452010.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-08-06" fechaFin="2016-09-06"  saldoInicial="6452010.00" saldoFinal="7774640.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-09-06" fechaFin="2016-10-06"  saldoInicial="7774640.00" saldoFinal="8939705.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-10-06" fechaFin="2016-11-06"  saldoInicial="8939705.00" saldoFinal="2247622.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-11-06" fechaFin="2016-12-06"  saldoInicial="2247622.00" saldoFinal="3710271.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2016-12-06" fechaFin="2017-01-06"  saldoInicial="3710271.00" saldoFinal="6259274.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-01-06" fechaFin="2017-02-06"  saldoInicial="6259274.00" saldoFinal="1277432.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-02-06" fechaFin="2017-03-06"  saldoInicial="1277432.00" saldoFinal="3322258.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-03-06" fechaFin="2017-04-06"  saldoInicial="3322258.00" saldoFinal="6460182.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-04-06" fechaFin="2017-05-06"  saldoInicial="6460182.00" saldoFinal="5217431.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-05-06" fechaFin="2017-06-06"  saldoInicial="5217431.00" saldoFinal="1370523.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-06-06" fechaFin="2017-07-06"  saldoInicial="1370523.00" saldoFinal="2871345.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-07-06" fechaFin="2017-08-06"  saldoInicial="2871345.00" saldoFinal="5540963.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-08-06" fechaFin="2017-09-06"  saldoInicial="5540963.00" saldoFinal="5105643.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-09-06" fechaFin="2017-10-06"  saldoInicial="5105643.00" saldoFinal="6965667.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-10-06" fechaFin="2017-11-06"  saldoInicial="6965667.00" saldoFinal="4992554.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-11-06" fechaFin="2017-12-06"  saldoInicial="4992554.00" saldoFinal="4695755.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2017-12-06" fechaFin="2018-01-06"  saldoInicial="4695755.00" saldoFinal="359069.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-01-06" fechaFin="2018-02-06"  saldoInicial="359069.00" saldoFinal="1713306.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-02-06" fechaFin="2018-03-06"  saldoInicial="1713306.00" saldoFinal="8808854.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-03-06" fechaFin="2018-04-06"  saldoInicial="8808854.00" saldoFinal="470706.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-04-06" fechaFin="2018-05-06"  saldoInicial="470706.00" saldoFinal="908537.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-05-06" fechaFin="2018-06-06"  saldoInicial="908537.00" saldoFinal="2018324.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-06-06" fechaFin="2018-07-06"  saldoInicial="2018324.00" saldoFinal="641698.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-07-06" fechaFin="2018-08-06"  saldoInicial="641698.00" saldoFinal="2870732.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-08-06" fechaFin="2018-09-06"  saldoInicial="2870732.00" saldoFinal="5039936.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-09-06" fechaFin="2018-10-06"  saldoInicial="5039936.00" saldoFinal="1039949.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-10-06" fechaFin="2018-11-06"  saldoInicial="1039949.00" saldoFinal="619191.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-11-06" fechaFin="2018-12-06"  saldoInicial="619191.00" saldoFinal="3980755.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2018-12-06" fechaFin="2019-01-06"  saldoInicial="3980755.00" saldoFinal="6255368.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-01-06" fechaFin="2019-02-06"  saldoInicial="6255368.00" saldoFinal="8146369.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-02-06" fechaFin="2019-03-06"  saldoInicial="8146369.00" saldoFinal="8738937.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-03-06" fechaFin="2019-04-06"  saldoInicial="8738937.00" saldoFinal="5086843.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-04-06" fechaFin="2019-05-06"  saldoInicial="5086843.00" saldoFinal="162760.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-05-06" fechaFin="2019-06-06"  saldoInicial="162760.00" saldoFinal="8885166.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-06-06" fechaFin="2019-07-06"  saldoInicial="8885166.00" saldoFinal="8703616.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-07-06" fechaFin="2019-08-06"  saldoInicial="8703616.00" saldoFinal="3209671.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-08-06" fechaFin="2019-09-06"  saldoInicial="3209671.00" saldoFinal="819205.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-09-06" fechaFin="2019-10-06"  saldoInicial="819205.00" saldoFinal="386999.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-10-06" fechaFin="2019-11-06"  saldoInicial="386999.00" saldoFinal="5073695.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-11-06" fechaFin="2019-12-06"  saldoInicial="5073695.00" saldoFinal="2471882.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2019-12-06" fechaFin="2020-01-06"  saldoInicial="2471882.00" saldoFinal="2923540.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2020-01-06" fechaFin="2020-02-06"  saldoInicial="2923540.00" saldoFinal="3965694.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2020-02-06" fechaFin="2020-03-06"  saldoInicial="3965694.00" saldoFinal="6460473.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2020-03-06" fechaFin="2020-04-06"  saldoInicial="6460473.00" saldoFinal="1184842.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2020-04-06" fechaFin="2020-05-06"  saldoInicial="1184842.00" saldoFinal="8535532.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2020-05-06" fechaFin="2020-06-06"  saldoInicial="8535532.00" saldoFinal="6489880.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2020-06-06" fechaFin="2020-07-06"  saldoInicial="6489880.00" saldoFinal="1258767.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2020-07-06" fechaFin="2020-08-06"  saldoInicial="1258767.00" saldoFinal="7904184.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2020-08-06" fechaFin="2020-09-06"  saldoInicial="7904184.00" saldoFinal="8109766.00" />
    <Estado_de_Cuenta NumeroCuenta="11704963" fechaInicio="2020-09-06" fechaFin="2020-10-06"  saldoInicial="8109766.00" saldoFinal="6890153.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2015-04-05" fechaFin="2015-05-05"  saldoInicial="61940918.00" saldoFinal="4219278.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2015-05-05" fechaFin="2015-06-05"  saldoInicial="4219278.00" saldoFinal="4162258.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2015-06-05" fechaFin="2015-07-05"  saldoInicial="4162258.00" saldoFinal="8846854.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2015-07-05" fechaFin="2015-08-05"  saldoInicial="8846854.00" saldoFinal="3271235.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2015-08-05" fechaFin="2015-09-05"  saldoInicial="3271235.00" saldoFinal="3914420.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2015-09-05" fechaFin="2015-10-05"  saldoInicial="3914420.00" saldoFinal="4861099.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2015-10-05" fechaFin="2015-11-05"  saldoInicial="4861099.00" saldoFinal="7534430.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2015-11-05" fechaFin="2015-12-05"  saldoInicial="7534430.00" saldoFinal="4788770.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2015-12-05" fechaFin="2016-01-05"  saldoInicial="4788770.00" saldoFinal="3856234.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-01-05" fechaFin="2016-02-05"  saldoInicial="3856234.00" saldoFinal="4101542.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-02-05" fechaFin="2016-03-05"  saldoInicial="4101542.00" saldoFinal="752497.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-03-05" fechaFin="2016-04-05"  saldoInicial="752497.00" saldoFinal="7563679.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-04-05" fechaFin="2016-05-05"  saldoInicial="7563679.00" saldoFinal="952407.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-05-05" fechaFin="2016-06-05"  saldoInicial="952407.00" saldoFinal="4364621.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-06-05" fechaFin="2016-07-05"  saldoInicial="4364621.00" saldoFinal="4260625.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-07-05" fechaFin="2016-08-05"  saldoInicial="4260625.00" saldoFinal="2366128.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-08-05" fechaFin="2016-09-05"  saldoInicial="2366128.00" saldoFinal="8896652.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-09-05" fechaFin="2016-10-05"  saldoInicial="8896652.00" saldoFinal="3167778.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-10-05" fechaFin="2016-11-05"  saldoInicial="3167778.00" saldoFinal="5244684.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-11-05" fechaFin="2016-12-05"  saldoInicial="5244684.00" saldoFinal="1374432.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2016-12-05" fechaFin="2017-01-05"  saldoInicial="1374432.00" saldoFinal="6010281.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-01-05" fechaFin="2017-02-05"  saldoInicial="6010281.00" saldoFinal="1042174.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-02-05" fechaFin="2017-03-05"  saldoInicial="1042174.00" saldoFinal="2612850.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-03-05" fechaFin="2017-04-05"  saldoInicial="2612850.00" saldoFinal="4996841.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-04-05" fechaFin="2017-05-05"  saldoInicial="4996841.00" saldoFinal="3808373.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-05-05" fechaFin="2017-06-05"  saldoInicial="3808373.00" saldoFinal="6346347.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-06-05" fechaFin="2017-07-05"  saldoInicial="6346347.00" saldoFinal="6139809.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-07-05" fechaFin="2017-08-05"  saldoInicial="6139809.00" saldoFinal="4508588.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-08-05" fechaFin="2017-09-05"  saldoInicial="4508588.00" saldoFinal="2278729.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-09-05" fechaFin="2017-10-05"  saldoInicial="2278729.00" saldoFinal="152551.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-10-05" fechaFin="2017-11-05"  saldoInicial="152551.00" saldoFinal="8553720.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-11-05" fechaFin="2017-12-05"  saldoInicial="8553720.00" saldoFinal="6336322.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2017-12-05" fechaFin="2018-01-05"  saldoInicial="6336322.00" saldoFinal="7479836.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-01-05" fechaFin="2018-02-05"  saldoInicial="7479836.00" saldoFinal="1795369.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-02-05" fechaFin="2018-03-05"  saldoInicial="1795369.00" saldoFinal="4479335.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-03-05" fechaFin="2018-04-05"  saldoInicial="4479335.00" saldoFinal="3093336.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-04-05" fechaFin="2018-05-05"  saldoInicial="3093336.00" saldoFinal="7318385.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-05-05" fechaFin="2018-06-05"  saldoInicial="7318385.00" saldoFinal="8242851.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-06-05" fechaFin="2018-07-05"  saldoInicial="8242851.00" saldoFinal="501311.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-07-05" fechaFin="2018-08-05"  saldoInicial="501311.00" saldoFinal="290344.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-08-05" fechaFin="2018-09-05"  saldoInicial="290344.00" saldoFinal="512509.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-09-05" fechaFin="2018-10-05"  saldoInicial="512509.00" saldoFinal="248913.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-10-05" fechaFin="2018-11-05"  saldoInicial="248913.00" saldoFinal="1774907.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-11-05" fechaFin="2018-12-05"  saldoInicial="1774907.00" saldoFinal="4497264.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2018-12-05" fechaFin="2019-01-05"  saldoInicial="4497264.00" saldoFinal="6132273.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-01-05" fechaFin="2019-02-05"  saldoInicial="6132273.00" saldoFinal="467354.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-02-05" fechaFin="2019-03-05"  saldoInicial="467354.00" saldoFinal="6092181.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-03-05" fechaFin="2019-04-05"  saldoInicial="6092181.00" saldoFinal="7508478.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-04-05" fechaFin="2019-05-05"  saldoInicial="7508478.00" saldoFinal="952307.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-05-05" fechaFin="2019-06-05"  saldoInicial="952307.00" saldoFinal="5298682.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-06-05" fechaFin="2019-07-05"  saldoInicial="5298682.00" saldoFinal="6029078.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-07-05" fechaFin="2019-08-05"  saldoInicial="6029078.00" saldoFinal="4830921.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-08-05" fechaFin="2019-09-05"  saldoInicial="4830921.00" saldoFinal="368191.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-09-05" fechaFin="2019-10-05"  saldoInicial="368191.00" saldoFinal="2624754.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-10-05" fechaFin="2019-11-05"  saldoInicial="2624754.00" saldoFinal="2063373.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-11-05" fechaFin="2019-12-05"  saldoInicial="2063373.00" saldoFinal="2598881.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2019-12-05" fechaFin="2020-01-05"  saldoInicial="2598881.00" saldoFinal="3529537.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2020-01-05" fechaFin="2020-02-05"  saldoInicial="3529537.00" saldoFinal="321457.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2020-02-05" fechaFin="2020-03-05"  saldoInicial="321457.00" saldoFinal="6245422.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2020-03-05" fechaFin="2020-04-05"  saldoInicial="6245422.00" saldoFinal="4962005.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2020-04-05" fechaFin="2020-05-05"  saldoInicial="4962005.00" saldoFinal="3173503.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2020-05-05" fechaFin="2020-06-05"  saldoInicial="3173503.00" saldoFinal="7143622.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2020-06-05" fechaFin="2020-07-05"  saldoInicial="7143622.00" saldoFinal="350499.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2020-07-05" fechaFin="2020-08-05"  saldoInicial="350499.00" saldoFinal="5828325.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2020-08-05" fechaFin="2020-09-05"  saldoInicial="5828325.00" saldoFinal="872167.00" />
    <Estado_de_Cuenta NumeroCuenta="11796772" fechaInicio="2020-09-05" fechaFin="2020-10-05"  saldoInicial="872167.00" saldoFinal="3451382.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2016-04-27" fechaFin="2016-05-27"  saldoInicial="8884311.00" saldoFinal="8693831.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2016-05-27" fechaFin="2016-06-27"  saldoInicial="8693831.00" saldoFinal="7291630.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2016-06-27" fechaFin="2016-07-27"  saldoInicial="7291630.00" saldoFinal="1759584.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2016-07-27" fechaFin="2016-08-27"  saldoInicial="1759584.00" saldoFinal="5218495.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2016-08-27" fechaFin="2016-09-27"  saldoInicial="5218495.00" saldoFinal="3468676.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2016-09-27" fechaFin="2016-10-27"  saldoInicial="3468676.00" saldoFinal="8997240.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2016-10-27" fechaFin="2016-11-27"  saldoInicial="8997240.00" saldoFinal="8025944.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2016-11-27" fechaFin="2016-12-27"  saldoInicial="8025944.00" saldoFinal="6384042.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2016-12-27" fechaFin="2017-01-27"  saldoInicial="6384042.00" saldoFinal="832351.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-01-27" fechaFin="2017-02-27"  saldoInicial="832351.00" saldoFinal="4254759.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-02-27" fechaFin="2017-03-27"  saldoInicial="4254759.00" saldoFinal="4384281.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-03-27" fechaFin="2017-04-27"  saldoInicial="4384281.00" saldoFinal="7510558.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-04-27" fechaFin="2017-05-27"  saldoInicial="7510558.00" saldoFinal="4156755.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-05-27" fechaFin="2017-06-27"  saldoInicial="4156755.00" saldoFinal="8503162.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-06-27" fechaFin="2017-07-27"  saldoInicial="8503162.00" saldoFinal="1518932.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-07-27" fechaFin="2017-08-27"  saldoInicial="1518932.00" saldoFinal="8065174.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-08-27" fechaFin="2017-09-27"  saldoInicial="8065174.00" saldoFinal="3199517.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-09-27" fechaFin="2017-10-27"  saldoInicial="3199517.00" saldoFinal="6775946.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-10-27" fechaFin="2017-11-27"  saldoInicial="6775946.00" saldoFinal="4133513.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-11-27" fechaFin="2017-12-27"  saldoInicial="4133513.00" saldoFinal="335007.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2017-12-27" fechaFin="2018-01-27"  saldoInicial="335007.00" saldoFinal="7193116.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-01-27" fechaFin="2018-02-27"  saldoInicial="7193116.00" saldoFinal="7998208.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-02-27" fechaFin="2018-03-27"  saldoInicial="7998208.00" saldoFinal="534720.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-03-27" fechaFin="2018-04-27"  saldoInicial="534720.00" saldoFinal="3869254.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-04-27" fechaFin="2018-05-27"  saldoInicial="3869254.00" saldoFinal="2881480.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-05-27" fechaFin="2018-06-27"  saldoInicial="2881480.00" saldoFinal="4075033.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-06-27" fechaFin="2018-07-27"  saldoInicial="4075033.00" saldoFinal="70306.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-07-27" fechaFin="2018-08-27"  saldoInicial="70306.00" saldoFinal="3218546.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-08-27" fechaFin="2018-09-27"  saldoInicial="3218546.00" saldoFinal="4848729.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-09-27" fechaFin="2018-10-27"  saldoInicial="4848729.00" saldoFinal="1345247.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-10-27" fechaFin="2018-11-27"  saldoInicial="1345247.00" saldoFinal="4353525.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-11-27" fechaFin="2018-12-27"  saldoInicial="4353525.00" saldoFinal="1653855.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2018-12-27" fechaFin="2019-01-27"  saldoInicial="1653855.00" saldoFinal="7123667.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-01-27" fechaFin="2019-02-27"  saldoInicial="7123667.00" saldoFinal="7628343.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-02-27" fechaFin="2019-03-27"  saldoInicial="7628343.00" saldoFinal="1461488.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-03-27" fechaFin="2019-04-27"  saldoInicial="1461488.00" saldoFinal="7221023.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-04-27" fechaFin="2019-05-27"  saldoInicial="7221023.00" saldoFinal="4801315.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-05-27" fechaFin="2019-06-27"  saldoInicial="4801315.00" saldoFinal="7425760.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-06-27" fechaFin="2019-07-27"  saldoInicial="7425760.00" saldoFinal="5346614.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-07-27" fechaFin="2019-08-27"  saldoInicial="5346614.00" saldoFinal="6870180.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-08-27" fechaFin="2019-09-27"  saldoInicial="6870180.00" saldoFinal="2950487.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-09-27" fechaFin="2019-10-27"  saldoInicial="2950487.00" saldoFinal="1885461.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-10-27" fechaFin="2019-11-27"  saldoInicial="1885461.00" saldoFinal="6554222.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-11-27" fechaFin="2019-12-27"  saldoInicial="6554222.00" saldoFinal="5560706.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2019-12-27" fechaFin="2020-01-27"  saldoInicial="5560706.00" saldoFinal="6306279.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2020-01-27" fechaFin="2020-02-27"  saldoInicial="6306279.00" saldoFinal="8163464.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2020-02-27" fechaFin="2020-03-27"  saldoInicial="8163464.00" saldoFinal="126439.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2020-03-27" fechaFin="2020-04-27"  saldoInicial="126439.00" saldoFinal="5279565.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2020-04-27" fechaFin="2020-05-27"  saldoInicial="5279565.00" saldoFinal="7597690.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2020-05-27" fechaFin="2020-06-27"  saldoInicial="7597690.00" saldoFinal="7781074.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2020-06-27" fechaFin="2020-07-27"  saldoInicial="7781074.00" saldoFinal="8330948.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2020-07-27" fechaFin="2020-08-27"  saldoInicial="8330948.00" saldoFinal="1307273.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2020-08-27" fechaFin="2020-09-27"  saldoInicial="1307273.00" saldoFinal="6745661.00" />
    <Estado_de_Cuenta NumeroCuenta="11683263" fechaInicio="2020-09-27" fechaFin="2020-10-27"  saldoInicial="6745661.00" saldoFinal="4187057.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2013-05-28" fechaFin="2013-06-28"  saldoInicial="73494620.00" saldoFinal="4760013.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2013-06-28" fechaFin="2013-07-28"  saldoInicial="4760013.00" saldoFinal="5400945.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2013-07-28" fechaFin="2013-08-28"  saldoInicial="5400945.00" saldoFinal="4555568.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2013-08-28" fechaFin="2013-09-28"  saldoInicial="4555568.00" saldoFinal="4469971.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2013-09-28" fechaFin="2013-10-28"  saldoInicial="4469971.00" saldoFinal="2743631.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2013-10-28" fechaFin="2013-11-28"  saldoInicial="2743631.00" saldoFinal="8258254.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2013-11-28" fechaFin="2013-12-28"  saldoInicial="8258254.00" saldoFinal="5311784.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2013-12-28" fechaFin="2014-01-28"  saldoInicial="5311784.00" saldoFinal="147030.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-01-28" fechaFin="2014-02-28"  saldoInicial="147030.00" saldoFinal="3487010.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-02-28" fechaFin="2014-03-28"  saldoInicial="3487010.00" saldoFinal="3715210.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-03-28" fechaFin="2014-04-28"  saldoInicial="3715210.00" saldoFinal="6400500.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-04-28" fechaFin="2014-05-28"  saldoInicial="6400500.00" saldoFinal="2398665.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-05-28" fechaFin="2014-06-28"  saldoInicial="2398665.00" saldoFinal="8779736.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-06-28" fechaFin="2014-07-28"  saldoInicial="8779736.00" saldoFinal="4031923.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-07-28" fechaFin="2014-08-28"  saldoInicial="4031923.00" saldoFinal="6583218.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-08-28" fechaFin="2014-09-28"  saldoInicial="6583218.00" saldoFinal="1064298.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-09-28" fechaFin="2014-10-28"  saldoInicial="1064298.00" saldoFinal="3950846.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-10-28" fechaFin="2014-11-28"  saldoInicial="3950846.00" saldoFinal="2219171.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-11-28" fechaFin="2014-12-28"  saldoInicial="2219171.00" saldoFinal="1661824.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2014-12-28" fechaFin="2015-01-28"  saldoInicial="1661824.00" saldoFinal="4459821.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-01-28" fechaFin="2015-02-28"  saldoInicial="4459821.00" saldoFinal="6559877.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-02-28" fechaFin="2015-03-28"  saldoInicial="6559877.00" saldoFinal="4448535.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-03-28" fechaFin="2015-04-28"  saldoInicial="4448535.00" saldoFinal="8976628.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-04-28" fechaFin="2015-05-28"  saldoInicial="8976628.00" saldoFinal="2378632.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-05-28" fechaFin="2015-06-28"  saldoInicial="2378632.00" saldoFinal="5319878.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-06-28" fechaFin="2015-07-28"  saldoInicial="5319878.00" saldoFinal="8495622.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-07-28" fechaFin="2015-08-28"  saldoInicial="8495622.00" saldoFinal="8882053.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-08-28" fechaFin="2015-09-28"  saldoInicial="8882053.00" saldoFinal="7147776.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-09-28" fechaFin="2015-10-28"  saldoInicial="7147776.00" saldoFinal="7299359.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-10-28" fechaFin="2015-11-28"  saldoInicial="7299359.00" saldoFinal="7958248.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-11-28" fechaFin="2015-12-28"  saldoInicial="7958248.00" saldoFinal="5693955.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2015-12-28" fechaFin="2016-01-28"  saldoInicial="5693955.00" saldoFinal="3706125.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-01-28" fechaFin="2016-02-28"  saldoInicial="3706125.00" saldoFinal="6319.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-02-28" fechaFin="2016-03-28"  saldoInicial="6319.00" saldoFinal="4629458.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-03-28" fechaFin="2016-04-28"  saldoInicial="4629458.00" saldoFinal="7925763.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-04-28" fechaFin="2016-05-28"  saldoInicial="7925763.00" saldoFinal="2501892.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-05-28" fechaFin="2016-06-28"  saldoInicial="2501892.00" saldoFinal="2150989.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-06-28" fechaFin="2016-07-28"  saldoInicial="2150989.00" saldoFinal="2246418.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-07-28" fechaFin="2016-08-28"  saldoInicial="2246418.00" saldoFinal="7127252.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-08-28" fechaFin="2016-09-28"  saldoInicial="7127252.00" saldoFinal="6906455.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-09-28" fechaFin="2016-10-28"  saldoInicial="6906455.00" saldoFinal="6031502.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-10-28" fechaFin="2016-11-28"  saldoInicial="6031502.00" saldoFinal="2660048.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-11-28" fechaFin="2016-12-28"  saldoInicial="2660048.00" saldoFinal="1156786.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2016-12-28" fechaFin="2017-01-28"  saldoInicial="1156786.00" saldoFinal="7519467.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-01-28" fechaFin="2017-02-28"  saldoInicial="7519467.00" saldoFinal="3942496.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-02-28" fechaFin="2017-03-28"  saldoInicial="3942496.00" saldoFinal="6322073.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-03-28" fechaFin="2017-04-28"  saldoInicial="6322073.00" saldoFinal="4420946.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-04-28" fechaFin="2017-05-28"  saldoInicial="4420946.00" saldoFinal="8389344.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-05-28" fechaFin="2017-06-28"  saldoInicial="8389344.00" saldoFinal="6306472.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-06-28" fechaFin="2017-07-28"  saldoInicial="6306472.00" saldoFinal="7786879.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-07-28" fechaFin="2017-08-28"  saldoInicial="7786879.00" saldoFinal="4128124.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-08-28" fechaFin="2017-09-28"  saldoInicial="4128124.00" saldoFinal="2881046.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-09-28" fechaFin="2017-10-28"  saldoInicial="2881046.00" saldoFinal="545907.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-10-28" fechaFin="2017-11-28"  saldoInicial="545907.00" saldoFinal="5291400.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-11-28" fechaFin="2017-12-28"  saldoInicial="5291400.00" saldoFinal="3384246.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2017-12-28" fechaFin="2018-01-28"  saldoInicial="3384246.00" saldoFinal="25723.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-01-28" fechaFin="2018-02-28"  saldoInicial="25723.00" saldoFinal="5975672.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-02-28" fechaFin="2018-03-28"  saldoInicial="5975672.00" saldoFinal="8835211.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-03-28" fechaFin="2018-04-28"  saldoInicial="8835211.00" saldoFinal="6151828.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-04-28" fechaFin="2018-05-28"  saldoInicial="6151828.00" saldoFinal="1633853.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-05-28" fechaFin="2018-06-28"  saldoInicial="1633853.00" saldoFinal="6008332.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-06-28" fechaFin="2018-07-28"  saldoInicial="6008332.00" saldoFinal="2389230.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-07-28" fechaFin="2018-08-28"  saldoInicial="2389230.00" saldoFinal="2509164.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-08-28" fechaFin="2018-09-28"  saldoInicial="2509164.00" saldoFinal="1876829.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-09-28" fechaFin="2018-10-28"  saldoInicial="1876829.00" saldoFinal="2114637.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-10-28" fechaFin="2018-11-28"  saldoInicial="2114637.00" saldoFinal="6066744.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-11-28" fechaFin="2018-12-28"  saldoInicial="6066744.00" saldoFinal="5747970.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2018-12-28" fechaFin="2019-01-28"  saldoInicial="5747970.00" saldoFinal="6963966.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-01-28" fechaFin="2019-02-28"  saldoInicial="6963966.00" saldoFinal="8401131.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-02-28" fechaFin="2019-03-28"  saldoInicial="8401131.00" saldoFinal="1411803.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-03-28" fechaFin="2019-04-28"  saldoInicial="1411803.00" saldoFinal="8788603.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-04-28" fechaFin="2019-05-28"  saldoInicial="8788603.00" saldoFinal="4101287.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-05-28" fechaFin="2019-06-28"  saldoInicial="4101287.00" saldoFinal="869612.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-06-28" fechaFin="2019-07-28"  saldoInicial="869612.00" saldoFinal="3804753.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-07-28" fechaFin="2019-08-28"  saldoInicial="3804753.00" saldoFinal="5952773.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-08-28" fechaFin="2019-09-28"  saldoInicial="5952773.00" saldoFinal="443442.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-09-28" fechaFin="2019-10-28"  saldoInicial="443442.00" saldoFinal="5686722.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-10-28" fechaFin="2019-11-28"  saldoInicial="5686722.00" saldoFinal="292071.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-11-28" fechaFin="2019-12-28"  saldoInicial="292071.00" saldoFinal="3117744.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2019-12-28" fechaFin="2020-01-28"  saldoInicial="3117744.00" saldoFinal="1715220.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2020-01-28" fechaFin="2020-02-28"  saldoInicial="1715220.00" saldoFinal="5493969.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2020-02-28" fechaFin="2020-03-28"  saldoInicial="5493969.00" saldoFinal="5922660.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2020-03-28" fechaFin="2020-04-28"  saldoInicial="5922660.00" saldoFinal="7997372.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2020-04-28" fechaFin="2020-05-28"  saldoInicial="7997372.00" saldoFinal="5446408.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2020-05-28" fechaFin="2020-06-28"  saldoInicial="5446408.00" saldoFinal="6745116.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2020-06-28" fechaFin="2020-07-28"  saldoInicial="6745116.00" saldoFinal="5561865.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2020-07-28" fechaFin="2020-08-28"  saldoInicial="5561865.00" saldoFinal="8311742.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2020-08-28" fechaFin="2020-09-28"  saldoInicial="8311742.00" saldoFinal="5589911.00" />
    <Estado_de_Cuenta NumeroCuenta="11589772" fechaInicio="2020-09-28" fechaFin="2020-10-28"  saldoInicial="5589911.00" saldoFinal="5704987.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2017-04-03" fechaFin="2017-05-03"  saldoInicial="460083.00" saldoFinal="2529418.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2017-05-03" fechaFin="2017-06-03"  saldoInicial="2529418.00" saldoFinal="86464.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2017-06-03" fechaFin="2017-07-03"  saldoInicial="86464.00" saldoFinal="771259.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2017-07-03" fechaFin="2017-08-03"  saldoInicial="771259.00" saldoFinal="6871018.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2017-08-03" fechaFin="2017-09-03"  saldoInicial="6871018.00" saldoFinal="2753078.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2017-09-03" fechaFin="2017-10-03"  saldoInicial="2753078.00" saldoFinal="5801968.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2017-10-03" fechaFin="2017-11-03"  saldoInicial="5801968.00" saldoFinal="5276997.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2017-11-03" fechaFin="2017-12-03"  saldoInicial="5276997.00" saldoFinal="4470606.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2017-12-03" fechaFin="2018-01-03"  saldoInicial="4470606.00" saldoFinal="3901383.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-01-03" fechaFin="2018-02-03"  saldoInicial="3901383.00" saldoFinal="3755633.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-02-03" fechaFin="2018-03-03"  saldoInicial="3755633.00" saldoFinal="4628036.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-03-03" fechaFin="2018-04-03"  saldoInicial="4628036.00" saldoFinal="4233618.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-04-03" fechaFin="2018-05-03"  saldoInicial="4233618.00" saldoFinal="7088539.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-05-03" fechaFin="2018-06-03"  saldoInicial="7088539.00" saldoFinal="5441939.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-06-03" fechaFin="2018-07-03"  saldoInicial="5441939.00" saldoFinal="3098787.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-07-03" fechaFin="2018-08-03"  saldoInicial="3098787.00" saldoFinal="1439467.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-08-03" fechaFin="2018-09-03"  saldoInicial="1439467.00" saldoFinal="1384271.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-09-03" fechaFin="2018-10-03"  saldoInicial="1384271.00" saldoFinal="2792210.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-10-03" fechaFin="2018-11-03"  saldoInicial="2792210.00" saldoFinal="5707711.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-11-03" fechaFin="2018-12-03"  saldoInicial="5707711.00" saldoFinal="8369142.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2018-12-03" fechaFin="2019-01-03"  saldoInicial="8369142.00" saldoFinal="63327.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-01-03" fechaFin="2019-02-03"  saldoInicial="63327.00" saldoFinal="4248026.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-02-03" fechaFin="2019-03-03"  saldoInicial="4248026.00" saldoFinal="3559735.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-03-03" fechaFin="2019-04-03"  saldoInicial="3559735.00" saldoFinal="1523628.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-04-03" fechaFin="2019-05-03"  saldoInicial="1523628.00" saldoFinal="2765513.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-05-03" fechaFin="2019-06-03"  saldoInicial="2765513.00" saldoFinal="4328494.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-06-03" fechaFin="2019-07-03"  saldoInicial="4328494.00" saldoFinal="1534439.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-07-03" fechaFin="2019-08-03"  saldoInicial="1534439.00" saldoFinal="4090519.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-08-03" fechaFin="2019-09-03"  saldoInicial="4090519.00" saldoFinal="7082028.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-09-03" fechaFin="2019-10-03"  saldoInicial="7082028.00" saldoFinal="1696635.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-10-03" fechaFin="2019-11-03"  saldoInicial="1696635.00" saldoFinal="5315024.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-11-03" fechaFin="2019-12-03"  saldoInicial="5315024.00" saldoFinal="6088824.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2019-12-03" fechaFin="2020-01-03"  saldoInicial="6088824.00" saldoFinal="1964389.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2020-01-03" fechaFin="2020-02-03"  saldoInicial="1964389.00" saldoFinal="2773522.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2020-02-03" fechaFin="2020-03-03"  saldoInicial="2773522.00" saldoFinal="1678599.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2020-03-03" fechaFin="2020-04-03"  saldoInicial="1678599.00" saldoFinal="8950008.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2020-04-03" fechaFin="2020-05-03"  saldoInicial="8950008.00" saldoFinal="6831700.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2020-05-03" fechaFin="2020-06-03"  saldoInicial="6831700.00" saldoFinal="5652619.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2020-06-03" fechaFin="2020-07-03"  saldoInicial="5652619.00" saldoFinal="1720263.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2020-07-03" fechaFin="2020-08-03"  saldoInicial="1720263.00" saldoFinal="3194208.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2020-08-03" fechaFin="2020-09-03"  saldoInicial="3194208.00" saldoFinal="1641295.00" />
    <Estado_de_Cuenta NumeroCuenta="11943543" fechaInicio="2020-09-03" fechaFin="2020-10-03"  saldoInicial="1641295.00" saldoFinal="7165485.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2019-03-05" fechaFin="2019-04-05"  saldoInicial="44992914.00" saldoFinal="5478396.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2019-04-05" fechaFin="2019-05-05"  saldoInicial="5478396.00" saldoFinal="2457020.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2019-05-05" fechaFin="2019-06-05"  saldoInicial="2457020.00" saldoFinal="2256600.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2019-06-05" fechaFin="2019-07-05"  saldoInicial="2256600.00" saldoFinal="5708677.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2019-07-05" fechaFin="2019-08-05"  saldoInicial="5708677.00" saldoFinal="6014367.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2019-08-05" fechaFin="2019-09-05"  saldoInicial="6014367.00" saldoFinal="3207277.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2019-09-05" fechaFin="2019-10-05"  saldoInicial="3207277.00" saldoFinal="2059451.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2019-10-05" fechaFin="2019-11-05"  saldoInicial="2059451.00" saldoFinal="4782494.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2019-11-05" fechaFin="2019-12-05"  saldoInicial="4782494.00" saldoFinal="5634925.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2019-12-05" fechaFin="2020-01-05"  saldoInicial="5634925.00" saldoFinal="1027520.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2020-01-05" fechaFin="2020-02-05"  saldoInicial="1027520.00" saldoFinal="5880819.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2020-02-05" fechaFin="2020-03-05"  saldoInicial="5880819.00" saldoFinal="787046.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2020-03-05" fechaFin="2020-04-05"  saldoInicial="787046.00" saldoFinal="2868747.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2020-04-05" fechaFin="2020-05-05"  saldoInicial="2868747.00" saldoFinal="2112353.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2020-05-05" fechaFin="2020-06-05"  saldoInicial="2112353.00" saldoFinal="3242447.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2020-06-05" fechaFin="2020-07-05"  saldoInicial="3242447.00" saldoFinal="4449061.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2020-07-05" fechaFin="2020-08-05"  saldoInicial="4449061.00" saldoFinal="3395995.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2020-08-05" fechaFin="2020-09-05"  saldoInicial="3395995.00" saldoFinal="8706839.00" />
    <Estado_de_Cuenta NumeroCuenta="11184977" fechaInicio="2020-09-05" fechaFin="2020-10-05"  saldoInicial="8706839.00" saldoFinal="4700911.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2017-11-27" fechaFin="2017-12-27"  saldoInicial="68393567.00" saldoFinal="1569586.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2017-12-27" fechaFin="2018-01-27"  saldoInicial="1569586.00" saldoFinal="7763297.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-01-27" fechaFin="2018-02-27"  saldoInicial="7763297.00" saldoFinal="6246990.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-02-27" fechaFin="2018-03-27"  saldoInicial="6246990.00" saldoFinal="7011413.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-03-27" fechaFin="2018-04-27"  saldoInicial="7011413.00" saldoFinal="5867194.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-04-27" fechaFin="2018-05-27"  saldoInicial="5867194.00" saldoFinal="7454844.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-05-27" fechaFin="2018-06-27"  saldoInicial="7454844.00" saldoFinal="3908979.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-06-27" fechaFin="2018-07-27"  saldoInicial="3908979.00" saldoFinal="5483528.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-07-27" fechaFin="2018-08-27"  saldoInicial="5483528.00" saldoFinal="8968756.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-08-27" fechaFin="2018-09-27"  saldoInicial="8968756.00" saldoFinal="7519705.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-09-27" fechaFin="2018-10-27"  saldoInicial="7519705.00" saldoFinal="7728754.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-10-27" fechaFin="2018-11-27"  saldoInicial="7728754.00" saldoFinal="3616041.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-11-27" fechaFin="2018-12-27"  saldoInicial="3616041.00" saldoFinal="3101869.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2018-12-27" fechaFin="2019-01-27"  saldoInicial="3101869.00" saldoFinal="1570492.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-01-27" fechaFin="2019-02-27"  saldoInicial="1570492.00" saldoFinal="4251694.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-02-27" fechaFin="2019-03-27"  saldoInicial="4251694.00" saldoFinal="3904851.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-03-27" fechaFin="2019-04-27"  saldoInicial="3904851.00" saldoFinal="5251305.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-04-27" fechaFin="2019-05-27"  saldoInicial="5251305.00" saldoFinal="3446235.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-05-27" fechaFin="2019-06-27"  saldoInicial="3446235.00" saldoFinal="2249141.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-06-27" fechaFin="2019-07-27"  saldoInicial="2249141.00" saldoFinal="2902611.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-07-27" fechaFin="2019-08-27"  saldoInicial="2902611.00" saldoFinal="633468.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-08-27" fechaFin="2019-09-27"  saldoInicial="633468.00" saldoFinal="5507232.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-09-27" fechaFin="2019-10-27"  saldoInicial="5507232.00" saldoFinal="3833185.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-10-27" fechaFin="2019-11-27"  saldoInicial="3833185.00" saldoFinal="3645718.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-11-27" fechaFin="2019-12-27"  saldoInicial="3645718.00" saldoFinal="1567032.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2019-12-27" fechaFin="2020-01-27"  saldoInicial="1567032.00" saldoFinal="8979291.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2020-01-27" fechaFin="2020-02-27"  saldoInicial="8979291.00" saldoFinal="847174.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2020-02-27" fechaFin="2020-03-27"  saldoInicial="847174.00" saldoFinal="1436322.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2020-03-27" fechaFin="2020-04-27"  saldoInicial="1436322.00" saldoFinal="8898472.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2020-04-27" fechaFin="2020-05-27"  saldoInicial="8898472.00" saldoFinal="1116477.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2020-05-27" fechaFin="2020-06-27"  saldoInicial="1116477.00" saldoFinal="2269174.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2020-06-27" fechaFin="2020-07-27"  saldoInicial="2269174.00" saldoFinal="1583865.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2020-07-27" fechaFin="2020-08-27"  saldoInicial="1583865.00" saldoFinal="6433943.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2020-08-27" fechaFin="2020-09-27"  saldoInicial="6433943.00" saldoFinal="2698563.00" />
    <Estado_de_Cuenta NumeroCuenta="11906350" fechaInicio="2020-09-27" fechaFin="2020-10-27"  saldoInicial="2698563.00" saldoFinal="8881886.00" />
    <Estado_de_Cuenta NumeroCuenta="11090371" fechaInicio="2019-12-02" fechaFin="2020-01-02"  saldoInicial="50031566.00" saldoFinal="4457927.00" />
    <Estado_de_Cuenta NumeroCuenta="11090371" fechaInicio="2020-01-02" fechaFin="2020-02-02"  saldoInicial="4457927.00" saldoFinal="7481194.00" />
    <Estado_de_Cuenta NumeroCuenta="11090371" fechaInicio="2020-02-02" fechaFin="2020-03-02"  saldoInicial="7481194.00" saldoFinal="8128969.00" />
    <Estado_de_Cuenta NumeroCuenta="11090371" fechaInicio="2020-03-02" fechaFin="2020-04-02"  saldoInicial="8128969.00" saldoFinal="5908118.00" />
    <Estado_de_Cuenta NumeroCuenta="11090371" fechaInicio="2020-04-02" fechaFin="2020-05-02"  saldoInicial="5908118.00" saldoFinal="4542169.00" />
    <Estado_de_Cuenta NumeroCuenta="11090371" fechaInicio="2020-05-02" fechaFin="2020-06-02"  saldoInicial="4542169.00" saldoFinal="2608445.00" />
    <Estado_de_Cuenta NumeroCuenta="11090371" fechaInicio="2020-06-02" fechaFin="2020-07-02"  saldoInicial="2608445.00" saldoFinal="7743303.00" />
    <Estado_de_Cuenta NumeroCuenta="11090371" fechaInicio="2020-07-02" fechaFin="2020-08-02"  saldoInicial="7743303.00" saldoFinal="1103405.00" />
    <Estado_de_Cuenta NumeroCuenta="11090371" fechaInicio="2020-08-02" fechaFin="2020-09-02"  saldoInicial="1103405.00" saldoFinal="679665.00" />
    <Estado_de_Cuenta NumeroCuenta="11090371" fechaInicio="2020-09-02" fechaFin="2020-10-02"  saldoInicial="679665.00" saldoFinal="7218848.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2011-09-26" fechaFin="2011-10-26"  saldoInicial="2655771.00" saldoFinal="5171348.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2011-10-26" fechaFin="2011-11-26"  saldoInicial="5171348.00" saldoFinal="2444538.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2011-11-26" fechaFin="2011-12-26"  saldoInicial="2444538.00" saldoFinal="7108629.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2011-12-26" fechaFin="2012-01-26"  saldoInicial="7108629.00" saldoFinal="2199969.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-01-26" fechaFin="2012-02-26"  saldoInicial="2199969.00" saldoFinal="2448351.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-02-26" fechaFin="2012-03-26"  saldoInicial="2448351.00" saldoFinal="387868.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-03-26" fechaFin="2012-04-26"  saldoInicial="387868.00" saldoFinal="7507049.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-04-26" fechaFin="2012-05-26"  saldoInicial="7507049.00" saldoFinal="8870885.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-05-26" fechaFin="2012-06-26"  saldoInicial="8870885.00" saldoFinal="8510877.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-06-26" fechaFin="2012-07-26"  saldoInicial="8510877.00" saldoFinal="4128066.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-07-26" fechaFin="2012-08-26"  saldoInicial="4128066.00" saldoFinal="8851094.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-08-26" fechaFin="2012-09-26"  saldoInicial="8851094.00" saldoFinal="1804085.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-09-26" fechaFin="2012-10-26"  saldoInicial="1804085.00" saldoFinal="6568594.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-10-26" fechaFin="2012-11-26"  saldoInicial="6568594.00" saldoFinal="8776886.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-11-26" fechaFin="2012-12-26"  saldoInicial="8776886.00" saldoFinal="2396182.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2012-12-26" fechaFin="2013-01-26"  saldoInicial="2396182.00" saldoFinal="4103516.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-01-26" fechaFin="2013-02-26"  saldoInicial="4103516.00" saldoFinal="3344469.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-02-26" fechaFin="2013-03-26"  saldoInicial="3344469.00" saldoFinal="4470169.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-03-26" fechaFin="2013-04-26"  saldoInicial="4470169.00" saldoFinal="2238233.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-04-26" fechaFin="2013-05-26"  saldoInicial="2238233.00" saldoFinal="1476992.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-05-26" fechaFin="2013-06-26"  saldoInicial="1476992.00" saldoFinal="3112397.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-06-26" fechaFin="2013-07-26"  saldoInicial="3112397.00" saldoFinal="899596.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-07-26" fechaFin="2013-08-26"  saldoInicial="899596.00" saldoFinal="3223764.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-08-26" fechaFin="2013-09-26"  saldoInicial="3223764.00" saldoFinal="6171908.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-09-26" fechaFin="2013-10-26"  saldoInicial="6171908.00" saldoFinal="3672138.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-10-26" fechaFin="2013-11-26"  saldoInicial="3672138.00" saldoFinal="6472064.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-11-26" fechaFin="2013-12-26"  saldoInicial="6472064.00" saldoFinal="5742235.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2013-12-26" fechaFin="2014-01-26"  saldoInicial="5742235.00" saldoFinal="5500827.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-01-26" fechaFin="2014-02-26"  saldoInicial="5500827.00" saldoFinal="1218980.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-02-26" fechaFin="2014-03-26"  saldoInicial="1218980.00" saldoFinal="4688585.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-03-26" fechaFin="2014-04-26"  saldoInicial="4688585.00" saldoFinal="6873184.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-04-26" fechaFin="2014-05-26"  saldoInicial="6873184.00" saldoFinal="5789389.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-05-26" fechaFin="2014-06-26"  saldoInicial="5789389.00" saldoFinal="3918859.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-06-26" fechaFin="2014-07-26"  saldoInicial="3918859.00" saldoFinal="7009475.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-07-26" fechaFin="2014-08-26"  saldoInicial="7009475.00" saldoFinal="6798336.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-08-26" fechaFin="2014-09-26"  saldoInicial="6798336.00" saldoFinal="3868756.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-09-26" fechaFin="2014-10-26"  saldoInicial="3868756.00" saldoFinal="2506456.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-10-26" fechaFin="2014-11-26"  saldoInicial="2506456.00" saldoFinal="7078382.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-11-26" fechaFin="2014-12-26"  saldoInicial="7078382.00" saldoFinal="681743.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2014-12-26" fechaFin="2015-01-26"  saldoInicial="681743.00" saldoFinal="3137329.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-01-26" fechaFin="2015-02-26"  saldoInicial="3137329.00" saldoFinal="8871439.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-02-26" fechaFin="2015-03-26"  saldoInicial="8871439.00" saldoFinal="2411110.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-03-26" fechaFin="2015-04-26"  saldoInicial="2411110.00" saldoFinal="4615806.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-04-26" fechaFin="2015-05-26"  saldoInicial="4615806.00" saldoFinal="3878753.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-05-26" fechaFin="2015-06-26"  saldoInicial="3878753.00" saldoFinal="1802738.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-06-26" fechaFin="2015-07-26"  saldoInicial="1802738.00" saldoFinal="2409291.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-07-26" fechaFin="2015-08-26"  saldoInicial="2409291.00" saldoFinal="1143677.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-08-26" fechaFin="2015-09-26"  saldoInicial="1143677.00" saldoFinal="2600058.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-09-26" fechaFin="2015-10-26"  saldoInicial="2600058.00" saldoFinal="1363017.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-10-26" fechaFin="2015-11-26"  saldoInicial="1363017.00" saldoFinal="4372726.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-11-26" fechaFin="2015-12-26"  saldoInicial="4372726.00" saldoFinal="3989497.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2015-12-26" fechaFin="2016-01-26"  saldoInicial="3989497.00" saldoFinal="4142802.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-01-26" fechaFin="2016-02-26"  saldoInicial="4142802.00" saldoFinal="174539.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-02-26" fechaFin="2016-03-26"  saldoInicial="174539.00" saldoFinal="2333656.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-03-26" fechaFin="2016-04-26"  saldoInicial="2333656.00" saldoFinal="3282554.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-04-26" fechaFin="2016-05-26"  saldoInicial="3282554.00" saldoFinal="5858007.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-05-26" fechaFin="2016-06-26"  saldoInicial="5858007.00" saldoFinal="1042951.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-06-26" fechaFin="2016-07-26"  saldoInicial="1042951.00" saldoFinal="58850.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-07-26" fechaFin="2016-08-26"  saldoInicial="58850.00" saldoFinal="2881179.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-08-26" fechaFin="2016-09-26"  saldoInicial="2881179.00" saldoFinal="6204919.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-09-26" fechaFin="2016-10-26"  saldoInicial="6204919.00" saldoFinal="2198425.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-10-26" fechaFin="2016-11-26"  saldoInicial="2198425.00" saldoFinal="8583263.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-11-26" fechaFin="2016-12-26"  saldoInicial="8583263.00" saldoFinal="7357564.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2016-12-26" fechaFin="2017-01-26"  saldoInicial="7357564.00" saldoFinal="5280619.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-01-26" fechaFin="2017-02-26"  saldoInicial="5280619.00" saldoFinal="5058011.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-02-26" fechaFin="2017-03-26"  saldoInicial="5058011.00" saldoFinal="8721409.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-03-26" fechaFin="2017-04-26"  saldoInicial="8721409.00" saldoFinal="6111279.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-04-26" fechaFin="2017-05-26"  saldoInicial="6111279.00" saldoFinal="6872774.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-05-26" fechaFin="2017-06-26"  saldoInicial="6872774.00" saldoFinal="4175646.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-06-26" fechaFin="2017-07-26"  saldoInicial="4175646.00" saldoFinal="8712960.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-07-26" fechaFin="2017-08-26"  saldoInicial="8712960.00" saldoFinal="6903747.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-08-26" fechaFin="2017-09-26"  saldoInicial="6903747.00" saldoFinal="4295748.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-09-26" fechaFin="2017-10-26"  saldoInicial="4295748.00" saldoFinal="2643780.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-10-26" fechaFin="2017-11-26"  saldoInicial="2643780.00" saldoFinal="7502693.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-11-26" fechaFin="2017-12-26"  saldoInicial="7502693.00" saldoFinal="7276046.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2017-12-26" fechaFin="2018-01-26"  saldoInicial="7276046.00" saldoFinal="4340434.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-01-26" fechaFin="2018-02-26"  saldoInicial="4340434.00" saldoFinal="2208.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-02-26" fechaFin="2018-03-26"  saldoInicial="2208.00" saldoFinal="5680851.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-03-26" fechaFin="2018-04-26"  saldoInicial="5680851.00" saldoFinal="6317969.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-04-26" fechaFin="2018-05-26"  saldoInicial="6317969.00" saldoFinal="3215642.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-05-26" fechaFin="2018-06-26"  saldoInicial="3215642.00" saldoFinal="8951506.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-06-26" fechaFin="2018-07-26"  saldoInicial="8951506.00" saldoFinal="5449456.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-07-26" fechaFin="2018-08-26"  saldoInicial="5449456.00" saldoFinal="2625035.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-08-26" fechaFin="2018-09-26"  saldoInicial="2625035.00" saldoFinal="853860.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-09-26" fechaFin="2018-10-26"  saldoInicial="853860.00" saldoFinal="2160181.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-10-26" fechaFin="2018-11-26"  saldoInicial="2160181.00" saldoFinal="1783316.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-11-26" fechaFin="2018-12-26"  saldoInicial="1783316.00" saldoFinal="5626076.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2018-12-26" fechaFin="2019-01-26"  saldoInicial="5626076.00" saldoFinal="1564241.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-01-26" fechaFin="2019-02-26"  saldoInicial="1564241.00" saldoFinal="1698574.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-02-26" fechaFin="2019-03-26"  saldoInicial="1698574.00" saldoFinal="6592239.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-03-26" fechaFin="2019-04-26"  saldoInicial="6592239.00" saldoFinal="8849941.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-04-26" fechaFin="2019-05-26"  saldoInicial="8849941.00" saldoFinal="8970184.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-05-26" fechaFin="2019-06-26"  saldoInicial="8970184.00" saldoFinal="1640704.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-06-26" fechaFin="2019-07-26"  saldoInicial="1640704.00" saldoFinal="6489322.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-07-26" fechaFin="2019-08-26"  saldoInicial="6489322.00" saldoFinal="3931248.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-08-26" fechaFin="2019-09-26"  saldoInicial="3931248.00" saldoFinal="2222806.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-09-26" fechaFin="2019-10-26"  saldoInicial="2222806.00" saldoFinal="6950400.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-10-26" fechaFin="2019-11-26"  saldoInicial="6950400.00" saldoFinal="8397981.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-11-26" fechaFin="2019-12-26"  saldoInicial="8397981.00" saldoFinal="7031706.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2019-12-26" fechaFin="2020-01-26"  saldoInicial="7031706.00" saldoFinal="4385972.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2020-01-26" fechaFin="2020-02-26"  saldoInicial="4385972.00" saldoFinal="1336301.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2020-02-26" fechaFin="2020-03-26"  saldoInicial="1336301.00" saldoFinal="5609200.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2020-03-26" fechaFin="2020-04-26"  saldoInicial="5609200.00" saldoFinal="211712.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2020-04-26" fechaFin="2020-05-26"  saldoInicial="211712.00" saldoFinal="3001506.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2020-05-26" fechaFin="2020-06-26"  saldoInicial="3001506.00" saldoFinal="3194797.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2020-06-26" fechaFin="2020-07-26"  saldoInicial="3194797.00" saldoFinal="3795174.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2020-07-26" fechaFin="2020-08-26"  saldoInicial="3795174.00" saldoFinal="720068.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2020-08-26" fechaFin="2020-09-26"  saldoInicial="720068.00" saldoFinal="4826176.00" />
    <Estado_de_Cuenta NumeroCuenta="11572464" fechaInicio="2020-09-26" fechaFin="2020-10-26"  saldoInicial="4826176.00" saldoFinal="7361115.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2017-05-10" fechaFin="2017-06-10"  saldoInicial="15793587.00" saldoFinal="1771.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2017-06-10" fechaFin="2017-07-10"  saldoInicial="1771.00" saldoFinal="5377799.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2017-07-10" fechaFin="2017-08-10"  saldoInicial="5377799.00" saldoFinal="899012.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2017-08-10" fechaFin="2017-09-10"  saldoInicial="899012.00" saldoFinal="5248989.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2017-09-10" fechaFin="2017-10-10"  saldoInicial="5248989.00" saldoFinal="3895918.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2017-10-10" fechaFin="2017-11-10"  saldoInicial="3895918.00" saldoFinal="8811919.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2017-11-10" fechaFin="2017-12-10"  saldoInicial="8811919.00" saldoFinal="3813730.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2017-12-10" fechaFin="2018-01-10"  saldoInicial="3813730.00" saldoFinal="3136046.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-01-10" fechaFin="2018-02-10"  saldoInicial="3136046.00" saldoFinal="4862629.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-02-10" fechaFin="2018-03-10"  saldoInicial="4862629.00" saldoFinal="225055.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-03-10" fechaFin="2018-04-10"  saldoInicial="225055.00" saldoFinal="180419.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-04-10" fechaFin="2018-05-10"  saldoInicial="180419.00" saldoFinal="6186795.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-05-10" fechaFin="2018-06-10"  saldoInicial="6186795.00" saldoFinal="2539868.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-06-10" fechaFin="2018-07-10"  saldoInicial="2539868.00" saldoFinal="4588784.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-07-10" fechaFin="2018-08-10"  saldoInicial="4588784.00" saldoFinal="8127745.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-08-10" fechaFin="2018-09-10"  saldoInicial="8127745.00" saldoFinal="7576770.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-09-10" fechaFin="2018-10-10"  saldoInicial="7576770.00" saldoFinal="3642232.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-10-10" fechaFin="2018-11-10"  saldoInicial="3642232.00" saldoFinal="1486985.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-11-10" fechaFin="2018-12-10"  saldoInicial="1486985.00" saldoFinal="3447143.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2018-12-10" fechaFin="2019-01-10"  saldoInicial="3447143.00" saldoFinal="5981802.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-01-10" fechaFin="2019-02-10"  saldoInicial="5981802.00" saldoFinal="8006949.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-02-10" fechaFin="2019-03-10"  saldoInicial="8006949.00" saldoFinal="3593561.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-03-10" fechaFin="2019-04-10"  saldoInicial="3593561.00" saldoFinal="8807693.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-04-10" fechaFin="2019-05-10"  saldoInicial="8807693.00" saldoFinal="4623194.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-05-10" fechaFin="2019-06-10"  saldoInicial="4623194.00" saldoFinal="8084021.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-06-10" fechaFin="2019-07-10"  saldoInicial="8084021.00" saldoFinal="1834764.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-07-10" fechaFin="2019-08-10"  saldoInicial="1834764.00" saldoFinal="5535691.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-08-10" fechaFin="2019-09-10"  saldoInicial="5535691.00" saldoFinal="3283218.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-09-10" fechaFin="2019-10-10"  saldoInicial="3283218.00" saldoFinal="3672725.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-10-10" fechaFin="2019-11-10"  saldoInicial="3672725.00" saldoFinal="5969813.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-11-10" fechaFin="2019-12-10"  saldoInicial="5969813.00" saldoFinal="8411977.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2019-12-10" fechaFin="2020-01-10"  saldoInicial="8411977.00" saldoFinal="4746171.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2020-01-10" fechaFin="2020-02-10"  saldoInicial="4746171.00" saldoFinal="4080390.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2020-02-10" fechaFin="2020-03-10"  saldoInicial="4080390.00" saldoFinal="8968267.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2020-03-10" fechaFin="2020-04-10"  saldoInicial="8968267.00" saldoFinal="4199217.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2020-04-10" fechaFin="2020-05-10"  saldoInicial="4199217.00" saldoFinal="5986449.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2020-05-10" fechaFin="2020-06-10"  saldoInicial="5986449.00" saldoFinal="2869814.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2020-06-10" fechaFin="2020-07-10"  saldoInicial="2869814.00" saldoFinal="2031123.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2020-07-10" fechaFin="2020-08-10"  saldoInicial="2031123.00" saldoFinal="7267498.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2020-08-10" fechaFin="2020-09-10"  saldoInicial="7267498.00" saldoFinal="181303.00" />
    <Estado_de_Cuenta NumeroCuenta="11619085" fechaInicio="2020-09-10" fechaFin="2020-10-10"  saldoInicial="181303.00" saldoFinal="4563728.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2018-07-05" fechaFin="2018-08-05"  saldoInicial="72997918.00" saldoFinal="5563289.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2018-08-05" fechaFin="2018-09-05"  saldoInicial="5563289.00" saldoFinal="6472848.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2018-09-05" fechaFin="2018-10-05"  saldoInicial="6472848.00" saldoFinal="7146901.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2018-10-05" fechaFin="2018-11-05"  saldoInicial="7146901.00" saldoFinal="8980502.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2018-11-05" fechaFin="2018-12-05"  saldoInicial="8980502.00" saldoFinal="3190440.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2018-12-05" fechaFin="2019-01-05"  saldoInicial="3190440.00" saldoFinal="5293400.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-01-05" fechaFin="2019-02-05"  saldoInicial="5293400.00" saldoFinal="3518989.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-02-05" fechaFin="2019-03-05"  saldoInicial="3518989.00" saldoFinal="5342439.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-03-05" fechaFin="2019-04-05"  saldoInicial="5342439.00" saldoFinal="838898.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-04-05" fechaFin="2019-05-05"  saldoInicial="838898.00" saldoFinal="130432.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-05-05" fechaFin="2019-06-05"  saldoInicial="130432.00" saldoFinal="6779326.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-06-05" fechaFin="2019-07-05"  saldoInicial="6779326.00" saldoFinal="3341876.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-07-05" fechaFin="2019-08-05"  saldoInicial="3341876.00" saldoFinal="2751745.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-08-05" fechaFin="2019-09-05"  saldoInicial="2751745.00" saldoFinal="5714358.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-09-05" fechaFin="2019-10-05"  saldoInicial="5714358.00" saldoFinal="1602446.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-10-05" fechaFin="2019-11-05"  saldoInicial="1602446.00" saldoFinal="4941729.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-11-05" fechaFin="2019-12-05"  saldoInicial="4941729.00" saldoFinal="8321092.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2019-12-05" fechaFin="2020-01-05"  saldoInicial="8321092.00" saldoFinal="1150916.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2020-01-05" fechaFin="2020-02-05"  saldoInicial="1150916.00" saldoFinal="2771867.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2020-02-05" fechaFin="2020-03-05"  saldoInicial="2771867.00" saldoFinal="4441606.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2020-03-05" fechaFin="2020-04-05"  saldoInicial="4441606.00" saldoFinal="4728017.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2020-04-05" fechaFin="2020-05-05"  saldoInicial="4728017.00" saldoFinal="7743156.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2020-05-05" fechaFin="2020-06-05"  saldoInicial="7743156.00" saldoFinal="406205.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2020-06-05" fechaFin="2020-07-05"  saldoInicial="406205.00" saldoFinal="1210911.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2020-07-05" fechaFin="2020-08-05"  saldoInicial="1210911.00" saldoFinal="8438168.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2020-08-05" fechaFin="2020-09-05"  saldoInicial="8438168.00" saldoFinal="1081887.00" />
    <Estado_de_Cuenta NumeroCuenta="11946763" fechaInicio="2020-09-05" fechaFin="2020-10-05"  saldoInicial="1081887.00" saldoFinal="1906148.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2015-05-25" fechaFin="2015-06-25"  saldoInicial="22462337.00" saldoFinal="5219696.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2015-06-25" fechaFin="2015-07-25"  saldoInicial="5219696.00" saldoFinal="1531717.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2015-07-25" fechaFin="2015-08-25"  saldoInicial="1531717.00" saldoFinal="4021411.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2015-08-25" fechaFin="2015-09-25"  saldoInicial="4021411.00" saldoFinal="8983495.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2015-09-25" fechaFin="2015-10-25"  saldoInicial="8983495.00" saldoFinal="5238919.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2015-10-25" fechaFin="2015-11-25"  saldoInicial="5238919.00" saldoFinal="2660732.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2015-11-25" fechaFin="2015-12-25"  saldoInicial="2660732.00" saldoFinal="4268964.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2015-12-25" fechaFin="2016-01-25"  saldoInicial="4268964.00" saldoFinal="3527974.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-01-25" fechaFin="2016-02-25"  saldoInicial="3527974.00" saldoFinal="7146613.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-02-25" fechaFin="2016-03-25"  saldoInicial="7146613.00" saldoFinal="8194307.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-03-25" fechaFin="2016-04-25"  saldoInicial="8194307.00" saldoFinal="8224570.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-04-25" fechaFin="2016-05-25"  saldoInicial="8224570.00" saldoFinal="854350.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-05-25" fechaFin="2016-06-25"  saldoInicial="854350.00" saldoFinal="5758609.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-06-25" fechaFin="2016-07-25"  saldoInicial="5758609.00" saldoFinal="3464515.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-07-25" fechaFin="2016-08-25"  saldoInicial="3464515.00" saldoFinal="4504575.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-08-25" fechaFin="2016-09-25"  saldoInicial="4504575.00" saldoFinal="8688274.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-09-25" fechaFin="2016-10-25"  saldoInicial="8688274.00" saldoFinal="6114725.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-10-25" fechaFin="2016-11-25"  saldoInicial="6114725.00" saldoFinal="7960400.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-11-25" fechaFin="2016-12-25"  saldoInicial="7960400.00" saldoFinal="87319.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2016-12-25" fechaFin="2017-01-25"  saldoInicial="87319.00" saldoFinal="2881963.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-01-25" fechaFin="2017-02-25"  saldoInicial="2881963.00" saldoFinal="2729113.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-02-25" fechaFin="2017-03-25"  saldoInicial="2729113.00" saldoFinal="3420019.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-03-25" fechaFin="2017-04-25"  saldoInicial="3420019.00" saldoFinal="6575922.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-04-25" fechaFin="2017-05-25"  saldoInicial="6575922.00" saldoFinal="884457.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-05-25" fechaFin="2017-06-25"  saldoInicial="884457.00" saldoFinal="1238535.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-06-25" fechaFin="2017-07-25"  saldoInicial="1238535.00" saldoFinal="3912336.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-07-25" fechaFin="2017-08-25"  saldoInicial="3912336.00" saldoFinal="4061030.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-08-25" fechaFin="2017-09-25"  saldoInicial="4061030.00" saldoFinal="2099740.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-09-25" fechaFin="2017-10-25"  saldoInicial="2099740.00" saldoFinal="7087336.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-10-25" fechaFin="2017-11-25"  saldoInicial="7087336.00" saldoFinal="583068.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-11-25" fechaFin="2017-12-25"  saldoInicial="583068.00" saldoFinal="4174737.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2017-12-25" fechaFin="2018-01-25"  saldoInicial="4174737.00" saldoFinal="2905910.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-01-25" fechaFin="2018-02-25"  saldoInicial="2905910.00" saldoFinal="8471437.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-02-25" fechaFin="2018-03-25"  saldoInicial="8471437.00" saldoFinal="1812935.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-03-25" fechaFin="2018-04-25"  saldoInicial="1812935.00" saldoFinal="5781083.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-04-25" fechaFin="2018-05-25"  saldoInicial="5781083.00" saldoFinal="3077930.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-05-25" fechaFin="2018-06-25"  saldoInicial="3077930.00" saldoFinal="5133627.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-06-25" fechaFin="2018-07-25"  saldoInicial="5133627.00" saldoFinal="7287008.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-07-25" fechaFin="2018-08-25"  saldoInicial="7287008.00" saldoFinal="5796274.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-08-25" fechaFin="2018-09-25"  saldoInicial="5796274.00" saldoFinal="7124856.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-09-25" fechaFin="2018-10-25"  saldoInicial="7124856.00" saldoFinal="7527200.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-10-25" fechaFin="2018-11-25"  saldoInicial="7527200.00" saldoFinal="2260262.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-11-25" fechaFin="2018-12-25"  saldoInicial="2260262.00" saldoFinal="8574223.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2018-12-25" fechaFin="2019-01-25"  saldoInicial="8574223.00" saldoFinal="3234034.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-01-25" fechaFin="2019-02-25"  saldoInicial="3234034.00" saldoFinal="8830409.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-02-25" fechaFin="2019-03-25"  saldoInicial="8830409.00" saldoFinal="4846214.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-03-25" fechaFin="2019-04-25"  saldoInicial="4846214.00" saldoFinal="5759877.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-04-25" fechaFin="2019-05-25"  saldoInicial="5759877.00" saldoFinal="3471477.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-05-25" fechaFin="2019-06-25"  saldoInicial="3471477.00" saldoFinal="5476194.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-06-25" fechaFin="2019-07-25"  saldoInicial="5476194.00" saldoFinal="3257105.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-07-25" fechaFin="2019-08-25"  saldoInicial="3257105.00" saldoFinal="6372387.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-08-25" fechaFin="2019-09-25"  saldoInicial="6372387.00" saldoFinal="2183377.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-09-25" fechaFin="2019-10-25"  saldoInicial="2183377.00" saldoFinal="3794000.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-10-25" fechaFin="2019-11-25"  saldoInicial="3794000.00" saldoFinal="2136387.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-11-25" fechaFin="2019-12-25"  saldoInicial="2136387.00" saldoFinal="2276726.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2019-12-25" fechaFin="2020-01-25"  saldoInicial="2276726.00" saldoFinal="5793273.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2020-01-25" fechaFin="2020-02-25"  saldoInicial="5793273.00" saldoFinal="4615136.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2020-02-25" fechaFin="2020-03-25"  saldoInicial="4615136.00" saldoFinal="5044794.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2020-03-25" fechaFin="2020-04-25"  saldoInicial="5044794.00" saldoFinal="7219439.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2020-04-25" fechaFin="2020-05-25"  saldoInicial="7219439.00" saldoFinal="721327.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2020-05-25" fechaFin="2020-06-25"  saldoInicial="721327.00" saldoFinal="8382640.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2020-06-25" fechaFin="2020-07-25"  saldoInicial="8382640.00" saldoFinal="5762869.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2020-07-25" fechaFin="2020-08-25"  saldoInicial="5762869.00" saldoFinal="3555950.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2020-08-25" fechaFin="2020-09-25"  saldoInicial="3555950.00" saldoFinal="853763.00" />
    <Estado_de_Cuenta NumeroCuenta="11164352" fechaInicio="2020-09-25" fechaFin="2020-10-25"  saldoInicial="853763.00" saldoFinal="195598.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2018-02-15" fechaFin="2018-03-15"  saldoInicial="81230932.00" saldoFinal="5807483.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2018-03-15" fechaFin="2018-04-15"  saldoInicial="5807483.00" saldoFinal="7809167.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2018-04-15" fechaFin="2018-05-15"  saldoInicial="7809167.00" saldoFinal="2437651.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2018-05-15" fechaFin="2018-06-15"  saldoInicial="2437651.00" saldoFinal="2882241.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2018-06-15" fechaFin="2018-07-15"  saldoInicial="2882241.00" saldoFinal="3638531.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2018-07-15" fechaFin="2018-08-15"  saldoInicial="3638531.00" saldoFinal="2103198.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2018-08-15" fechaFin="2018-09-15"  saldoInicial="2103198.00" saldoFinal="447570.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2018-09-15" fechaFin="2018-10-15"  saldoInicial="447570.00" saldoFinal="2579132.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2018-10-15" fechaFin="2018-11-15"  saldoInicial="2579132.00" saldoFinal="5522654.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2018-11-15" fechaFin="2018-12-15"  saldoInicial="5522654.00" saldoFinal="3699584.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2018-12-15" fechaFin="2019-01-15"  saldoInicial="3699584.00" saldoFinal="6693810.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-01-15" fechaFin="2019-02-15"  saldoInicial="6693810.00" saldoFinal="4849265.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-02-15" fechaFin="2019-03-15"  saldoInicial="4849265.00" saldoFinal="7539757.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-03-15" fechaFin="2019-04-15"  saldoInicial="7539757.00" saldoFinal="1459274.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-04-15" fechaFin="2019-05-15"  saldoInicial="1459274.00" saldoFinal="5734290.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-05-15" fechaFin="2019-06-15"  saldoInicial="5734290.00" saldoFinal="1073803.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-06-15" fechaFin="2019-07-15"  saldoInicial="1073803.00" saldoFinal="1252713.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-07-15" fechaFin="2019-08-15"  saldoInicial="1252713.00" saldoFinal="3090921.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-08-15" fechaFin="2019-09-15"  saldoInicial="3090921.00" saldoFinal="1260895.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-09-15" fechaFin="2019-10-15"  saldoInicial="1260895.00" saldoFinal="1838824.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-10-15" fechaFin="2019-11-15"  saldoInicial="1838824.00" saldoFinal="6652358.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-11-15" fechaFin="2019-12-15"  saldoInicial="6652358.00" saldoFinal="551897.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2019-12-15" fechaFin="2020-01-15"  saldoInicial="551897.00" saldoFinal="5732863.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2020-01-15" fechaFin="2020-02-15"  saldoInicial="5732863.00" saldoFinal="1939747.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2020-02-15" fechaFin="2020-03-15"  saldoInicial="1939747.00" saldoFinal="4017751.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2020-03-15" fechaFin="2020-04-15"  saldoInicial="4017751.00" saldoFinal="4682074.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2020-04-15" fechaFin="2020-05-15"  saldoInicial="4682074.00" saldoFinal="3818833.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2020-05-15" fechaFin="2020-06-15"  saldoInicial="3818833.00" saldoFinal="3864134.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2020-06-15" fechaFin="2020-07-15"  saldoInicial="3864134.00" saldoFinal="5167646.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2020-07-15" fechaFin="2020-08-15"  saldoInicial="5167646.00" saldoFinal="6988573.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2020-08-15" fechaFin="2020-09-15"  saldoInicial="6988573.00" saldoFinal="8947938.00" />
    <Estado_de_Cuenta NumeroCuenta="11271116" fechaInicio="2020-09-15" fechaFin="2020-10-15"  saldoInicial="8947938.00" saldoFinal="4552629.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2014-04-02" fechaFin="2014-05-02"  saldoInicial="13445239.00" saldoFinal="8963172.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2014-05-02" fechaFin="2014-06-02"  saldoInicial="8963172.00" saldoFinal="6183108.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2014-06-02" fechaFin="2014-07-02"  saldoInicial="6183108.00" saldoFinal="4788465.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2014-07-02" fechaFin="2014-08-02"  saldoInicial="4788465.00" saldoFinal="2508624.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2014-08-02" fechaFin="2014-09-02"  saldoInicial="2508624.00" saldoFinal="5102745.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2014-09-02" fechaFin="2014-10-02"  saldoInicial="5102745.00" saldoFinal="4008580.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2014-10-02" fechaFin="2014-11-02"  saldoInicial="4008580.00" saldoFinal="8929837.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2014-11-02" fechaFin="2014-12-02"  saldoInicial="8929837.00" saldoFinal="5303796.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2014-12-02" fechaFin="2015-01-02"  saldoInicial="5303796.00" saldoFinal="7953158.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-01-02" fechaFin="2015-02-02"  saldoInicial="7953158.00" saldoFinal="1384659.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-02-02" fechaFin="2015-03-02"  saldoInicial="1384659.00" saldoFinal="873736.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-03-02" fechaFin="2015-04-02"  saldoInicial="873736.00" saldoFinal="8251076.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-04-02" fechaFin="2015-05-02"  saldoInicial="8251076.00" saldoFinal="5851868.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-05-02" fechaFin="2015-06-02"  saldoInicial="5851868.00" saldoFinal="5195248.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-06-02" fechaFin="2015-07-02"  saldoInicial="5195248.00" saldoFinal="1328303.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-07-02" fechaFin="2015-08-02"  saldoInicial="1328303.00" saldoFinal="8814380.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-08-02" fechaFin="2015-09-02"  saldoInicial="8814380.00" saldoFinal="2713727.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-09-02" fechaFin="2015-10-02"  saldoInicial="2713727.00" saldoFinal="7707460.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-10-02" fechaFin="2015-11-02"  saldoInicial="7707460.00" saldoFinal="821946.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-11-02" fechaFin="2015-12-02"  saldoInicial="821946.00" saldoFinal="3730753.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2015-12-02" fechaFin="2016-01-02"  saldoInicial="3730753.00" saldoFinal="2438828.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-01-02" fechaFin="2016-02-02"  saldoInicial="2438828.00" saldoFinal="4187286.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-02-02" fechaFin="2016-03-02"  saldoInicial="4187286.00" saldoFinal="1887650.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-03-02" fechaFin="2016-04-02"  saldoInicial="1887650.00" saldoFinal="869955.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-04-02" fechaFin="2016-05-02"  saldoInicial="869955.00" saldoFinal="8610979.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-05-02" fechaFin="2016-06-02"  saldoInicial="8610979.00" saldoFinal="7383069.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-06-02" fechaFin="2016-07-02"  saldoInicial="7383069.00" saldoFinal="7194071.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-07-02" fechaFin="2016-08-02"  saldoInicial="7194071.00" saldoFinal="8552731.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-08-02" fechaFin="2016-09-02"  saldoInicial="8552731.00" saldoFinal="1372412.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-09-02" fechaFin="2016-10-02"  saldoInicial="1372412.00" saldoFinal="6337892.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-10-02" fechaFin="2016-11-02"  saldoInicial="6337892.00" saldoFinal="8628470.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-11-02" fechaFin="2016-12-02"  saldoInicial="8628470.00" saldoFinal="1689982.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2016-12-02" fechaFin="2017-01-02"  saldoInicial="1689982.00" saldoFinal="3818527.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-01-02" fechaFin="2017-02-02"  saldoInicial="3818527.00" saldoFinal="2729320.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-02-02" fechaFin="2017-03-02"  saldoInicial="2729320.00" saldoFinal="7946242.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-03-02" fechaFin="2017-04-02"  saldoInicial="7946242.00" saldoFinal="8148263.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-04-02" fechaFin="2017-05-02"  saldoInicial="8148263.00" saldoFinal="5603767.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-05-02" fechaFin="2017-06-02"  saldoInicial="5603767.00" saldoFinal="8191975.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-06-02" fechaFin="2017-07-02"  saldoInicial="8191975.00" saldoFinal="2146458.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-07-02" fechaFin="2017-08-02"  saldoInicial="2146458.00" saldoFinal="4492734.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-08-02" fechaFin="2017-09-02"  saldoInicial="4492734.00" saldoFinal="3938481.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-09-02" fechaFin="2017-10-02"  saldoInicial="3938481.00" saldoFinal="2674276.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-10-02" fechaFin="2017-11-02"  saldoInicial="2674276.00" saldoFinal="2295620.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-11-02" fechaFin="2017-12-02"  saldoInicial="2295620.00" saldoFinal="1188502.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2017-12-02" fechaFin="2018-01-02"  saldoInicial="1188502.00" saldoFinal="2427309.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-01-02" fechaFin="2018-02-02"  saldoInicial="2427309.00" saldoFinal="4984049.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-02-02" fechaFin="2018-03-02"  saldoInicial="4984049.00" saldoFinal="5475217.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-03-02" fechaFin="2018-04-02"  saldoInicial="5475217.00" saldoFinal="1256441.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-04-02" fechaFin="2018-05-02"  saldoInicial="1256441.00" saldoFinal="8521160.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-05-02" fechaFin="2018-06-02"  saldoInicial="8521160.00" saldoFinal="4002308.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-06-02" fechaFin="2018-07-02"  saldoInicial="4002308.00" saldoFinal="3864220.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-07-02" fechaFin="2018-08-02"  saldoInicial="3864220.00" saldoFinal="7323985.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-08-02" fechaFin="2018-09-02"  saldoInicial="7323985.00" saldoFinal="6065077.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-09-02" fechaFin="2018-10-02"  saldoInicial="6065077.00" saldoFinal="4769135.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-10-02" fechaFin="2018-11-02"  saldoInicial="4769135.00" saldoFinal="479310.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-11-02" fechaFin="2018-12-02"  saldoInicial="479310.00" saldoFinal="3609213.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2018-12-02" fechaFin="2019-01-02"  saldoInicial="3609213.00" saldoFinal="297020.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-01-02" fechaFin="2019-02-02"  saldoInicial="297020.00" saldoFinal="2071727.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-02-02" fechaFin="2019-03-02"  saldoInicial="2071727.00" saldoFinal="1322010.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-03-02" fechaFin="2019-04-02"  saldoInicial="1322010.00" saldoFinal="1551225.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-04-02" fechaFin="2019-05-02"  saldoInicial="1551225.00" saldoFinal="4087263.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-05-02" fechaFin="2019-06-02"  saldoInicial="4087263.00" saldoFinal="876995.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-06-02" fechaFin="2019-07-02"  saldoInicial="876995.00" saldoFinal="7214226.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-07-02" fechaFin="2019-08-02"  saldoInicial="7214226.00" saldoFinal="7624042.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-08-02" fechaFin="2019-09-02"  saldoInicial="7624042.00" saldoFinal="4395769.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-09-02" fechaFin="2019-10-02"  saldoInicial="4395769.00" saldoFinal="1741409.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-10-02" fechaFin="2019-11-02"  saldoInicial="1741409.00" saldoFinal="5885087.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-11-02" fechaFin="2019-12-02"  saldoInicial="5885087.00" saldoFinal="2231642.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2019-12-02" fechaFin="2020-01-02"  saldoInicial="2231642.00" saldoFinal="5026462.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2020-01-02" fechaFin="2020-02-02"  saldoInicial="5026462.00" saldoFinal="1614693.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2020-02-02" fechaFin="2020-03-02"  saldoInicial="1614693.00" saldoFinal="3713644.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2020-03-02" fechaFin="2020-04-02"  saldoInicial="3713644.00" saldoFinal="2859036.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2020-04-02" fechaFin="2020-05-02"  saldoInicial="2859036.00" saldoFinal="8834455.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2020-05-02" fechaFin="2020-06-02"  saldoInicial="8834455.00" saldoFinal="8712236.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2020-06-02" fechaFin="2020-07-02"  saldoInicial="8712236.00" saldoFinal="865936.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2020-07-02" fechaFin="2020-08-02"  saldoInicial="865936.00" saldoFinal="4660274.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2020-08-02" fechaFin="2020-09-02"  saldoInicial="4660274.00" saldoFinal="1430036.00" />
    <Estado_de_Cuenta NumeroCuenta="11911212" fechaInicio="2020-09-02" fechaFin="2020-10-02"  saldoInicial="1430036.00" saldoFinal="8030850.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2015-09-05" fechaFin="2015-10-05"  saldoInicial="43382699.00" saldoFinal="4482042.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2015-10-05" fechaFin="2015-11-05"  saldoInicial="4482042.00" saldoFinal="2937820.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2015-11-05" fechaFin="2015-12-05"  saldoInicial="2937820.00" saldoFinal="7253633.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2015-12-05" fechaFin="2016-01-05"  saldoInicial="7253633.00" saldoFinal="6451388.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-01-05" fechaFin="2016-02-05"  saldoInicial="6451388.00" saldoFinal="3358596.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-02-05" fechaFin="2016-03-05"  saldoInicial="3358596.00" saldoFinal="6939196.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-03-05" fechaFin="2016-04-05"  saldoInicial="6939196.00" saldoFinal="6070798.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-04-05" fechaFin="2016-05-05"  saldoInicial="6070798.00" saldoFinal="4179090.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-05-05" fechaFin="2016-06-05"  saldoInicial="4179090.00" saldoFinal="1708785.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-06-05" fechaFin="2016-07-05"  saldoInicial="1708785.00" saldoFinal="4499698.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-07-05" fechaFin="2016-08-05"  saldoInicial="4499698.00" saldoFinal="4946075.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-08-05" fechaFin="2016-09-05"  saldoInicial="4946075.00" saldoFinal="1253062.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-09-05" fechaFin="2016-10-05"  saldoInicial="1253062.00" saldoFinal="1855206.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-10-05" fechaFin="2016-11-05"  saldoInicial="1855206.00" saldoFinal="3211690.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-11-05" fechaFin="2016-12-05"  saldoInicial="3211690.00" saldoFinal="8744946.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2016-12-05" fechaFin="2017-01-05"  saldoInicial="8744946.00" saldoFinal="4448497.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-01-05" fechaFin="2017-02-05"  saldoInicial="4448497.00" saldoFinal="2969605.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-02-05" fechaFin="2017-03-05"  saldoInicial="2969605.00" saldoFinal="4965732.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-03-05" fechaFin="2017-04-05"  saldoInicial="4965732.00" saldoFinal="8811586.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-04-05" fechaFin="2017-05-05"  saldoInicial="8811586.00" saldoFinal="2138641.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-05-05" fechaFin="2017-06-05"  saldoInicial="2138641.00" saldoFinal="6343306.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-06-05" fechaFin="2017-07-05"  saldoInicial="6343306.00" saldoFinal="7332019.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-07-05" fechaFin="2017-08-05"  saldoInicial="7332019.00" saldoFinal="1096141.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-08-05" fechaFin="2017-09-05"  saldoInicial="1096141.00" saldoFinal="2495209.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-09-05" fechaFin="2017-10-05"  saldoInicial="2495209.00" saldoFinal="1295730.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-10-05" fechaFin="2017-11-05"  saldoInicial="1295730.00" saldoFinal="8148038.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-11-05" fechaFin="2017-12-05"  saldoInicial="8148038.00" saldoFinal="1845229.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2017-12-05" fechaFin="2018-01-05"  saldoInicial="1845229.00" saldoFinal="1665739.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-01-05" fechaFin="2018-02-05"  saldoInicial="1665739.00" saldoFinal="6846273.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-02-05" fechaFin="2018-03-05"  saldoInicial="6846273.00" saldoFinal="4911017.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-03-05" fechaFin="2018-04-05"  saldoInicial="4911017.00" saldoFinal="8626748.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-04-05" fechaFin="2018-05-05"  saldoInicial="8626748.00" saldoFinal="3531697.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-05-05" fechaFin="2018-06-05"  saldoInicial="3531697.00" saldoFinal="7894813.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-06-05" fechaFin="2018-07-05"  saldoInicial="7894813.00" saldoFinal="2933073.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-07-05" fechaFin="2018-08-05"  saldoInicial="2933073.00" saldoFinal="564937.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-08-05" fechaFin="2018-09-05"  saldoInicial="564937.00" saldoFinal="2544935.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-09-05" fechaFin="2018-10-05"  saldoInicial="2544935.00" saldoFinal="4128669.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-10-05" fechaFin="2018-11-05"  saldoInicial="4128669.00" saldoFinal="8168660.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-11-05" fechaFin="2018-12-05"  saldoInicial="8168660.00" saldoFinal="8054217.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2018-12-05" fechaFin="2019-01-05"  saldoInicial="8054217.00" saldoFinal="5179447.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-01-05" fechaFin="2019-02-05"  saldoInicial="5179447.00" saldoFinal="5878244.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-02-05" fechaFin="2019-03-05"  saldoInicial="5878244.00" saldoFinal="3253545.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-03-05" fechaFin="2019-04-05"  saldoInicial="3253545.00" saldoFinal="7198763.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-04-05" fechaFin="2019-05-05"  saldoInicial="7198763.00" saldoFinal="7638986.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-05-05" fechaFin="2019-06-05"  saldoInicial="7638986.00" saldoFinal="363413.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-06-05" fechaFin="2019-07-05"  saldoInicial="363413.00" saldoFinal="1419139.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-07-05" fechaFin="2019-08-05"  saldoInicial="1419139.00" saldoFinal="6962164.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-08-05" fechaFin="2019-09-05"  saldoInicial="6962164.00" saldoFinal="268831.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-09-05" fechaFin="2019-10-05"  saldoInicial="268831.00" saldoFinal="8502404.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-10-05" fechaFin="2019-11-05"  saldoInicial="8502404.00" saldoFinal="8205155.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-11-05" fechaFin="2019-12-05"  saldoInicial="8205155.00" saldoFinal="3880883.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2019-12-05" fechaFin="2020-01-05"  saldoInicial="3880883.00" saldoFinal="1816400.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2020-01-05" fechaFin="2020-02-05"  saldoInicial="1816400.00" saldoFinal="3605556.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2020-02-05" fechaFin="2020-03-05"  saldoInicial="3605556.00" saldoFinal="4642095.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2020-03-05" fechaFin="2020-04-05"  saldoInicial="4642095.00" saldoFinal="1348284.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2020-04-05" fechaFin="2020-05-05"  saldoInicial="1348284.00" saldoFinal="1005163.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2020-05-05" fechaFin="2020-06-05"  saldoInicial="1005163.00" saldoFinal="2097836.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2020-06-05" fechaFin="2020-07-05"  saldoInicial="2097836.00" saldoFinal="8168884.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2020-07-05" fechaFin="2020-08-05"  saldoInicial="8168884.00" saldoFinal="950240.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2020-08-05" fechaFin="2020-09-05"  saldoInicial="950240.00" saldoFinal="6898916.00" />
    <Estado_de_Cuenta NumeroCuenta="11231182" fechaInicio="2020-09-05" fechaFin="2020-10-05"  saldoInicial="6898916.00" saldoFinal="8579617.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2011-05-28" fechaFin="2011-06-28"  saldoInicial="26660696.00" saldoFinal="4916774.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2011-06-28" fechaFin="2011-07-28"  saldoInicial="4916774.00" saldoFinal="8815864.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2011-07-28" fechaFin="2011-08-28"  saldoInicial="8815864.00" saldoFinal="2311369.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2011-08-28" fechaFin="2011-09-28"  saldoInicial="2311369.00" saldoFinal="8499632.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2011-09-28" fechaFin="2011-10-28"  saldoInicial="8499632.00" saldoFinal="6701838.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2011-10-28" fechaFin="2011-11-28"  saldoInicial="6701838.00" saldoFinal="3204559.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2011-11-28" fechaFin="2011-12-28"  saldoInicial="3204559.00" saldoFinal="6942494.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2011-12-28" fechaFin="2012-01-28"  saldoInicial="6942494.00" saldoFinal="4547494.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-01-28" fechaFin="2012-02-28"  saldoInicial="4547494.00" saldoFinal="2003513.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-02-28" fechaFin="2012-03-28"  saldoInicial="2003513.00" saldoFinal="4062412.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-03-28" fechaFin="2012-04-28"  saldoInicial="4062412.00" saldoFinal="6917307.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-04-28" fechaFin="2012-05-28"  saldoInicial="6917307.00" saldoFinal="5716417.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-05-28" fechaFin="2012-06-28"  saldoInicial="5716417.00" saldoFinal="1693913.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-06-28" fechaFin="2012-07-28"  saldoInicial="1693913.00" saldoFinal="700908.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-07-28" fechaFin="2012-08-28"  saldoInicial="700908.00" saldoFinal="7598243.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-08-28" fechaFin="2012-09-28"  saldoInicial="7598243.00" saldoFinal="2883547.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-09-28" fechaFin="2012-10-28"  saldoInicial="2883547.00" saldoFinal="5800669.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-10-28" fechaFin="2012-11-28"  saldoInicial="5800669.00" saldoFinal="347891.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-11-28" fechaFin="2012-12-28"  saldoInicial="347891.00" saldoFinal="1346424.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2012-12-28" fechaFin="2013-01-28"  saldoInicial="1346424.00" saldoFinal="5511389.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-01-28" fechaFin="2013-02-28"  saldoInicial="5511389.00" saldoFinal="2928452.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-02-28" fechaFin="2013-03-28"  saldoInicial="2928452.00" saldoFinal="4713434.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-03-28" fechaFin="2013-04-28"  saldoInicial="4713434.00" saldoFinal="5660800.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-04-28" fechaFin="2013-05-28"  saldoInicial="5660800.00" saldoFinal="3620218.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-05-28" fechaFin="2013-06-28"  saldoInicial="3620218.00" saldoFinal="7817504.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-06-28" fechaFin="2013-07-28"  saldoInicial="7817504.00" saldoFinal="6312374.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-07-28" fechaFin="2013-08-28"  saldoInicial="6312374.00" saldoFinal="1793790.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-08-28" fechaFin="2013-09-28"  saldoInicial="1793790.00" saldoFinal="7787531.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-09-28" fechaFin="2013-10-28"  saldoInicial="7787531.00" saldoFinal="2011803.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-10-28" fechaFin="2013-11-28"  saldoInicial="2011803.00" saldoFinal="1922851.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-11-28" fechaFin="2013-12-28"  saldoInicial="1922851.00" saldoFinal="3042029.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2013-12-28" fechaFin="2014-01-28"  saldoInicial="3042029.00" saldoFinal="6764383.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-01-28" fechaFin="2014-02-28"  saldoInicial="6764383.00" saldoFinal="1216894.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-02-28" fechaFin="2014-03-28"  saldoInicial="1216894.00" saldoFinal="7957131.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-03-28" fechaFin="2014-04-28"  saldoInicial="7957131.00" saldoFinal="1668826.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-04-28" fechaFin="2014-05-28"  saldoInicial="1668826.00" saldoFinal="7206650.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-05-28" fechaFin="2014-06-28"  saldoInicial="7206650.00" saldoFinal="1904577.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-06-28" fechaFin="2014-07-28"  saldoInicial="1904577.00" saldoFinal="1397652.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-07-28" fechaFin="2014-08-28"  saldoInicial="1397652.00" saldoFinal="3679373.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-08-28" fechaFin="2014-09-28"  saldoInicial="3679373.00" saldoFinal="5915594.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-09-28" fechaFin="2014-10-28"  saldoInicial="5915594.00" saldoFinal="7505114.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-10-28" fechaFin="2014-11-28"  saldoInicial="7505114.00" saldoFinal="4426356.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-11-28" fechaFin="2014-12-28"  saldoInicial="4426356.00" saldoFinal="3383265.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2014-12-28" fechaFin="2015-01-28"  saldoInicial="3383265.00" saldoFinal="566580.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-01-28" fechaFin="2015-02-28"  saldoInicial="566580.00" saldoFinal="2387774.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-02-28" fechaFin="2015-03-28"  saldoInicial="2387774.00" saldoFinal="3209681.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-03-28" fechaFin="2015-04-28"  saldoInicial="3209681.00" saldoFinal="5249873.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-04-28" fechaFin="2015-05-28"  saldoInicial="5249873.00" saldoFinal="5152574.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-05-28" fechaFin="2015-06-28"  saldoInicial="5152574.00" saldoFinal="3596187.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-06-28" fechaFin="2015-07-28"  saldoInicial="3596187.00" saldoFinal="8112757.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-07-28" fechaFin="2015-08-28"  saldoInicial="8112757.00" saldoFinal="5821702.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-08-28" fechaFin="2015-09-28"  saldoInicial="5821702.00" saldoFinal="7340105.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-09-28" fechaFin="2015-10-28"  saldoInicial="7340105.00" saldoFinal="6882585.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-10-28" fechaFin="2015-11-28"  saldoInicial="6882585.00" saldoFinal="3108405.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-11-28" fechaFin="2015-12-28"  saldoInicial="3108405.00" saldoFinal="8533526.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2015-12-28" fechaFin="2016-01-28"  saldoInicial="8533526.00" saldoFinal="8980906.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-01-28" fechaFin="2016-02-28"  saldoInicial="8980906.00" saldoFinal="4640397.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-02-28" fechaFin="2016-03-28"  saldoInicial="4640397.00" saldoFinal="5808599.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-03-28" fechaFin="2016-04-28"  saldoInicial="5808599.00" saldoFinal="225244.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-04-28" fechaFin="2016-05-28"  saldoInicial="225244.00" saldoFinal="1549511.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-05-28" fechaFin="2016-06-28"  saldoInicial="1549511.00" saldoFinal="2268762.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-06-28" fechaFin="2016-07-28"  saldoInicial="2268762.00" saldoFinal="4746208.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-07-28" fechaFin="2016-08-28"  saldoInicial="4746208.00" saldoFinal="6531040.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-08-28" fechaFin="2016-09-28"  saldoInicial="6531040.00" saldoFinal="934737.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-09-28" fechaFin="2016-10-28"  saldoInicial="934737.00" saldoFinal="817829.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-10-28" fechaFin="2016-11-28"  saldoInicial="817829.00" saldoFinal="5980291.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-11-28" fechaFin="2016-12-28"  saldoInicial="5980291.00" saldoFinal="335944.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2016-12-28" fechaFin="2017-01-28"  saldoInicial="335944.00" saldoFinal="1900297.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-01-28" fechaFin="2017-02-28"  saldoInicial="1900297.00" saldoFinal="7817708.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-02-28" fechaFin="2017-03-28"  saldoInicial="7817708.00" saldoFinal="1829641.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-03-28" fechaFin="2017-04-28"  saldoInicial="1829641.00" saldoFinal="7190757.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-04-28" fechaFin="2017-05-28"  saldoInicial="7190757.00" saldoFinal="4802244.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-05-28" fechaFin="2017-06-28"  saldoInicial="4802244.00" saldoFinal="627989.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-06-28" fechaFin="2017-07-28"  saldoInicial="627989.00" saldoFinal="2669418.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-07-28" fechaFin="2017-08-28"  saldoInicial="2669418.00" saldoFinal="7066250.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-08-28" fechaFin="2017-09-28"  saldoInicial="7066250.00" saldoFinal="3294443.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-09-28" fechaFin="2017-10-28"  saldoInicial="3294443.00" saldoFinal="4668423.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-10-28" fechaFin="2017-11-28"  saldoInicial="4668423.00" saldoFinal="6432420.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-11-28" fechaFin="2017-12-28"  saldoInicial="6432420.00" saldoFinal="5927563.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2017-12-28" fechaFin="2018-01-28"  saldoInicial="5927563.00" saldoFinal="3058632.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-01-28" fechaFin="2018-02-28"  saldoInicial="3058632.00" saldoFinal="2726022.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-02-28" fechaFin="2018-03-28"  saldoInicial="2726022.00" saldoFinal="4426941.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-03-28" fechaFin="2018-04-28"  saldoInicial="4426941.00" saldoFinal="6362916.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-04-28" fechaFin="2018-05-28"  saldoInicial="6362916.00" saldoFinal="3354218.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-05-28" fechaFin="2018-06-28"  saldoInicial="3354218.00" saldoFinal="5027550.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-06-28" fechaFin="2018-07-28"  saldoInicial="5027550.00" saldoFinal="5868859.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-07-28" fechaFin="2018-08-28"  saldoInicial="5868859.00" saldoFinal="5800920.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-08-28" fechaFin="2018-09-28"  saldoInicial="5800920.00" saldoFinal="5785395.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-09-28" fechaFin="2018-10-28"  saldoInicial="5785395.00" saldoFinal="4763374.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-10-28" fechaFin="2018-11-28"  saldoInicial="4763374.00" saldoFinal="1523507.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-11-28" fechaFin="2018-12-28"  saldoInicial="1523507.00" saldoFinal="6628758.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2018-12-28" fechaFin="2019-01-28"  saldoInicial="6628758.00" saldoFinal="8363890.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-01-28" fechaFin="2019-02-28"  saldoInicial="8363890.00" saldoFinal="6383914.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-02-28" fechaFin="2019-03-28"  saldoInicial="6383914.00" saldoFinal="8423551.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-03-28" fechaFin="2019-04-28"  saldoInicial="8423551.00" saldoFinal="3358531.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-04-28" fechaFin="2019-05-28"  saldoInicial="3358531.00" saldoFinal="5713781.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-05-28" fechaFin="2019-06-28"  saldoInicial="5713781.00" saldoFinal="525508.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-06-28" fechaFin="2019-07-28"  saldoInicial="525508.00" saldoFinal="2403535.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-07-28" fechaFin="2019-08-28"  saldoInicial="2403535.00" saldoFinal="90345.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-08-28" fechaFin="2019-09-28"  saldoInicial="90345.00" saldoFinal="7217778.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-09-28" fechaFin="2019-10-28"  saldoInicial="7217778.00" saldoFinal="3340195.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-10-28" fechaFin="2019-11-28"  saldoInicial="3340195.00" saldoFinal="2365769.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-11-28" fechaFin="2019-12-28"  saldoInicial="2365769.00" saldoFinal="3198578.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2019-12-28" fechaFin="2020-01-28"  saldoInicial="3198578.00" saldoFinal="3724189.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2020-01-28" fechaFin="2020-02-28"  saldoInicial="3724189.00" saldoFinal="1888738.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2020-02-28" fechaFin="2020-03-28"  saldoInicial="1888738.00" saldoFinal="7236481.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2020-03-28" fechaFin="2020-04-28"  saldoInicial="7236481.00" saldoFinal="4082951.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2020-04-28" fechaFin="2020-05-28"  saldoInicial="4082951.00" saldoFinal="4841429.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2020-05-28" fechaFin="2020-06-28"  saldoInicial="4841429.00" saldoFinal="8262746.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2020-06-28" fechaFin="2020-07-28"  saldoInicial="8262746.00" saldoFinal="5697560.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2020-07-28" fechaFin="2020-08-28"  saldoInicial="5697560.00" saldoFinal="2625347.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2020-08-28" fechaFin="2020-09-28"  saldoInicial="2625347.00" saldoFinal="6043503.00" />
    <Estado_de_Cuenta NumeroCuenta="11887844" fechaInicio="2020-09-28" fechaFin="2020-10-28"  saldoInicial="6043503.00" saldoFinal="7761515.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2016-04-08" fechaFin="2016-05-08"  saldoInicial="65039711.00" saldoFinal="7091904.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2016-05-08" fechaFin="2016-06-08"  saldoInicial="7091904.00" saldoFinal="910288.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2016-06-08" fechaFin="2016-07-08"  saldoInicial="910288.00" saldoFinal="6847926.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2016-07-08" fechaFin="2016-08-08"  saldoInicial="6847926.00" saldoFinal="2808198.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2016-08-08" fechaFin="2016-09-08"  saldoInicial="2808198.00" saldoFinal="5105562.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2016-09-08" fechaFin="2016-10-08"  saldoInicial="5105562.00" saldoFinal="3475028.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2016-10-08" fechaFin="2016-11-08"  saldoInicial="3475028.00" saldoFinal="5952164.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2016-11-08" fechaFin="2016-12-08"  saldoInicial="5952164.00" saldoFinal="6796713.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2016-12-08" fechaFin="2017-01-08"  saldoInicial="6796713.00" saldoFinal="4949844.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-01-08" fechaFin="2017-02-08"  saldoInicial="4949844.00" saldoFinal="8125231.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-02-08" fechaFin="2017-03-08"  saldoInicial="8125231.00" saldoFinal="4419510.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-03-08" fechaFin="2017-04-08"  saldoInicial="4419510.00" saldoFinal="5421564.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-04-08" fechaFin="2017-05-08"  saldoInicial="5421564.00" saldoFinal="8110365.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-05-08" fechaFin="2017-06-08"  saldoInicial="8110365.00" saldoFinal="5511320.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-06-08" fechaFin="2017-07-08"  saldoInicial="5511320.00" saldoFinal="5429465.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-07-08" fechaFin="2017-08-08"  saldoInicial="5429465.00" saldoFinal="8122914.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-08-08" fechaFin="2017-09-08"  saldoInicial="8122914.00" saldoFinal="1841732.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-09-08" fechaFin="2017-10-08"  saldoInicial="1841732.00" saldoFinal="4803282.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-10-08" fechaFin="2017-11-08"  saldoInicial="4803282.00" saldoFinal="6214966.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-11-08" fechaFin="2017-12-08"  saldoInicial="6214966.00" saldoFinal="1097864.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2017-12-08" fechaFin="2018-01-08"  saldoInicial="1097864.00" saldoFinal="7390739.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-01-08" fechaFin="2018-02-08"  saldoInicial="7390739.00" saldoFinal="7065778.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-02-08" fechaFin="2018-03-08"  saldoInicial="7065778.00" saldoFinal="1594353.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-03-08" fechaFin="2018-04-08"  saldoInicial="1594353.00" saldoFinal="5008907.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-04-08" fechaFin="2018-05-08"  saldoInicial="5008907.00" saldoFinal="4574493.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-05-08" fechaFin="2018-06-08"  saldoInicial="4574493.00" saldoFinal="354172.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-06-08" fechaFin="2018-07-08"  saldoInicial="354172.00" saldoFinal="406820.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-07-08" fechaFin="2018-08-08"  saldoInicial="406820.00" saldoFinal="7329463.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-08-08" fechaFin="2018-09-08"  saldoInicial="7329463.00" saldoFinal="6885664.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-09-08" fechaFin="2018-10-08"  saldoInicial="6885664.00" saldoFinal="8807924.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-10-08" fechaFin="2018-11-08"  saldoInicial="8807924.00" saldoFinal="6622007.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-11-08" fechaFin="2018-12-08"  saldoInicial="6622007.00" saldoFinal="7147290.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2018-12-08" fechaFin="2019-01-08"  saldoInicial="7147290.00" saldoFinal="6609497.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-01-08" fechaFin="2019-02-08"  saldoInicial="6609497.00" saldoFinal="584342.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-02-08" fechaFin="2019-03-08"  saldoInicial="584342.00" saldoFinal="6852338.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-03-08" fechaFin="2019-04-08"  saldoInicial="6852338.00" saldoFinal="467824.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-04-08" fechaFin="2019-05-08"  saldoInicial="467824.00" saldoFinal="3517880.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-05-08" fechaFin="2019-06-08"  saldoInicial="3517880.00" saldoFinal="6391753.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-06-08" fechaFin="2019-07-08"  saldoInicial="6391753.00" saldoFinal="8718162.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-07-08" fechaFin="2019-08-08"  saldoInicial="8718162.00" saldoFinal="4695530.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-08-08" fechaFin="2019-09-08"  saldoInicial="4695530.00" saldoFinal="7538932.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-09-08" fechaFin="2019-10-08"  saldoInicial="7538932.00" saldoFinal="6946588.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-10-08" fechaFin="2019-11-08"  saldoInicial="6946588.00" saldoFinal="2994329.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-11-08" fechaFin="2019-12-08"  saldoInicial="2994329.00" saldoFinal="6821186.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2019-12-08" fechaFin="2020-01-08"  saldoInicial="6821186.00" saldoFinal="2199386.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2020-01-08" fechaFin="2020-02-08"  saldoInicial="2199386.00" saldoFinal="2902500.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2020-02-08" fechaFin="2020-03-08"  saldoInicial="2902500.00" saldoFinal="1024450.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2020-03-08" fechaFin="2020-04-08"  saldoInicial="1024450.00" saldoFinal="1786582.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2020-04-08" fechaFin="2020-05-08"  saldoInicial="1786582.00" saldoFinal="8275459.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2020-05-08" fechaFin="2020-06-08"  saldoInicial="8275459.00" saldoFinal="6517519.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2020-06-08" fechaFin="2020-07-08"  saldoInicial="6517519.00" saldoFinal="3656817.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2020-07-08" fechaFin="2020-08-08"  saldoInicial="3656817.00" saldoFinal="8681906.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2020-08-08" fechaFin="2020-09-08"  saldoInicial="8681906.00" saldoFinal="5400835.00" />
    <Estado_de_Cuenta NumeroCuenta="11718078" fechaInicio="2020-09-08" fechaFin="2020-10-08"  saldoInicial="5400835.00" saldoFinal="4381166.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2013-09-14" fechaFin="2013-10-14"  saldoInicial="59633911.00" saldoFinal="8262290.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2013-10-14" fechaFin="2013-11-14"  saldoInicial="8262290.00" saldoFinal="4320592.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2013-11-14" fechaFin="2013-12-14"  saldoInicial="4320592.00" saldoFinal="4102739.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2013-12-14" fechaFin="2014-01-14"  saldoInicial="4102739.00" saldoFinal="1140350.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-01-14" fechaFin="2014-02-14"  saldoInicial="1140350.00" saldoFinal="1296560.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-02-14" fechaFin="2014-03-14"  saldoInicial="1296560.00" saldoFinal="3969337.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-03-14" fechaFin="2014-04-14"  saldoInicial="3969337.00" saldoFinal="7917343.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-04-14" fechaFin="2014-05-14"  saldoInicial="7917343.00" saldoFinal="6346529.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-05-14" fechaFin="2014-06-14"  saldoInicial="6346529.00" saldoFinal="8930129.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-06-14" fechaFin="2014-07-14"  saldoInicial="8930129.00" saldoFinal="724334.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-07-14" fechaFin="2014-08-14"  saldoInicial="724334.00" saldoFinal="4044956.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-08-14" fechaFin="2014-09-14"  saldoInicial="4044956.00" saldoFinal="2973402.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-09-14" fechaFin="2014-10-14"  saldoInicial="2973402.00" saldoFinal="343898.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-10-14" fechaFin="2014-11-14"  saldoInicial="343898.00" saldoFinal="4257723.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-11-14" fechaFin="2014-12-14"  saldoInicial="4257723.00" saldoFinal="4190002.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2014-12-14" fechaFin="2015-01-14"  saldoInicial="4190002.00" saldoFinal="7798470.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-01-14" fechaFin="2015-02-14"  saldoInicial="7798470.00" saldoFinal="4533843.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-02-14" fechaFin="2015-03-14"  saldoInicial="4533843.00" saldoFinal="5535599.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-03-14" fechaFin="2015-04-14"  saldoInicial="5535599.00" saldoFinal="5649678.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-04-14" fechaFin="2015-05-14"  saldoInicial="5649678.00" saldoFinal="6780528.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-05-14" fechaFin="2015-06-14"  saldoInicial="6780528.00" saldoFinal="601754.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-06-14" fechaFin="2015-07-14"  saldoInicial="601754.00" saldoFinal="4529650.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-07-14" fechaFin="2015-08-14"  saldoInicial="4529650.00" saldoFinal="3685519.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-08-14" fechaFin="2015-09-14"  saldoInicial="3685519.00" saldoFinal="4765649.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-09-14" fechaFin="2015-10-14"  saldoInicial="4765649.00" saldoFinal="5929896.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-10-14" fechaFin="2015-11-14"  saldoInicial="5929896.00" saldoFinal="7298017.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-11-14" fechaFin="2015-12-14"  saldoInicial="7298017.00" saldoFinal="7279705.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2015-12-14" fechaFin="2016-01-14"  saldoInicial="7279705.00" saldoFinal="6045399.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-01-14" fechaFin="2016-02-14"  saldoInicial="6045399.00" saldoFinal="8164428.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-02-14" fechaFin="2016-03-14"  saldoInicial="8164428.00" saldoFinal="2913487.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-03-14" fechaFin="2016-04-14"  saldoInicial="2913487.00" saldoFinal="311611.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-04-14" fechaFin="2016-05-14"  saldoInicial="311611.00" saldoFinal="7276517.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-05-14" fechaFin="2016-06-14"  saldoInicial="7276517.00" saldoFinal="4959854.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-06-14" fechaFin="2016-07-14"  saldoInicial="4959854.00" saldoFinal="6128040.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-07-14" fechaFin="2016-08-14"  saldoInicial="6128040.00" saldoFinal="245309.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-08-14" fechaFin="2016-09-14"  saldoInicial="245309.00" saldoFinal="2810727.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-09-14" fechaFin="2016-10-14"  saldoInicial="2810727.00" saldoFinal="2154169.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-10-14" fechaFin="2016-11-14"  saldoInicial="2154169.00" saldoFinal="4195969.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-11-14" fechaFin="2016-12-14"  saldoInicial="4195969.00" saldoFinal="7485102.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2016-12-14" fechaFin="2017-01-14"  saldoInicial="7485102.00" saldoFinal="4093945.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-01-14" fechaFin="2017-02-14"  saldoInicial="4093945.00" saldoFinal="8316325.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-02-14" fechaFin="2017-03-14"  saldoInicial="8316325.00" saldoFinal="4066422.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-03-14" fechaFin="2017-04-14"  saldoInicial="4066422.00" saldoFinal="5785.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-04-14" fechaFin="2017-05-14"  saldoInicial="5785.00" saldoFinal="8126393.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-05-14" fechaFin="2017-06-14"  saldoInicial="8126393.00" saldoFinal="8163436.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-06-14" fechaFin="2017-07-14"  saldoInicial="8163436.00" saldoFinal="749659.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-07-14" fechaFin="2017-08-14"  saldoInicial="749659.00" saldoFinal="1847959.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-08-14" fechaFin="2017-09-14"  saldoInicial="1847959.00" saldoFinal="617033.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-09-14" fechaFin="2017-10-14"  saldoInicial="617033.00" saldoFinal="6589825.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-10-14" fechaFin="2017-11-14"  saldoInicial="6589825.00" saldoFinal="7713516.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-11-14" fechaFin="2017-12-14"  saldoInicial="7713516.00" saldoFinal="1394200.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2017-12-14" fechaFin="2018-01-14"  saldoInicial="1394200.00" saldoFinal="5629127.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-01-14" fechaFin="2018-02-14"  saldoInicial="5629127.00" saldoFinal="5603141.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-02-14" fechaFin="2018-03-14"  saldoInicial="5603141.00" saldoFinal="7426240.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-03-14" fechaFin="2018-04-14"  saldoInicial="7426240.00" saldoFinal="6209596.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-04-14" fechaFin="2018-05-14"  saldoInicial="6209596.00" saldoFinal="1351963.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-05-14" fechaFin="2018-06-14"  saldoInicial="1351963.00" saldoFinal="3512958.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-06-14" fechaFin="2018-07-14"  saldoInicial="3512958.00" saldoFinal="5208635.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-07-14" fechaFin="2018-08-14"  saldoInicial="5208635.00" saldoFinal="5613642.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-08-14" fechaFin="2018-09-14"  saldoInicial="5613642.00" saldoFinal="3232392.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-09-14" fechaFin="2018-10-14"  saldoInicial="3232392.00" saldoFinal="8588358.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-10-14" fechaFin="2018-11-14"  saldoInicial="8588358.00" saldoFinal="5969569.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-11-14" fechaFin="2018-12-14"  saldoInicial="5969569.00" saldoFinal="2946046.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2018-12-14" fechaFin="2019-01-14"  saldoInicial="2946046.00" saldoFinal="8697359.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-01-14" fechaFin="2019-02-14"  saldoInicial="8697359.00" saldoFinal="3782726.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-02-14" fechaFin="2019-03-14"  saldoInicial="3782726.00" saldoFinal="6055103.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-03-14" fechaFin="2019-04-14"  saldoInicial="6055103.00" saldoFinal="8278206.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-04-14" fechaFin="2019-05-14"  saldoInicial="8278206.00" saldoFinal="2974758.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-05-14" fechaFin="2019-06-14"  saldoInicial="2974758.00" saldoFinal="1666554.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-06-14" fechaFin="2019-07-14"  saldoInicial="1666554.00" saldoFinal="970738.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-07-14" fechaFin="2019-08-14"  saldoInicial="970738.00" saldoFinal="6710875.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-08-14" fechaFin="2019-09-14"  saldoInicial="6710875.00" saldoFinal="3993115.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-09-14" fechaFin="2019-10-14"  saldoInicial="3993115.00" saldoFinal="3151039.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-10-14" fechaFin="2019-11-14"  saldoInicial="3151039.00" saldoFinal="7890322.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-11-14" fechaFin="2019-12-14"  saldoInicial="7890322.00" saldoFinal="4409847.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2019-12-14" fechaFin="2020-01-14"  saldoInicial="4409847.00" saldoFinal="3327395.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2020-01-14" fechaFin="2020-02-14"  saldoInicial="3327395.00" saldoFinal="2510460.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2020-02-14" fechaFin="2020-03-14"  saldoInicial="2510460.00" saldoFinal="6359511.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2020-03-14" fechaFin="2020-04-14"  saldoInicial="6359511.00" saldoFinal="5469842.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2020-04-14" fechaFin="2020-05-14"  saldoInicial="5469842.00" saldoFinal="313453.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2020-05-14" fechaFin="2020-06-14"  saldoInicial="313453.00" saldoFinal="7822369.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2020-06-14" fechaFin="2020-07-14"  saldoInicial="7822369.00" saldoFinal="751415.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2020-07-14" fechaFin="2020-08-14"  saldoInicial="751415.00" saldoFinal="1142345.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2020-08-14" fechaFin="2020-09-14"  saldoInicial="1142345.00" saldoFinal="3880592.00" />
    <Estado_de_Cuenta NumeroCuenta="11743285" fechaInicio="2020-09-14" fechaFin="2020-10-14"  saldoInicial="3880592.00" saldoFinal="8485654.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2012-06-26" fechaFin="2012-07-26"  saldoInicial="83964960.00" saldoFinal="6531487.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2012-07-26" fechaFin="2012-08-26"  saldoInicial="6531487.00" saldoFinal="4440473.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2012-08-26" fechaFin="2012-09-26"  saldoInicial="4440473.00" saldoFinal="105404.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2012-09-26" fechaFin="2012-10-26"  saldoInicial="105404.00" saldoFinal="8095879.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2012-10-26" fechaFin="2012-11-26"  saldoInicial="8095879.00" saldoFinal="8733336.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2012-11-26" fechaFin="2012-12-26"  saldoInicial="8733336.00" saldoFinal="6763286.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2012-12-26" fechaFin="2013-01-26"  saldoInicial="6763286.00" saldoFinal="2803199.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-01-26" fechaFin="2013-02-26"  saldoInicial="2803199.00" saldoFinal="5363159.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-02-26" fechaFin="2013-03-26"  saldoInicial="5363159.00" saldoFinal="2860263.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-03-26" fechaFin="2013-04-26"  saldoInicial="2860263.00" saldoFinal="6198638.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-04-26" fechaFin="2013-05-26"  saldoInicial="6198638.00" saldoFinal="8300169.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-05-26" fechaFin="2013-06-26"  saldoInicial="8300169.00" saldoFinal="852249.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-06-26" fechaFin="2013-07-26"  saldoInicial="852249.00" saldoFinal="7366697.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-07-26" fechaFin="2013-08-26"  saldoInicial="7366697.00" saldoFinal="2735699.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-08-26" fechaFin="2013-09-26"  saldoInicial="2735699.00" saldoFinal="3593994.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-09-26" fechaFin="2013-10-26"  saldoInicial="3593994.00" saldoFinal="5492972.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-10-26" fechaFin="2013-11-26"  saldoInicial="5492972.00" saldoFinal="79606.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-11-26" fechaFin="2013-12-26"  saldoInicial="79606.00" saldoFinal="639539.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2013-12-26" fechaFin="2014-01-26"  saldoInicial="639539.00" saldoFinal="3607490.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-01-26" fechaFin="2014-02-26"  saldoInicial="3607490.00" saldoFinal="7325802.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-02-26" fechaFin="2014-03-26"  saldoInicial="7325802.00" saldoFinal="217998.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-03-26" fechaFin="2014-04-26"  saldoInicial="217998.00" saldoFinal="7385403.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-04-26" fechaFin="2014-05-26"  saldoInicial="7385403.00" saldoFinal="6947168.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-05-26" fechaFin="2014-06-26"  saldoInicial="6947168.00" saldoFinal="4909897.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-06-26" fechaFin="2014-07-26"  saldoInicial="4909897.00" saldoFinal="5507883.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-07-26" fechaFin="2014-08-26"  saldoInicial="5507883.00" saldoFinal="1671346.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-08-26" fechaFin="2014-09-26"  saldoInicial="1671346.00" saldoFinal="5564639.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-09-26" fechaFin="2014-10-26"  saldoInicial="5564639.00" saldoFinal="8243081.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-10-26" fechaFin="2014-11-26"  saldoInicial="8243081.00" saldoFinal="2039468.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-11-26" fechaFin="2014-12-26"  saldoInicial="2039468.00" saldoFinal="5179356.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2014-12-26" fechaFin="2015-01-26"  saldoInicial="5179356.00" saldoFinal="1477430.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-01-26" fechaFin="2015-02-26"  saldoInicial="1477430.00" saldoFinal="5612999.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-02-26" fechaFin="2015-03-26"  saldoInicial="5612999.00" saldoFinal="1331673.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-03-26" fechaFin="2015-04-26"  saldoInicial="1331673.00" saldoFinal="2623757.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-04-26" fechaFin="2015-05-26"  saldoInicial="2623757.00" saldoFinal="2411994.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-05-26" fechaFin="2015-06-26"  saldoInicial="2411994.00" saldoFinal="5267289.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-06-26" fechaFin="2015-07-26"  saldoInicial="5267289.00" saldoFinal="7420246.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-07-26" fechaFin="2015-08-26"  saldoInicial="7420246.00" saldoFinal="4700931.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-08-26" fechaFin="2015-09-26"  saldoInicial="4700931.00" saldoFinal="6918612.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-09-26" fechaFin="2015-10-26"  saldoInicial="6918612.00" saldoFinal="4684819.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-10-26" fechaFin="2015-11-26"  saldoInicial="4684819.00" saldoFinal="6859604.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-11-26" fechaFin="2015-12-26"  saldoInicial="6859604.00" saldoFinal="8611412.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2015-12-26" fechaFin="2016-01-26"  saldoInicial="8611412.00" saldoFinal="4600841.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-01-26" fechaFin="2016-02-26"  saldoInicial="4600841.00" saldoFinal="1365001.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-02-26" fechaFin="2016-03-26"  saldoInicial="1365001.00" saldoFinal="3643425.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-03-26" fechaFin="2016-04-26"  saldoInicial="3643425.00" saldoFinal="4046149.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-04-26" fechaFin="2016-05-26"  saldoInicial="4046149.00" saldoFinal="4632221.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-05-26" fechaFin="2016-06-26"  saldoInicial="4632221.00" saldoFinal="2984456.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-06-26" fechaFin="2016-07-26"  saldoInicial="2984456.00" saldoFinal="2733856.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-07-26" fechaFin="2016-08-26"  saldoInicial="2733856.00" saldoFinal="7053891.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-08-26" fechaFin="2016-09-26"  saldoInicial="7053891.00" saldoFinal="8520092.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-09-26" fechaFin="2016-10-26"  saldoInicial="8520092.00" saldoFinal="4315815.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-10-26" fechaFin="2016-11-26"  saldoInicial="4315815.00" saldoFinal="2891943.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-11-26" fechaFin="2016-12-26"  saldoInicial="2891943.00" saldoFinal="8079275.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2016-12-26" fechaFin="2017-01-26"  saldoInicial="8079275.00" saldoFinal="6932412.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-01-26" fechaFin="2017-02-26"  saldoInicial="6932412.00" saldoFinal="7318733.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-02-26" fechaFin="2017-03-26"  saldoInicial="7318733.00" saldoFinal="8284472.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-03-26" fechaFin="2017-04-26"  saldoInicial="8284472.00" saldoFinal="549232.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-04-26" fechaFin="2017-05-26"  saldoInicial="549232.00" saldoFinal="5099448.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-05-26" fechaFin="2017-06-26"  saldoInicial="5099448.00" saldoFinal="8397760.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-06-26" fechaFin="2017-07-26"  saldoInicial="8397760.00" saldoFinal="8617307.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-07-26" fechaFin="2017-08-26"  saldoInicial="8617307.00" saldoFinal="2064647.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-08-26" fechaFin="2017-09-26"  saldoInicial="2064647.00" saldoFinal="103340.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-09-26" fechaFin="2017-10-26"  saldoInicial="103340.00" saldoFinal="254571.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-10-26" fechaFin="2017-11-26"  saldoInicial="254571.00" saldoFinal="3103481.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-11-26" fechaFin="2017-12-26"  saldoInicial="3103481.00" saldoFinal="1942410.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2017-12-26" fechaFin="2018-01-26"  saldoInicial="1942410.00" saldoFinal="2378793.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-01-26" fechaFin="2018-02-26"  saldoInicial="2378793.00" saldoFinal="7423771.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-02-26" fechaFin="2018-03-26"  saldoInicial="7423771.00" saldoFinal="6188238.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-03-26" fechaFin="2018-04-26"  saldoInicial="6188238.00" saldoFinal="3269828.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-04-26" fechaFin="2018-05-26"  saldoInicial="3269828.00" saldoFinal="1908772.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-05-26" fechaFin="2018-06-26"  saldoInicial="1908772.00" saldoFinal="1492704.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-06-26" fechaFin="2018-07-26"  saldoInicial="1492704.00" saldoFinal="7314238.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-07-26" fechaFin="2018-08-26"  saldoInicial="7314238.00" saldoFinal="6094294.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-08-26" fechaFin="2018-09-26"  saldoInicial="6094294.00" saldoFinal="8001331.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-09-26" fechaFin="2018-10-26"  saldoInicial="8001331.00" saldoFinal="3507263.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-10-26" fechaFin="2018-11-26"  saldoInicial="3507263.00" saldoFinal="8403835.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-11-26" fechaFin="2018-12-26"  saldoInicial="8403835.00" saldoFinal="4147366.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2018-12-26" fechaFin="2019-01-26"  saldoInicial="4147366.00" saldoFinal="6181423.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-01-26" fechaFin="2019-02-26"  saldoInicial="6181423.00" saldoFinal="6739966.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-02-26" fechaFin="2019-03-26"  saldoInicial="6739966.00" saldoFinal="2154465.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-03-26" fechaFin="2019-04-26"  saldoInicial="2154465.00" saldoFinal="2899726.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-04-26" fechaFin="2019-05-26"  saldoInicial="2899726.00" saldoFinal="5398503.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-05-26" fechaFin="2019-06-26"  saldoInicial="5398503.00" saldoFinal="2454823.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-06-26" fechaFin="2019-07-26"  saldoInicial="2454823.00" saldoFinal="7570664.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-07-26" fechaFin="2019-08-26"  saldoInicial="7570664.00" saldoFinal="3112853.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-08-26" fechaFin="2019-09-26"  saldoInicial="3112853.00" saldoFinal="6459332.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-09-26" fechaFin="2019-10-26"  saldoInicial="6459332.00" saldoFinal="8861031.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-10-26" fechaFin="2019-11-26"  saldoInicial="8861031.00" saldoFinal="268270.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-11-26" fechaFin="2019-12-26"  saldoInicial="268270.00" saldoFinal="2498174.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2019-12-26" fechaFin="2020-01-26"  saldoInicial="2498174.00" saldoFinal="885389.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2020-01-26" fechaFin="2020-02-26"  saldoInicial="885389.00" saldoFinal="5924005.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2020-02-26" fechaFin="2020-03-26"  saldoInicial="5924005.00" saldoFinal="8755816.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2020-03-26" fechaFin="2020-04-26"  saldoInicial="8755816.00" saldoFinal="1669974.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2020-04-26" fechaFin="2020-05-26"  saldoInicial="1669974.00" saldoFinal="3348448.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2020-05-26" fechaFin="2020-06-26"  saldoInicial="3348448.00" saldoFinal="525763.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2020-06-26" fechaFin="2020-07-26"  saldoInicial="525763.00" saldoFinal="802101.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2020-07-26" fechaFin="2020-08-26"  saldoInicial="802101.00" saldoFinal="4073195.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2020-08-26" fechaFin="2020-09-26"  saldoInicial="4073195.00" saldoFinal="974664.00" />
    <Estado_de_Cuenta NumeroCuenta="11580263" fechaInicio="2020-09-26" fechaFin="2020-10-26"  saldoInicial="974664.00" saldoFinal="8248278.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2013-08-06" fechaFin="2013-09-06"  saldoInicial="80178488.00" saldoFinal="1200422.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2013-09-06" fechaFin="2013-10-06"  saldoInicial="1200422.00" saldoFinal="8373762.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2013-10-06" fechaFin="2013-11-06"  saldoInicial="8373762.00" saldoFinal="3220504.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2013-11-06" fechaFin="2013-12-06"  saldoInicial="3220504.00" saldoFinal="5861717.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2013-12-06" fechaFin="2014-01-06"  saldoInicial="5861717.00" saldoFinal="5580240.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-01-06" fechaFin="2014-02-06"  saldoInicial="5580240.00" saldoFinal="1933689.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-02-06" fechaFin="2014-03-06"  saldoInicial="1933689.00" saldoFinal="5229331.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-03-06" fechaFin="2014-04-06"  saldoInicial="5229331.00" saldoFinal="2004861.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-04-06" fechaFin="2014-05-06"  saldoInicial="2004861.00" saldoFinal="5565049.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-05-06" fechaFin="2014-06-06"  saldoInicial="5565049.00" saldoFinal="2674759.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-06-06" fechaFin="2014-07-06"  saldoInicial="2674759.00" saldoFinal="145801.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-07-06" fechaFin="2014-08-06"  saldoInicial="145801.00" saldoFinal="8196695.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-08-06" fechaFin="2014-09-06"  saldoInicial="8196695.00" saldoFinal="8812976.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-09-06" fechaFin="2014-10-06"  saldoInicial="8812976.00" saldoFinal="7335820.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-10-06" fechaFin="2014-11-06"  saldoInicial="7335820.00" saldoFinal="6307012.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-11-06" fechaFin="2014-12-06"  saldoInicial="6307012.00" saldoFinal="8983902.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2014-12-06" fechaFin="2015-01-06"  saldoInicial="8983902.00" saldoFinal="5572980.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-01-06" fechaFin="2015-02-06"  saldoInicial="5572980.00" saldoFinal="8352861.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-02-06" fechaFin="2015-03-06"  saldoInicial="8352861.00" saldoFinal="7990215.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-03-06" fechaFin="2015-04-06"  saldoInicial="7990215.00" saldoFinal="5639382.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-04-06" fechaFin="2015-05-06"  saldoInicial="5639382.00" saldoFinal="1354162.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-05-06" fechaFin="2015-06-06"  saldoInicial="1354162.00" saldoFinal="3247552.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-06-06" fechaFin="2015-07-06"  saldoInicial="3247552.00" saldoFinal="3323054.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-07-06" fechaFin="2015-08-06"  saldoInicial="3323054.00" saldoFinal="2870240.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-08-06" fechaFin="2015-09-06"  saldoInicial="2870240.00" saldoFinal="427956.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-09-06" fechaFin="2015-10-06"  saldoInicial="427956.00" saldoFinal="2171155.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-10-06" fechaFin="2015-11-06"  saldoInicial="2171155.00" saldoFinal="917092.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-11-06" fechaFin="2015-12-06"  saldoInicial="917092.00" saldoFinal="3978062.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2015-12-06" fechaFin="2016-01-06"  saldoInicial="3978062.00" saldoFinal="6617680.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-01-06" fechaFin="2016-02-06"  saldoInicial="6617680.00" saldoFinal="5900916.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-02-06" fechaFin="2016-03-06"  saldoInicial="5900916.00" saldoFinal="803407.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-03-06" fechaFin="2016-04-06"  saldoInicial="803407.00" saldoFinal="6947988.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-04-06" fechaFin="2016-05-06"  saldoInicial="6947988.00" saldoFinal="6865674.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-05-06" fechaFin="2016-06-06"  saldoInicial="6865674.00" saldoFinal="3745668.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-06-06" fechaFin="2016-07-06"  saldoInicial="3745668.00" saldoFinal="6998447.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-07-06" fechaFin="2016-08-06"  saldoInicial="6998447.00" saldoFinal="4571674.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-08-06" fechaFin="2016-09-06"  saldoInicial="4571674.00" saldoFinal="1631401.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-09-06" fechaFin="2016-10-06"  saldoInicial="1631401.00" saldoFinal="7034144.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-10-06" fechaFin="2016-11-06"  saldoInicial="7034144.00" saldoFinal="8353832.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-11-06" fechaFin="2016-12-06"  saldoInicial="8353832.00" saldoFinal="4738961.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2016-12-06" fechaFin="2017-01-06"  saldoInicial="4738961.00" saldoFinal="6603973.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-01-06" fechaFin="2017-02-06"  saldoInicial="6603973.00" saldoFinal="7985407.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-02-06" fechaFin="2017-03-06"  saldoInicial="7985407.00" saldoFinal="2619234.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-03-06" fechaFin="2017-04-06"  saldoInicial="2619234.00" saldoFinal="1386337.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-04-06" fechaFin="2017-05-06"  saldoInicial="1386337.00" saldoFinal="7888013.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-05-06" fechaFin="2017-06-06"  saldoInicial="7888013.00" saldoFinal="7516493.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-06-06" fechaFin="2017-07-06"  saldoInicial="7516493.00" saldoFinal="6115046.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-07-06" fechaFin="2017-08-06"  saldoInicial="6115046.00" saldoFinal="450763.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-08-06" fechaFin="2017-09-06"  saldoInicial="450763.00" saldoFinal="4852995.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-09-06" fechaFin="2017-10-06"  saldoInicial="4852995.00" saldoFinal="5380356.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-10-06" fechaFin="2017-11-06"  saldoInicial="5380356.00" saldoFinal="4429657.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-11-06" fechaFin="2017-12-06"  saldoInicial="4429657.00" saldoFinal="4859638.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2017-12-06" fechaFin="2018-01-06"  saldoInicial="4859638.00" saldoFinal="3435520.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-01-06" fechaFin="2018-02-06"  saldoInicial="3435520.00" saldoFinal="7693471.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-02-06" fechaFin="2018-03-06"  saldoInicial="7693471.00" saldoFinal="3437710.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-03-06" fechaFin="2018-04-06"  saldoInicial="3437710.00" saldoFinal="8466227.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-04-06" fechaFin="2018-05-06"  saldoInicial="8466227.00" saldoFinal="4174055.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-05-06" fechaFin="2018-06-06"  saldoInicial="4174055.00" saldoFinal="3790586.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-06-06" fechaFin="2018-07-06"  saldoInicial="3790586.00" saldoFinal="2989532.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-07-06" fechaFin="2018-08-06"  saldoInicial="2989532.00" saldoFinal="6919912.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-08-06" fechaFin="2018-09-06"  saldoInicial="6919912.00" saldoFinal="4827054.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-09-06" fechaFin="2018-10-06"  saldoInicial="4827054.00" saldoFinal="2800108.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-10-06" fechaFin="2018-11-06"  saldoInicial="2800108.00" saldoFinal="8370932.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-11-06" fechaFin="2018-12-06"  saldoInicial="8370932.00" saldoFinal="7472149.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2018-12-06" fechaFin="2019-01-06"  saldoInicial="7472149.00" saldoFinal="6876991.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-01-06" fechaFin="2019-02-06"  saldoInicial="6876991.00" saldoFinal="8614013.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-02-06" fechaFin="2019-03-06"  saldoInicial="8614013.00" saldoFinal="6771958.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-03-06" fechaFin="2019-04-06"  saldoInicial="6771958.00" saldoFinal="2526586.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-04-06" fechaFin="2019-05-06"  saldoInicial="2526586.00" saldoFinal="5546902.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-05-06" fechaFin="2019-06-06"  saldoInicial="5546902.00" saldoFinal="8849697.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-06-06" fechaFin="2019-07-06"  saldoInicial="8849697.00" saldoFinal="2772122.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-07-06" fechaFin="2019-08-06"  saldoInicial="2772122.00" saldoFinal="2489831.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-08-06" fechaFin="2019-09-06"  saldoInicial="2489831.00" saldoFinal="1891996.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-09-06" fechaFin="2019-10-06"  saldoInicial="1891996.00" saldoFinal="4014611.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-10-06" fechaFin="2019-11-06"  saldoInicial="4014611.00" saldoFinal="1749760.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-11-06" fechaFin="2019-12-06"  saldoInicial="1749760.00" saldoFinal="6060246.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2019-12-06" fechaFin="2020-01-06"  saldoInicial="6060246.00" saldoFinal="6084088.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2020-01-06" fechaFin="2020-02-06"  saldoInicial="6084088.00" saldoFinal="4349423.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2020-02-06" fechaFin="2020-03-06"  saldoInicial="4349423.00" saldoFinal="646448.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2020-03-06" fechaFin="2020-04-06"  saldoInicial="646448.00" saldoFinal="5847719.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2020-04-06" fechaFin="2020-05-06"  saldoInicial="5847719.00" saldoFinal="4639086.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2020-05-06" fechaFin="2020-06-06"  saldoInicial="4639086.00" saldoFinal="7493330.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2020-06-06" fechaFin="2020-07-06"  saldoInicial="7493330.00" saldoFinal="5756544.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2020-07-06" fechaFin="2020-08-06"  saldoInicial="5756544.00" saldoFinal="3334077.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2020-08-06" fechaFin="2020-09-06"  saldoInicial="3334077.00" saldoFinal="7587695.00" />
    <Estado_de_Cuenta NumeroCuenta="11803382" fechaInicio="2020-09-06" fechaFin="2020-10-06"  saldoInicial="7587695.00" saldoFinal="2971620.00" />
    <Estado_de_Cuenta NumeroCuenta="11723762" fechaInicio="2020-07-20" fechaFin="2020-08-20"  saldoInicial="57816903.00" saldoFinal="5962805.00" />
    <Estado_de_Cuenta NumeroCuenta="11723762" fechaInicio="2020-08-20" fechaFin="2020-09-20"  saldoInicial="5962805.00" saldoFinal="1332684.00" />
    <Estado_de_Cuenta NumeroCuenta="11723762" fechaInicio="2020-09-20" fechaFin="2020-10-20"  saldoInicial="1332684.00" saldoFinal="5047828.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-01-01" fechaFin="2018-02-01"  saldoInicial="10622102.00" saldoFinal="7961617.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-02-01" fechaFin="2018-03-01"  saldoInicial="7961617.00" saldoFinal="3447113.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-03-01" fechaFin="2018-04-01"  saldoInicial="3447113.00" saldoFinal="5949302.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-04-01" fechaFin="2018-05-01"  saldoInicial="5949302.00" saldoFinal="2749786.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-05-01" fechaFin="2018-06-01"  saldoInicial="2749786.00" saldoFinal="5336247.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-06-01" fechaFin="2018-07-01"  saldoInicial="5336247.00" saldoFinal="7549733.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-07-01" fechaFin="2018-08-01"  saldoInicial="7549733.00" saldoFinal="8369611.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-08-01" fechaFin="2018-09-01"  saldoInicial="8369611.00" saldoFinal="4702275.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-09-01" fechaFin="2018-10-01"  saldoInicial="4702275.00" saldoFinal="5639571.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-10-01" fechaFin="2018-11-01"  saldoInicial="5639571.00" saldoFinal="1052620.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-11-01" fechaFin="2018-12-01"  saldoInicial="1052620.00" saldoFinal="401284.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2018-12-01" fechaFin="2019-01-01"  saldoInicial="401284.00" saldoFinal="5896235.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-01-01" fechaFin="2019-02-01"  saldoInicial="5896235.00" saldoFinal="5518247.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-02-01" fechaFin="2019-03-01"  saldoInicial="5518247.00" saldoFinal="3746367.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-03-01" fechaFin="2019-04-01"  saldoInicial="3746367.00" saldoFinal="5824552.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-04-01" fechaFin="2019-05-01"  saldoInicial="5824552.00" saldoFinal="1318463.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-05-01" fechaFin="2019-06-01"  saldoInicial="1318463.00" saldoFinal="208035.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-06-01" fechaFin="2019-07-01"  saldoInicial="208035.00" saldoFinal="1513347.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-07-01" fechaFin="2019-08-01"  saldoInicial="1513347.00" saldoFinal="2752025.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-08-01" fechaFin="2019-09-01"  saldoInicial="2752025.00" saldoFinal="1213173.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-09-01" fechaFin="2019-10-01"  saldoInicial="1213173.00" saldoFinal="8838016.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-10-01" fechaFin="2019-11-01"  saldoInicial="8838016.00" saldoFinal="420054.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-11-01" fechaFin="2019-12-01"  saldoInicial="420054.00" saldoFinal="2371318.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2019-12-01" fechaFin="2020-01-01"  saldoInicial="2371318.00" saldoFinal="1578447.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2020-01-01" fechaFin="2020-02-01"  saldoInicial="1578447.00" saldoFinal="119309.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2020-02-01" fechaFin="2020-03-01"  saldoInicial="119309.00" saldoFinal="7274966.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2020-03-01" fechaFin="2020-04-01"  saldoInicial="7274966.00" saldoFinal="6646054.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2020-04-01" fechaFin="2020-05-01"  saldoInicial="6646054.00" saldoFinal="5082025.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2020-05-01" fechaFin="2020-06-01"  saldoInicial="5082025.00" saldoFinal="2315537.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2020-06-01" fechaFin="2020-07-01"  saldoInicial="2315537.00" saldoFinal="2797359.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2020-07-01" fechaFin="2020-08-01"  saldoInicial="2797359.00" saldoFinal="1806067.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2020-08-01" fechaFin="2020-09-01"  saldoInicial="1806067.00" saldoFinal="7939571.00" />
    <Estado_de_Cuenta NumeroCuenta="11461191" fechaInicio="2020-09-01" fechaFin="2020-10-01"  saldoInicial="7939571.00" saldoFinal="8948073.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2017-06-14" fechaFin="2017-07-14"  saldoInicial="19535130.00" saldoFinal="839442.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2017-07-14" fechaFin="2017-08-14"  saldoInicial="839442.00" saldoFinal="7703351.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2017-08-14" fechaFin="2017-09-14"  saldoInicial="7703351.00" saldoFinal="4089707.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2017-09-14" fechaFin="2017-10-14"  saldoInicial="4089707.00" saldoFinal="4264630.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2017-10-14" fechaFin="2017-11-14"  saldoInicial="4264630.00" saldoFinal="4445120.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2017-11-14" fechaFin="2017-12-14"  saldoInicial="4445120.00" saldoFinal="4613081.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2017-12-14" fechaFin="2018-01-14"  saldoInicial="4613081.00" saldoFinal="4388831.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-01-14" fechaFin="2018-02-14"  saldoInicial="4388831.00" saldoFinal="2370499.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-02-14" fechaFin="2018-03-14"  saldoInicial="2370499.00" saldoFinal="543546.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-03-14" fechaFin="2018-04-14"  saldoInicial="543546.00" saldoFinal="3082543.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-04-14" fechaFin="2018-05-14"  saldoInicial="3082543.00" saldoFinal="849592.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-05-14" fechaFin="2018-06-14"  saldoInicial="849592.00" saldoFinal="4357562.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-06-14" fechaFin="2018-07-14"  saldoInicial="4357562.00" saldoFinal="623231.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-07-14" fechaFin="2018-08-14"  saldoInicial="623231.00" saldoFinal="2255259.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-08-14" fechaFin="2018-09-14"  saldoInicial="2255259.00" saldoFinal="4617921.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-09-14" fechaFin="2018-10-14"  saldoInicial="4617921.00" saldoFinal="5017221.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-10-14" fechaFin="2018-11-14"  saldoInicial="5017221.00" saldoFinal="8763051.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-11-14" fechaFin="2018-12-14"  saldoInicial="8763051.00" saldoFinal="6952720.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2018-12-14" fechaFin="2019-01-14"  saldoInicial="6952720.00" saldoFinal="4621105.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-01-14" fechaFin="2019-02-14"  saldoInicial="4621105.00" saldoFinal="2770294.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-02-14" fechaFin="2019-03-14"  saldoInicial="2770294.00" saldoFinal="2978695.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-03-14" fechaFin="2019-04-14"  saldoInicial="2978695.00" saldoFinal="551119.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-04-14" fechaFin="2019-05-14"  saldoInicial="551119.00" saldoFinal="6913093.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-05-14" fechaFin="2019-06-14"  saldoInicial="6913093.00" saldoFinal="6191535.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-06-14" fechaFin="2019-07-14"  saldoInicial="6191535.00" saldoFinal="5854202.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-07-14" fechaFin="2019-08-14"  saldoInicial="5854202.00" saldoFinal="5052320.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-08-14" fechaFin="2019-09-14"  saldoInicial="5052320.00" saldoFinal="971969.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-09-14" fechaFin="2019-10-14"  saldoInicial="971969.00" saldoFinal="1864242.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-10-14" fechaFin="2019-11-14"  saldoInicial="1864242.00" saldoFinal="1158904.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-11-14" fechaFin="2019-12-14"  saldoInicial="1158904.00" saldoFinal="2769970.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2019-12-14" fechaFin="2020-01-14"  saldoInicial="2769970.00" saldoFinal="2110546.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2020-01-14" fechaFin="2020-02-14"  saldoInicial="2110546.00" saldoFinal="7505148.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2020-02-14" fechaFin="2020-03-14"  saldoInicial="7505148.00" saldoFinal="3994035.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2020-03-14" fechaFin="2020-04-14"  saldoInicial="3994035.00" saldoFinal="7778260.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2020-04-14" fechaFin="2020-05-14"  saldoInicial="7778260.00" saldoFinal="176626.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2020-05-14" fechaFin="2020-06-14"  saldoInicial="176626.00" saldoFinal="1904239.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2020-06-14" fechaFin="2020-07-14"  saldoInicial="1904239.00" saldoFinal="321935.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2020-07-14" fechaFin="2020-08-14"  saldoInicial="321935.00" saldoFinal="4865301.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2020-08-14" fechaFin="2020-09-14"  saldoInicial="4865301.00" saldoFinal="5045228.00" />
    <Estado_de_Cuenta NumeroCuenta="11646718" fechaInicio="2020-09-14" fechaFin="2020-10-14"  saldoInicial="5045228.00" saldoFinal="646527.00" />
    <Estado_de_Cuenta NumeroCuenta="11515832" fechaInicio="2019-11-01" fechaFin="2019-12-01"  saldoInicial="12116117.00" saldoFinal="4736464.00" />
    <Estado_de_Cuenta NumeroCuenta="11515832" fechaInicio="2019-12-01" fechaFin="2020-01-01"  saldoInicial="4736464.00" saldoFinal="4293234.00" />
    <Estado_de_Cuenta NumeroCuenta="11515832" fechaInicio="2020-01-01" fechaFin="2020-02-01"  saldoInicial="4293234.00" saldoFinal="5900717.00" />
    <Estado_de_Cuenta NumeroCuenta="11515832" fechaInicio="2020-02-01" fechaFin="2020-03-01"  saldoInicial="5900717.00" saldoFinal="3588762.00" />
    <Estado_de_Cuenta NumeroCuenta="11515832" fechaInicio="2020-03-01" fechaFin="2020-04-01"  saldoInicial="3588762.00" saldoFinal="6450240.00" />
    <Estado_de_Cuenta NumeroCuenta="11515832" fechaInicio="2020-04-01" fechaFin="2020-05-01"  saldoInicial="6450240.00" saldoFinal="5090285.00" />
    <Estado_de_Cuenta NumeroCuenta="11515832" fechaInicio="2020-05-01" fechaFin="2020-06-01"  saldoInicial="5090285.00" saldoFinal="5873823.00" />
    <Estado_de_Cuenta NumeroCuenta="11515832" fechaInicio="2020-06-01" fechaFin="2020-07-01"  saldoInicial="5873823.00" saldoFinal="7966551.00" />
    <Estado_de_Cuenta NumeroCuenta="11515832" fechaInicio="2020-07-01" fechaFin="2020-08-01"  saldoInicial="7966551.00" saldoFinal="5563977.00" />
    <Estado_de_Cuenta NumeroCuenta="11515832" fechaInicio="2020-08-01" fechaFin="2020-09-01"  saldoInicial="5563977.00" saldoFinal="3292044.00" />
    <Estado_de_Cuenta NumeroCuenta="11515832" fechaInicio="2020-09-01" fechaFin="2020-10-01"  saldoInicial="3292044.00" saldoFinal="2356652.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2018-09-17" fechaFin="2018-10-17"  saldoInicial="79011299.00" saldoFinal="8689102.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2018-10-17" fechaFin="2018-11-17"  saldoInicial="8689102.00" saldoFinal="77219.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2018-11-17" fechaFin="2018-12-17"  saldoInicial="77219.00" saldoFinal="2613151.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2018-12-17" fechaFin="2019-01-17"  saldoInicial="2613151.00" saldoFinal="891462.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-01-17" fechaFin="2019-02-17"  saldoInicial="891462.00" saldoFinal="8622020.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-02-17" fechaFin="2019-03-17"  saldoInicial="8622020.00" saldoFinal="5322557.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-03-17" fechaFin="2019-04-17"  saldoInicial="5322557.00" saldoFinal="2365020.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-04-17" fechaFin="2019-05-17"  saldoInicial="2365020.00" saldoFinal="5537530.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-05-17" fechaFin="2019-06-17"  saldoInicial="5537530.00" saldoFinal="8674479.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-06-17" fechaFin="2019-07-17"  saldoInicial="8674479.00" saldoFinal="4925617.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-07-17" fechaFin="2019-08-17"  saldoInicial="4925617.00" saldoFinal="8994505.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-08-17" fechaFin="2019-09-17"  saldoInicial="8994505.00" saldoFinal="7127342.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-09-17" fechaFin="2019-10-17"  saldoInicial="7127342.00" saldoFinal="1212958.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-10-17" fechaFin="2019-11-17"  saldoInicial="1212958.00" saldoFinal="2653285.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-11-17" fechaFin="2019-12-17"  saldoInicial="2653285.00" saldoFinal="4203417.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2019-12-17" fechaFin="2020-01-17"  saldoInicial="4203417.00" saldoFinal="8113408.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2020-01-17" fechaFin="2020-02-17"  saldoInicial="8113408.00" saldoFinal="4523702.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2020-02-17" fechaFin="2020-03-17"  saldoInicial="4523702.00" saldoFinal="7608274.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2020-03-17" fechaFin="2020-04-17"  saldoInicial="7608274.00" saldoFinal="1563416.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2020-04-17" fechaFin="2020-05-17"  saldoInicial="1563416.00" saldoFinal="1173672.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2020-05-17" fechaFin="2020-06-17"  saldoInicial="1173672.00" saldoFinal="6089881.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2020-06-17" fechaFin="2020-07-17"  saldoInicial="6089881.00" saldoFinal="49695.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2020-07-17" fechaFin="2020-08-17"  saldoInicial="49695.00" saldoFinal="8864244.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2020-08-17" fechaFin="2020-09-17"  saldoInicial="8864244.00" saldoFinal="4130422.00" />
    <Estado_de_Cuenta NumeroCuenta="11177296" fechaInicio="2020-09-17" fechaFin="2020-10-17"  saldoInicial="4130422.00" saldoFinal="6722263.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2015-06-15" fechaFin="2015-07-15"  saldoInicial="70559981.00" saldoFinal="7601675.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2015-07-15" fechaFin="2015-08-15"  saldoInicial="7601675.00" saldoFinal="743908.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2015-08-15" fechaFin="2015-09-15"  saldoInicial="743908.00" saldoFinal="1147830.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2015-09-15" fechaFin="2015-10-15"  saldoInicial="1147830.00" saldoFinal="1807566.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2015-10-15" fechaFin="2015-11-15"  saldoInicial="1807566.00" saldoFinal="6106739.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2015-11-15" fechaFin="2015-12-15"  saldoInicial="6106739.00" saldoFinal="3585246.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2015-12-15" fechaFin="2016-01-15"  saldoInicial="3585246.00" saldoFinal="70939.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-01-15" fechaFin="2016-02-15"  saldoInicial="70939.00" saldoFinal="5854748.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-02-15" fechaFin="2016-03-15"  saldoInicial="5854748.00" saldoFinal="3774783.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-03-15" fechaFin="2016-04-15"  saldoInicial="3774783.00" saldoFinal="8793414.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-04-15" fechaFin="2016-05-15"  saldoInicial="8793414.00" saldoFinal="774436.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-05-15" fechaFin="2016-06-15"  saldoInicial="774436.00" saldoFinal="8727786.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-06-15" fechaFin="2016-07-15"  saldoInicial="8727786.00" saldoFinal="172647.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-07-15" fechaFin="2016-08-15"  saldoInicial="172647.00" saldoFinal="5219266.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-08-15" fechaFin="2016-09-15"  saldoInicial="5219266.00" saldoFinal="6494625.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-09-15" fechaFin="2016-10-15"  saldoInicial="6494625.00" saldoFinal="3708810.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-10-15" fechaFin="2016-11-15"  saldoInicial="3708810.00" saldoFinal="2360265.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-11-15" fechaFin="2016-12-15"  saldoInicial="2360265.00" saldoFinal="244772.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2016-12-15" fechaFin="2017-01-15"  saldoInicial="244772.00" saldoFinal="4410078.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-01-15" fechaFin="2017-02-15"  saldoInicial="4410078.00" saldoFinal="2726443.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-02-15" fechaFin="2017-03-15"  saldoInicial="2726443.00" saldoFinal="2744529.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-03-15" fechaFin="2017-04-15"  saldoInicial="2744529.00" saldoFinal="3101169.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-04-15" fechaFin="2017-05-15"  saldoInicial="3101169.00" saldoFinal="3551453.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-05-15" fechaFin="2017-06-15"  saldoInicial="3551453.00" saldoFinal="7381990.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-06-15" fechaFin="2017-07-15"  saldoInicial="7381990.00" saldoFinal="5845038.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-07-15" fechaFin="2017-08-15"  saldoInicial="5845038.00" saldoFinal="3841773.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-08-15" fechaFin="2017-09-15"  saldoInicial="3841773.00" saldoFinal="3006921.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-09-15" fechaFin="2017-10-15"  saldoInicial="3006921.00" saldoFinal="8508524.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-10-15" fechaFin="2017-11-15"  saldoInicial="8508524.00" saldoFinal="1920718.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-11-15" fechaFin="2017-12-15"  saldoInicial="1920718.00" saldoFinal="2966355.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2017-12-15" fechaFin="2018-01-15"  saldoInicial="2966355.00" saldoFinal="7797125.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-01-15" fechaFin="2018-02-15"  saldoInicial="7797125.00" saldoFinal="953077.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-02-15" fechaFin="2018-03-15"  saldoInicial="953077.00" saldoFinal="7505446.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-03-15" fechaFin="2018-04-15"  saldoInicial="7505446.00" saldoFinal="1301830.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-04-15" fechaFin="2018-05-15"  saldoInicial="1301830.00" saldoFinal="3720770.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-05-15" fechaFin="2018-06-15"  saldoInicial="3720770.00" saldoFinal="5184068.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-06-15" fechaFin="2018-07-15"  saldoInicial="5184068.00" saldoFinal="4896416.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-07-15" fechaFin="2018-08-15"  saldoInicial="4896416.00" saldoFinal="7514906.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-08-15" fechaFin="2018-09-15"  saldoInicial="7514906.00" saldoFinal="6944563.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-09-15" fechaFin="2018-10-15"  saldoInicial="6944563.00" saldoFinal="584359.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-10-15" fechaFin="2018-11-15"  saldoInicial="584359.00" saldoFinal="2735942.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-11-15" fechaFin="2018-12-15"  saldoInicial="2735942.00" saldoFinal="8669781.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2018-12-15" fechaFin="2019-01-15"  saldoInicial="8669781.00" saldoFinal="5683740.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-01-15" fechaFin="2019-02-15"  saldoInicial="5683740.00" saldoFinal="8343318.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-02-15" fechaFin="2019-03-15"  saldoInicial="8343318.00" saldoFinal="2117630.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-03-15" fechaFin="2019-04-15"  saldoInicial="2117630.00" saldoFinal="846212.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-04-15" fechaFin="2019-05-15"  saldoInicial="846212.00" saldoFinal="2166192.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-05-15" fechaFin="2019-06-15"  saldoInicial="2166192.00" saldoFinal="4207716.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-06-15" fechaFin="2019-07-15"  saldoInicial="4207716.00" saldoFinal="5602160.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-07-15" fechaFin="2019-08-15"  saldoInicial="5602160.00" saldoFinal="788326.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-08-15" fechaFin="2019-09-15"  saldoInicial="788326.00" saldoFinal="1300915.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-09-15" fechaFin="2019-10-15"  saldoInicial="1300915.00" saldoFinal="1444752.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-10-15" fechaFin="2019-11-15"  saldoInicial="1444752.00" saldoFinal="939179.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-11-15" fechaFin="2019-12-15"  saldoInicial="939179.00" saldoFinal="6385862.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2019-12-15" fechaFin="2020-01-15"  saldoInicial="6385862.00" saldoFinal="5104281.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2020-01-15" fechaFin="2020-02-15"  saldoInicial="5104281.00" saldoFinal="2872085.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2020-02-15" fechaFin="2020-03-15"  saldoInicial="2872085.00" saldoFinal="220880.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2020-03-15" fechaFin="2020-04-15"  saldoInicial="220880.00" saldoFinal="1671635.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2020-04-15" fechaFin="2020-05-15"  saldoInicial="1671635.00" saldoFinal="5977151.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2020-05-15" fechaFin="2020-06-15"  saldoInicial="5977151.00" saldoFinal="5756927.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2020-06-15" fechaFin="2020-07-15"  saldoInicial="5756927.00" saldoFinal="747712.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2020-07-15" fechaFin="2020-08-15"  saldoInicial="747712.00" saldoFinal="2581843.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2020-08-15" fechaFin="2020-09-15"  saldoInicial="2581843.00" saldoFinal="1248981.00" />
    <Estado_de_Cuenta NumeroCuenta="11727944" fechaInicio="2020-09-15" fechaFin="2020-10-15"  saldoInicial="1248981.00" saldoFinal="1816132.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2015-05-18" fechaFin="2015-06-18"  saldoInicial="88079747.00" saldoFinal="5441428.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2015-06-18" fechaFin="2015-07-18"  saldoInicial="5441428.00" saldoFinal="7060257.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2015-07-18" fechaFin="2015-08-18"  saldoInicial="7060257.00" saldoFinal="3529742.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2015-08-18" fechaFin="2015-09-18"  saldoInicial="3529742.00" saldoFinal="8841039.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2015-09-18" fechaFin="2015-10-18"  saldoInicial="8841039.00" saldoFinal="2755605.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2015-10-18" fechaFin="2015-11-18"  saldoInicial="2755605.00" saldoFinal="2099659.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2015-11-18" fechaFin="2015-12-18"  saldoInicial="2099659.00" saldoFinal="8437835.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2015-12-18" fechaFin="2016-01-18"  saldoInicial="8437835.00" saldoFinal="5768628.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-01-18" fechaFin="2016-02-18"  saldoInicial="5768628.00" saldoFinal="7365855.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-02-18" fechaFin="2016-03-18"  saldoInicial="7365855.00" saldoFinal="6811458.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-03-18" fechaFin="2016-04-18"  saldoInicial="6811458.00" saldoFinal="5366312.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-04-18" fechaFin="2016-05-18"  saldoInicial="5366312.00" saldoFinal="8590256.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-05-18" fechaFin="2016-06-18"  saldoInicial="8590256.00" saldoFinal="4609152.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-06-18" fechaFin="2016-07-18"  saldoInicial="4609152.00" saldoFinal="8740951.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-07-18" fechaFin="2016-08-18"  saldoInicial="8740951.00" saldoFinal="1636991.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-08-18" fechaFin="2016-09-18"  saldoInicial="1636991.00" saldoFinal="7053889.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-09-18" fechaFin="2016-10-18"  saldoInicial="7053889.00" saldoFinal="5233321.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-10-18" fechaFin="2016-11-18"  saldoInicial="5233321.00" saldoFinal="1658804.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-11-18" fechaFin="2016-12-18"  saldoInicial="1658804.00" saldoFinal="5212479.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2016-12-18" fechaFin="2017-01-18"  saldoInicial="5212479.00" saldoFinal="223069.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-01-18" fechaFin="2017-02-18"  saldoInicial="223069.00" saldoFinal="1588684.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-02-18" fechaFin="2017-03-18"  saldoInicial="1588684.00" saldoFinal="1917997.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-03-18" fechaFin="2017-04-18"  saldoInicial="1917997.00" saldoFinal="7254692.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-04-18" fechaFin="2017-05-18"  saldoInicial="7254692.00" saldoFinal="716202.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-05-18" fechaFin="2017-06-18"  saldoInicial="716202.00" saldoFinal="8627321.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-06-18" fechaFin="2017-07-18"  saldoInicial="8627321.00" saldoFinal="2489227.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-07-18" fechaFin="2017-08-18"  saldoInicial="2489227.00" saldoFinal="919423.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-08-18" fechaFin="2017-09-18"  saldoInicial="919423.00" saldoFinal="5158253.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-09-18" fechaFin="2017-10-18"  saldoInicial="5158253.00" saldoFinal="5854322.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-10-18" fechaFin="2017-11-18"  saldoInicial="5854322.00" saldoFinal="7814152.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-11-18" fechaFin="2017-12-18"  saldoInicial="7814152.00" saldoFinal="1275876.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2017-12-18" fechaFin="2018-01-18"  saldoInicial="1275876.00" saldoFinal="5064833.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-01-18" fechaFin="2018-02-18"  saldoInicial="5064833.00" saldoFinal="6149533.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-02-18" fechaFin="2018-03-18"  saldoInicial="6149533.00" saldoFinal="5763495.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-03-18" fechaFin="2018-04-18"  saldoInicial="5763495.00" saldoFinal="1729723.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-04-18" fechaFin="2018-05-18"  saldoInicial="1729723.00" saldoFinal="2437403.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-05-18" fechaFin="2018-06-18"  saldoInicial="2437403.00" saldoFinal="5663605.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-06-18" fechaFin="2018-07-18"  saldoInicial="5663605.00" saldoFinal="5309949.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-07-18" fechaFin="2018-08-18"  saldoInicial="5309949.00" saldoFinal="4084073.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-08-18" fechaFin="2018-09-18"  saldoInicial="4084073.00" saldoFinal="1715172.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-09-18" fechaFin="2018-10-18"  saldoInicial="1715172.00" saldoFinal="5768703.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-10-18" fechaFin="2018-11-18"  saldoInicial="5768703.00" saldoFinal="1066859.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-11-18" fechaFin="2018-12-18"  saldoInicial="1066859.00" saldoFinal="5318271.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2018-12-18" fechaFin="2019-01-18"  saldoInicial="5318271.00" saldoFinal="4587978.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-01-18" fechaFin="2019-02-18"  saldoInicial="4587978.00" saldoFinal="578234.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-02-18" fechaFin="2019-03-18"  saldoInicial="578234.00" saldoFinal="4478636.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-03-18" fechaFin="2019-04-18"  saldoInicial="4478636.00" saldoFinal="3442005.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-04-18" fechaFin="2019-05-18"  saldoInicial="3442005.00" saldoFinal="171830.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-05-18" fechaFin="2019-06-18"  saldoInicial="171830.00" saldoFinal="1671336.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-06-18" fechaFin="2019-07-18"  saldoInicial="1671336.00" saldoFinal="5489470.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-07-18" fechaFin="2019-08-18"  saldoInicial="5489470.00" saldoFinal="7358441.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-08-18" fechaFin="2019-09-18"  saldoInicial="7358441.00" saldoFinal="6206486.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-09-18" fechaFin="2019-10-18"  saldoInicial="6206486.00" saldoFinal="4106799.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-10-18" fechaFin="2019-11-18"  saldoInicial="4106799.00" saldoFinal="2171636.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-11-18" fechaFin="2019-12-18"  saldoInicial="2171636.00" saldoFinal="5899512.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2019-12-18" fechaFin="2020-01-18"  saldoInicial="5899512.00" saldoFinal="2031067.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2020-01-18" fechaFin="2020-02-18"  saldoInicial="2031067.00" saldoFinal="6322550.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2020-02-18" fechaFin="2020-03-18"  saldoInicial="6322550.00" saldoFinal="3250589.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2020-03-18" fechaFin="2020-04-18"  saldoInicial="3250589.00" saldoFinal="4673927.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2020-04-18" fechaFin="2020-05-18"  saldoInicial="4673927.00" saldoFinal="8288651.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2020-05-18" fechaFin="2020-06-18"  saldoInicial="8288651.00" saldoFinal="2415018.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2020-06-18" fechaFin="2020-07-18"  saldoInicial="2415018.00" saldoFinal="3558210.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2020-07-18" fechaFin="2020-08-18"  saldoInicial="3558210.00" saldoFinal="148882.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2020-08-18" fechaFin="2020-09-18"  saldoInicial="148882.00" saldoFinal="3230403.00" />
    <Estado_de_Cuenta NumeroCuenta="11074472" fechaInicio="2020-09-18" fechaFin="2020-10-18"  saldoInicial="3230403.00" saldoFinal="641092.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2015-10-14" fechaFin="2015-11-14"  saldoInicial="1990325.00" saldoFinal="6789242.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2015-11-14" fechaFin="2015-12-14"  saldoInicial="6789242.00" saldoFinal="1698700.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2015-12-14" fechaFin="2016-01-14"  saldoInicial="1698700.00" saldoFinal="704942.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-01-14" fechaFin="2016-02-14"  saldoInicial="704942.00" saldoFinal="6703407.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-02-14" fechaFin="2016-03-14"  saldoInicial="6703407.00" saldoFinal="5545843.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-03-14" fechaFin="2016-04-14"  saldoInicial="5545843.00" saldoFinal="2725213.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-04-14" fechaFin="2016-05-14"  saldoInicial="2725213.00" saldoFinal="436942.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-05-14" fechaFin="2016-06-14"  saldoInicial="436942.00" saldoFinal="1933242.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-06-14" fechaFin="2016-07-14"  saldoInicial="1933242.00" saldoFinal="1992410.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-07-14" fechaFin="2016-08-14"  saldoInicial="1992410.00" saldoFinal="4988439.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-08-14" fechaFin="2016-09-14"  saldoInicial="4988439.00" saldoFinal="3964122.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-09-14" fechaFin="2016-10-14"  saldoInicial="3964122.00" saldoFinal="686162.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-10-14" fechaFin="2016-11-14"  saldoInicial="686162.00" saldoFinal="7702325.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-11-14" fechaFin="2016-12-14"  saldoInicial="7702325.00" saldoFinal="4080866.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2016-12-14" fechaFin="2017-01-14"  saldoInicial="4080866.00" saldoFinal="3062896.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-01-14" fechaFin="2017-02-14"  saldoInicial="3062896.00" saldoFinal="2352370.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-02-14" fechaFin="2017-03-14"  saldoInicial="2352370.00" saldoFinal="1397579.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-03-14" fechaFin="2017-04-14"  saldoInicial="1397579.00" saldoFinal="5724428.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-04-14" fechaFin="2017-05-14"  saldoInicial="5724428.00" saldoFinal="5437537.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-05-14" fechaFin="2017-06-14"  saldoInicial="5437537.00" saldoFinal="8352734.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-06-14" fechaFin="2017-07-14"  saldoInicial="8352734.00" saldoFinal="4006658.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-07-14" fechaFin="2017-08-14"  saldoInicial="4006658.00" saldoFinal="4810608.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-08-14" fechaFin="2017-09-14"  saldoInicial="4810608.00" saldoFinal="3193430.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-09-14" fechaFin="2017-10-14"  saldoInicial="3193430.00" saldoFinal="4836039.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-10-14" fechaFin="2017-11-14"  saldoInicial="4836039.00" saldoFinal="6879054.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-11-14" fechaFin="2017-12-14"  saldoInicial="6879054.00" saldoFinal="7781252.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2017-12-14" fechaFin="2018-01-14"  saldoInicial="7781252.00" saldoFinal="6569589.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-01-14" fechaFin="2018-02-14"  saldoInicial="6569589.00" saldoFinal="2564179.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-02-14" fechaFin="2018-03-14"  saldoInicial="2564179.00" saldoFinal="1993212.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-03-14" fechaFin="2018-04-14"  saldoInicial="1993212.00" saldoFinal="2217600.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-04-14" fechaFin="2018-05-14"  saldoInicial="2217600.00" saldoFinal="550790.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-05-14" fechaFin="2018-06-14"  saldoInicial="550790.00" saldoFinal="7720644.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-06-14" fechaFin="2018-07-14"  saldoInicial="7720644.00" saldoFinal="2523034.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-07-14" fechaFin="2018-08-14"  saldoInicial="2523034.00" saldoFinal="1818326.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-08-14" fechaFin="2018-09-14"  saldoInicial="1818326.00" saldoFinal="1375707.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-09-14" fechaFin="2018-10-14"  saldoInicial="1375707.00" saldoFinal="6202767.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-10-14" fechaFin="2018-11-14"  saldoInicial="6202767.00" saldoFinal="2330976.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-11-14" fechaFin="2018-12-14"  saldoInicial="2330976.00" saldoFinal="2110836.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2018-12-14" fechaFin="2019-01-14"  saldoInicial="2110836.00" saldoFinal="8186201.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-01-14" fechaFin="2019-02-14"  saldoInicial="8186201.00" saldoFinal="726347.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-02-14" fechaFin="2019-03-14"  saldoInicial="726347.00" saldoFinal="624334.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-03-14" fechaFin="2019-04-14"  saldoInicial="624334.00" saldoFinal="6470131.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-04-14" fechaFin="2019-05-14"  saldoInicial="6470131.00" saldoFinal="8502773.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-05-14" fechaFin="2019-06-14"  saldoInicial="8502773.00" saldoFinal="957426.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-06-14" fechaFin="2019-07-14"  saldoInicial="957426.00" saldoFinal="6005562.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-07-14" fechaFin="2019-08-14"  saldoInicial="6005562.00" saldoFinal="1565665.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-08-14" fechaFin="2019-09-14"  saldoInicial="1565665.00" saldoFinal="5993482.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-09-14" fechaFin="2019-10-14"  saldoInicial="5993482.00" saldoFinal="4481240.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-10-14" fechaFin="2019-11-14"  saldoInicial="4481240.00" saldoFinal="3817137.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-11-14" fechaFin="2019-12-14"  saldoInicial="3817137.00" saldoFinal="2963185.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2019-12-14" fechaFin="2020-01-14"  saldoInicial="2963185.00" saldoFinal="8302050.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2020-01-14" fechaFin="2020-02-14"  saldoInicial="8302050.00" saldoFinal="8997660.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2020-02-14" fechaFin="2020-03-14"  saldoInicial="8997660.00" saldoFinal="2293430.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2020-03-14" fechaFin="2020-04-14"  saldoInicial="2293430.00" saldoFinal="2355424.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2020-04-14" fechaFin="2020-05-14"  saldoInicial="2355424.00" saldoFinal="3843349.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2020-05-14" fechaFin="2020-06-14"  saldoInicial="3843349.00" saldoFinal="719332.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2020-06-14" fechaFin="2020-07-14"  saldoInicial="719332.00" saldoFinal="4505990.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2020-07-14" fechaFin="2020-08-14"  saldoInicial="4505990.00" saldoFinal="7713554.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2020-08-14" fechaFin="2020-09-14"  saldoInicial="7713554.00" saldoFinal="7546920.00" />
    <Estado_de_Cuenta NumeroCuenta="11698661" fechaInicio="2020-09-14" fechaFin="2020-10-14"  saldoInicial="7546920.00" saldoFinal="354959.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2015-07-22" fechaFin="2015-08-22"  saldoInicial="86363295.00" saldoFinal="4336082.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2015-08-22" fechaFin="2015-09-22"  saldoInicial="4336082.00" saldoFinal="1347875.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2015-09-22" fechaFin="2015-10-22"  saldoInicial="1347875.00" saldoFinal="4255859.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2015-10-22" fechaFin="2015-11-22"  saldoInicial="4255859.00" saldoFinal="6147671.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2015-11-22" fechaFin="2015-12-22"  saldoInicial="6147671.00" saldoFinal="7573572.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2015-12-22" fechaFin="2016-01-22"  saldoInicial="7573572.00" saldoFinal="6486075.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-01-22" fechaFin="2016-02-22"  saldoInicial="6486075.00" saldoFinal="5834300.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-02-22" fechaFin="2016-03-22"  saldoInicial="5834300.00" saldoFinal="4907082.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-03-22" fechaFin="2016-04-22"  saldoInicial="4907082.00" saldoFinal="4660389.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-04-22" fechaFin="2016-05-22"  saldoInicial="4660389.00" saldoFinal="4467594.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-05-22" fechaFin="2016-06-22"  saldoInicial="4467594.00" saldoFinal="3304380.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-06-22" fechaFin="2016-07-22"  saldoInicial="3304380.00" saldoFinal="5103942.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-07-22" fechaFin="2016-08-22"  saldoInicial="5103942.00" saldoFinal="6748928.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-08-22" fechaFin="2016-09-22"  saldoInicial="6748928.00" saldoFinal="8645611.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-09-22" fechaFin="2016-10-22"  saldoInicial="8645611.00" saldoFinal="6027377.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-10-22" fechaFin="2016-11-22"  saldoInicial="6027377.00" saldoFinal="3018864.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-11-22" fechaFin="2016-12-22"  saldoInicial="3018864.00" saldoFinal="3493358.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2016-12-22" fechaFin="2017-01-22"  saldoInicial="3493358.00" saldoFinal="6251493.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-01-22" fechaFin="2017-02-22"  saldoInicial="6251493.00" saldoFinal="8512910.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-02-22" fechaFin="2017-03-22"  saldoInicial="8512910.00" saldoFinal="6143316.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-03-22" fechaFin="2017-04-22"  saldoInicial="6143316.00" saldoFinal="8940051.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-04-22" fechaFin="2017-05-22"  saldoInicial="8940051.00" saldoFinal="961162.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-05-22" fechaFin="2017-06-22"  saldoInicial="961162.00" saldoFinal="5209546.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-06-22" fechaFin="2017-07-22"  saldoInicial="5209546.00" saldoFinal="4812975.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-07-22" fechaFin="2017-08-22"  saldoInicial="4812975.00" saldoFinal="7680982.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-08-22" fechaFin="2017-09-22"  saldoInicial="7680982.00" saldoFinal="467712.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-09-22" fechaFin="2017-10-22"  saldoInicial="467712.00" saldoFinal="8425939.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-10-22" fechaFin="2017-11-22"  saldoInicial="8425939.00" saldoFinal="8463809.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-11-22" fechaFin="2017-12-22"  saldoInicial="8463809.00" saldoFinal="5867898.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2017-12-22" fechaFin="2018-01-22"  saldoInicial="5867898.00" saldoFinal="7356265.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-01-22" fechaFin="2018-02-22"  saldoInicial="7356265.00" saldoFinal="147743.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-02-22" fechaFin="2018-03-22"  saldoInicial="147743.00" saldoFinal="3663387.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-03-22" fechaFin="2018-04-22"  saldoInicial="3663387.00" saldoFinal="6064490.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-04-22" fechaFin="2018-05-22"  saldoInicial="6064490.00" saldoFinal="3198828.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-05-22" fechaFin="2018-06-22"  saldoInicial="3198828.00" saldoFinal="2631057.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-06-22" fechaFin="2018-07-22"  saldoInicial="2631057.00" saldoFinal="2369744.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-07-22" fechaFin="2018-08-22"  saldoInicial="2369744.00" saldoFinal="6327295.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-08-22" fechaFin="2018-09-22"  saldoInicial="6327295.00" saldoFinal="8688075.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-09-22" fechaFin="2018-10-22"  saldoInicial="8688075.00" saldoFinal="2286864.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-10-22" fechaFin="2018-11-22"  saldoInicial="2286864.00" saldoFinal="6861219.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-11-22" fechaFin="2018-12-22"  saldoInicial="6861219.00" saldoFinal="1967068.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2018-12-22" fechaFin="2019-01-22"  saldoInicial="1967068.00" saldoFinal="7148262.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-01-22" fechaFin="2019-02-22"  saldoInicial="7148262.00" saldoFinal="8075742.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-02-22" fechaFin="2019-03-22"  saldoInicial="8075742.00" saldoFinal="2195378.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-03-22" fechaFin="2019-04-22"  saldoInicial="2195378.00" saldoFinal="1292122.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-04-22" fechaFin="2019-05-22"  saldoInicial="1292122.00" saldoFinal="6203.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-05-22" fechaFin="2019-06-22"  saldoInicial="6203.00" saldoFinal="6654620.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-06-22" fechaFin="2019-07-22"  saldoInicial="6654620.00" saldoFinal="3179506.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-07-22" fechaFin="2019-08-22"  saldoInicial="3179506.00" saldoFinal="3720295.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-08-22" fechaFin="2019-09-22"  saldoInicial="3720295.00" saldoFinal="1771119.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-09-22" fechaFin="2019-10-22"  saldoInicial="1771119.00" saldoFinal="6554751.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-10-22" fechaFin="2019-11-22"  saldoInicial="6554751.00" saldoFinal="4748319.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-11-22" fechaFin="2019-12-22"  saldoInicial="4748319.00" saldoFinal="4812228.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2019-12-22" fechaFin="2020-01-22"  saldoInicial="4812228.00" saldoFinal="3340726.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2020-01-22" fechaFin="2020-02-22"  saldoInicial="3340726.00" saldoFinal="4773148.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2020-02-22" fechaFin="2020-03-22"  saldoInicial="4773148.00" saldoFinal="8058284.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2020-03-22" fechaFin="2020-04-22"  saldoInicial="8058284.00" saldoFinal="1259735.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2020-04-22" fechaFin="2020-05-22"  saldoInicial="1259735.00" saldoFinal="7517892.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2020-05-22" fechaFin="2020-06-22"  saldoInicial="7517892.00" saldoFinal="7142777.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2020-06-22" fechaFin="2020-07-22"  saldoInicial="7142777.00" saldoFinal="1712988.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2020-07-22" fechaFin="2020-08-22"  saldoInicial="1712988.00" saldoFinal="529847.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2020-08-22" fechaFin="2020-09-22"  saldoInicial="529847.00" saldoFinal="1446811.00" />
    <Estado_de_Cuenta NumeroCuenta="11960326" fechaInicio="2020-09-22" fechaFin="2020-10-22"  saldoInicial="1446811.00" saldoFinal="5421848.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-01-11" fechaFin="2019-02-11"  saldoInicial="51664899.00" saldoFinal="5400960.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-02-11" fechaFin="2019-03-11"  saldoInicial="5400960.00" saldoFinal="2925434.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-03-11" fechaFin="2019-04-11"  saldoInicial="2925434.00" saldoFinal="6048235.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-04-11" fechaFin="2019-05-11"  saldoInicial="6048235.00" saldoFinal="7439109.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-05-11" fechaFin="2019-06-11"  saldoInicial="7439109.00" saldoFinal="3590073.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-06-11" fechaFin="2019-07-11"  saldoInicial="3590073.00" saldoFinal="3638127.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-07-11" fechaFin="2019-08-11"  saldoInicial="3638127.00" saldoFinal="5554976.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-08-11" fechaFin="2019-09-11"  saldoInicial="5554976.00" saldoFinal="5675631.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-09-11" fechaFin="2019-10-11"  saldoInicial="5675631.00" saldoFinal="2740731.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-10-11" fechaFin="2019-11-11"  saldoInicial="2740731.00" saldoFinal="1014198.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-11-11" fechaFin="2019-12-11"  saldoInicial="1014198.00" saldoFinal="1544500.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2019-12-11" fechaFin="2020-01-11"  saldoInicial="1544500.00" saldoFinal="6136318.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2020-01-11" fechaFin="2020-02-11"  saldoInicial="6136318.00" saldoFinal="1778120.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2020-02-11" fechaFin="2020-03-11"  saldoInicial="1778120.00" saldoFinal="4226216.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2020-03-11" fechaFin="2020-04-11"  saldoInicial="4226216.00" saldoFinal="2367220.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2020-04-11" fechaFin="2020-05-11"  saldoInicial="2367220.00" saldoFinal="4785485.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2020-05-11" fechaFin="2020-06-11"  saldoInicial="4785485.00" saldoFinal="1320762.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2020-06-11" fechaFin="2020-07-11"  saldoInicial="1320762.00" saldoFinal="5329900.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2020-07-11" fechaFin="2020-08-11"  saldoInicial="5329900.00" saldoFinal="4636924.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2020-08-11" fechaFin="2020-09-11"  saldoInicial="4636924.00" saldoFinal="5144524.00" />
    <Estado_de_Cuenta NumeroCuenta="11901258" fechaInicio="2020-09-11" fechaFin="2020-10-11"  saldoInicial="5144524.00" saldoFinal="7107776.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2017-08-07" fechaFin="2017-09-07"  saldoInicial="72550649.00" saldoFinal="3999426.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2017-09-07" fechaFin="2017-10-07"  saldoInicial="3999426.00" saldoFinal="3403130.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2017-10-07" fechaFin="2017-11-07"  saldoInicial="3403130.00" saldoFinal="1915821.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2017-11-07" fechaFin="2017-12-07"  saldoInicial="1915821.00" saldoFinal="2846689.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2017-12-07" fechaFin="2018-01-07"  saldoInicial="2846689.00" saldoFinal="699911.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-01-07" fechaFin="2018-02-07"  saldoInicial="699911.00" saldoFinal="3973358.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-02-07" fechaFin="2018-03-07"  saldoInicial="3973358.00" saldoFinal="4552933.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-03-07" fechaFin="2018-04-07"  saldoInicial="4552933.00" saldoFinal="5974945.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-04-07" fechaFin="2018-05-07"  saldoInicial="5974945.00" saldoFinal="1636400.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-05-07" fechaFin="2018-06-07"  saldoInicial="1636400.00" saldoFinal="7186866.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-06-07" fechaFin="2018-07-07"  saldoInicial="7186866.00" saldoFinal="5037754.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-07-07" fechaFin="2018-08-07"  saldoInicial="5037754.00" saldoFinal="4554417.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-08-07" fechaFin="2018-09-07"  saldoInicial="4554417.00" saldoFinal="5192340.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-09-07" fechaFin="2018-10-07"  saldoInicial="5192340.00" saldoFinal="7385463.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-10-07" fechaFin="2018-11-07"  saldoInicial="7385463.00" saldoFinal="5089915.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-11-07" fechaFin="2018-12-07"  saldoInicial="5089915.00" saldoFinal="1425681.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2018-12-07" fechaFin="2019-01-07"  saldoInicial="1425681.00" saldoFinal="4102314.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-01-07" fechaFin="2019-02-07"  saldoInicial="4102314.00" saldoFinal="5820398.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-02-07" fechaFin="2019-03-07"  saldoInicial="5820398.00" saldoFinal="5255422.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-03-07" fechaFin="2019-04-07"  saldoInicial="5255422.00" saldoFinal="7375537.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-04-07" fechaFin="2019-05-07"  saldoInicial="7375537.00" saldoFinal="1514449.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-05-07" fechaFin="2019-06-07"  saldoInicial="1514449.00" saldoFinal="3715031.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-06-07" fechaFin="2019-07-07"  saldoInicial="3715031.00" saldoFinal="3148008.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-07-07" fechaFin="2019-08-07"  saldoInicial="3148008.00" saldoFinal="4132224.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-08-07" fechaFin="2019-09-07"  saldoInicial="4132224.00" saldoFinal="8622080.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-09-07" fechaFin="2019-10-07"  saldoInicial="8622080.00" saldoFinal="3826297.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-10-07" fechaFin="2019-11-07"  saldoInicial="3826297.00" saldoFinal="3597012.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-11-07" fechaFin="2019-12-07"  saldoInicial="3597012.00" saldoFinal="5645414.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2019-12-07" fechaFin="2020-01-07"  saldoInicial="5645414.00" saldoFinal="1859106.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2020-01-07" fechaFin="2020-02-07"  saldoInicial="1859106.00" saldoFinal="1188692.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2020-02-07" fechaFin="2020-03-07"  saldoInicial="1188692.00" saldoFinal="1470875.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2020-03-07" fechaFin="2020-04-07"  saldoInicial="1470875.00" saldoFinal="228746.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2020-04-07" fechaFin="2020-05-07"  saldoInicial="228746.00" saldoFinal="2984850.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2020-05-07" fechaFin="2020-06-07"  saldoInicial="2984850.00" saldoFinal="2133775.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2020-06-07" fechaFin="2020-07-07"  saldoInicial="2133775.00" saldoFinal="6881613.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2020-07-07" fechaFin="2020-08-07"  saldoInicial="6881613.00" saldoFinal="691464.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2020-08-07" fechaFin="2020-09-07"  saldoInicial="691464.00" saldoFinal="8016997.00" />
    <Estado_de_Cuenta NumeroCuenta="11575136" fechaInicio="2020-09-07" fechaFin="2020-10-07"  saldoInicial="8016997.00" saldoFinal="142634.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2015-03-07" fechaFin="2015-04-07"  saldoInicial="8157087.00" saldoFinal="2841058.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2015-04-07" fechaFin="2015-05-07"  saldoInicial="2841058.00" saldoFinal="4613301.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2015-05-07" fechaFin="2015-06-07"  saldoInicial="4613301.00" saldoFinal="5806382.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2015-06-07" fechaFin="2015-07-07"  saldoInicial="5806382.00" saldoFinal="7153571.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2015-07-07" fechaFin="2015-08-07"  saldoInicial="7153571.00" saldoFinal="6166474.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2015-08-07" fechaFin="2015-09-07"  saldoInicial="6166474.00" saldoFinal="7783794.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2015-09-07" fechaFin="2015-10-07"  saldoInicial="7783794.00" saldoFinal="7404351.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2015-10-07" fechaFin="2015-11-07"  saldoInicial="7404351.00" saldoFinal="6708158.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2015-11-07" fechaFin="2015-12-07"  saldoInicial="6708158.00" saldoFinal="8718781.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2015-12-07" fechaFin="2016-01-07"  saldoInicial="8718781.00" saldoFinal="5416888.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-01-07" fechaFin="2016-02-07"  saldoInicial="5416888.00" saldoFinal="270145.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-02-07" fechaFin="2016-03-07"  saldoInicial="270145.00" saldoFinal="4450654.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-03-07" fechaFin="2016-04-07"  saldoInicial="4450654.00" saldoFinal="8585923.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-04-07" fechaFin="2016-05-07"  saldoInicial="8585923.00" saldoFinal="4094441.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-05-07" fechaFin="2016-06-07"  saldoInicial="4094441.00" saldoFinal="323552.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-06-07" fechaFin="2016-07-07"  saldoInicial="323552.00" saldoFinal="8549972.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-07-07" fechaFin="2016-08-07"  saldoInicial="8549972.00" saldoFinal="772633.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-08-07" fechaFin="2016-09-07"  saldoInicial="772633.00" saldoFinal="3788287.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-09-07" fechaFin="2016-10-07"  saldoInicial="3788287.00" saldoFinal="6668999.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-10-07" fechaFin="2016-11-07"  saldoInicial="6668999.00" saldoFinal="8067530.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-11-07" fechaFin="2016-12-07"  saldoInicial="8067530.00" saldoFinal="1322771.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2016-12-07" fechaFin="2017-01-07"  saldoInicial="1322771.00" saldoFinal="3609318.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-01-07" fechaFin="2017-02-07"  saldoInicial="3609318.00" saldoFinal="206267.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-02-07" fechaFin="2017-03-07"  saldoInicial="206267.00" saldoFinal="8726325.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-03-07" fechaFin="2017-04-07"  saldoInicial="8726325.00" saldoFinal="2619470.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-04-07" fechaFin="2017-05-07"  saldoInicial="2619470.00" saldoFinal="3164363.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-05-07" fechaFin="2017-06-07"  saldoInicial="3164363.00" saldoFinal="2270157.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-06-07" fechaFin="2017-07-07"  saldoInicial="2270157.00" saldoFinal="1756818.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-07-07" fechaFin="2017-08-07"  saldoInicial="1756818.00" saldoFinal="7462706.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-08-07" fechaFin="2017-09-07"  saldoInicial="7462706.00" saldoFinal="3456702.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-09-07" fechaFin="2017-10-07"  saldoInicial="3456702.00" saldoFinal="3246666.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-10-07" fechaFin="2017-11-07"  saldoInicial="3246666.00" saldoFinal="8309480.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-11-07" fechaFin="2017-12-07"  saldoInicial="8309480.00" saldoFinal="5091399.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2017-12-07" fechaFin="2018-01-07"  saldoInicial="5091399.00" saldoFinal="8871689.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-01-07" fechaFin="2018-02-07"  saldoInicial="8871689.00" saldoFinal="3827273.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-02-07" fechaFin="2018-03-07"  saldoInicial="3827273.00" saldoFinal="1606183.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-03-07" fechaFin="2018-04-07"  saldoInicial="1606183.00" saldoFinal="11404.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-04-07" fechaFin="2018-05-07"  saldoInicial="11404.00" saldoFinal="3694351.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-05-07" fechaFin="2018-06-07"  saldoInicial="3694351.00" saldoFinal="5930851.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-06-07" fechaFin="2018-07-07"  saldoInicial="5930851.00" saldoFinal="1113767.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-07-07" fechaFin="2018-08-07"  saldoInicial="1113767.00" saldoFinal="2298487.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-08-07" fechaFin="2018-09-07"  saldoInicial="2298487.00" saldoFinal="8483047.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-09-07" fechaFin="2018-10-07"  saldoInicial="8483047.00" saldoFinal="1788987.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-10-07" fechaFin="2018-11-07"  saldoInicial="1788987.00" saldoFinal="5805128.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-11-07" fechaFin="2018-12-07"  saldoInicial="5805128.00" saldoFinal="5296792.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2018-12-07" fechaFin="2019-01-07"  saldoInicial="5296792.00" saldoFinal="8063495.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-01-07" fechaFin="2019-02-07"  saldoInicial="8063495.00" saldoFinal="7253124.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-02-07" fechaFin="2019-03-07"  saldoInicial="7253124.00" saldoFinal="465017.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-03-07" fechaFin="2019-04-07"  saldoInicial="465017.00" saldoFinal="3089306.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-04-07" fechaFin="2019-05-07"  saldoInicial="3089306.00" saldoFinal="6716797.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-05-07" fechaFin="2019-06-07"  saldoInicial="6716797.00" saldoFinal="2129690.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-06-07" fechaFin="2019-07-07"  saldoInicial="2129690.00" saldoFinal="3880249.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-07-07" fechaFin="2019-08-07"  saldoInicial="3880249.00" saldoFinal="1240945.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-08-07" fechaFin="2019-09-07"  saldoInicial="1240945.00" saldoFinal="1026396.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-09-07" fechaFin="2019-10-07"  saldoInicial="1026396.00" saldoFinal="343377.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-10-07" fechaFin="2019-11-07"  saldoInicial="343377.00" saldoFinal="8855382.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-11-07" fechaFin="2019-12-07"  saldoInicial="8855382.00" saldoFinal="6841749.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2019-12-07" fechaFin="2020-01-07"  saldoInicial="6841749.00" saldoFinal="3559246.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2020-01-07" fechaFin="2020-02-07"  saldoInicial="3559246.00" saldoFinal="4158999.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2020-02-07" fechaFin="2020-03-07"  saldoInicial="4158999.00" saldoFinal="4629692.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2020-03-07" fechaFin="2020-04-07"  saldoInicial="4629692.00" saldoFinal="2914403.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2020-04-07" fechaFin="2020-05-07"  saldoInicial="2914403.00" saldoFinal="1204567.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2020-05-07" fechaFin="2020-06-07"  saldoInicial="1204567.00" saldoFinal="3049207.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2020-06-07" fechaFin="2020-07-07"  saldoInicial="3049207.00" saldoFinal="5791141.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2020-07-07" fechaFin="2020-08-07"  saldoInicial="5791141.00" saldoFinal="3091085.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2020-08-07" fechaFin="2020-09-07"  saldoInicial="3091085.00" saldoFinal="423929.00" />
    <Estado_de_Cuenta NumeroCuenta="11893632" fechaInicio="2020-09-07" fechaFin="2020-10-07"  saldoInicial="423929.00" saldoFinal="758718.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2013-04-22" fechaFin="2013-05-22"  saldoInicial="26411934.00" saldoFinal="1501467.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2013-05-22" fechaFin="2013-06-22"  saldoInicial="1501467.00" saldoFinal="4702312.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2013-06-22" fechaFin="2013-07-22"  saldoInicial="4702312.00" saldoFinal="8394753.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2013-07-22" fechaFin="2013-08-22"  saldoInicial="8394753.00" saldoFinal="8701688.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2013-08-22" fechaFin="2013-09-22"  saldoInicial="8701688.00" saldoFinal="8478204.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2013-09-22" fechaFin="2013-10-22"  saldoInicial="8478204.00" saldoFinal="4831216.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2013-10-22" fechaFin="2013-11-22"  saldoInicial="4831216.00" saldoFinal="1228252.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2013-11-22" fechaFin="2013-12-22"  saldoInicial="1228252.00" saldoFinal="2037388.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2013-12-22" fechaFin="2014-01-22"  saldoInicial="2037388.00" saldoFinal="8505615.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-01-22" fechaFin="2014-02-22"  saldoInicial="8505615.00" saldoFinal="7162478.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-02-22" fechaFin="2014-03-22"  saldoInicial="7162478.00" saldoFinal="5904760.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-03-22" fechaFin="2014-04-22"  saldoInicial="5904760.00" saldoFinal="3215279.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-04-22" fechaFin="2014-05-22"  saldoInicial="3215279.00" saldoFinal="1735461.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-05-22" fechaFin="2014-06-22"  saldoInicial="1735461.00" saldoFinal="4103697.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-06-22" fechaFin="2014-07-22"  saldoInicial="4103697.00" saldoFinal="241039.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-07-22" fechaFin="2014-08-22"  saldoInicial="241039.00" saldoFinal="5192091.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-08-22" fechaFin="2014-09-22"  saldoInicial="5192091.00" saldoFinal="5419033.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-09-22" fechaFin="2014-10-22"  saldoInicial="5419033.00" saldoFinal="746715.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-10-22" fechaFin="2014-11-22"  saldoInicial="746715.00" saldoFinal="5782599.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-11-22" fechaFin="2014-12-22"  saldoInicial="5782599.00" saldoFinal="1861245.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2014-12-22" fechaFin="2015-01-22"  saldoInicial="1861245.00" saldoFinal="921580.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-01-22" fechaFin="2015-02-22"  saldoInicial="921580.00" saldoFinal="4261650.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-02-22" fechaFin="2015-03-22"  saldoInicial="4261650.00" saldoFinal="683608.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-03-22" fechaFin="2015-04-22"  saldoInicial="683608.00" saldoFinal="3373595.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-04-22" fechaFin="2015-05-22"  saldoInicial="3373595.00" saldoFinal="3314642.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-05-22" fechaFin="2015-06-22"  saldoInicial="3314642.00" saldoFinal="5107861.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-06-22" fechaFin="2015-07-22"  saldoInicial="5107861.00" saldoFinal="7955450.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-07-22" fechaFin="2015-08-22"  saldoInicial="7955450.00" saldoFinal="8703505.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-08-22" fechaFin="2015-09-22"  saldoInicial="8703505.00" saldoFinal="2118941.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-09-22" fechaFin="2015-10-22"  saldoInicial="2118941.00" saldoFinal="7725809.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-10-22" fechaFin="2015-11-22"  saldoInicial="7725809.00" saldoFinal="4572683.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-11-22" fechaFin="2015-12-22"  saldoInicial="4572683.00" saldoFinal="285593.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2015-12-22" fechaFin="2016-01-22"  saldoInicial="285593.00" saldoFinal="1996578.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-01-22" fechaFin="2016-02-22"  saldoInicial="1996578.00" saldoFinal="4811149.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-02-22" fechaFin="2016-03-22"  saldoInicial="4811149.00" saldoFinal="1646576.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-03-22" fechaFin="2016-04-22"  saldoInicial="1646576.00" saldoFinal="3810176.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-04-22" fechaFin="2016-05-22"  saldoInicial="3810176.00" saldoFinal="7598833.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-05-22" fechaFin="2016-06-22"  saldoInicial="7598833.00" saldoFinal="2260817.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-06-22" fechaFin="2016-07-22"  saldoInicial="2260817.00" saldoFinal="302901.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-07-22" fechaFin="2016-08-22"  saldoInicial="302901.00" saldoFinal="2631937.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-08-22" fechaFin="2016-09-22"  saldoInicial="2631937.00" saldoFinal="2801573.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-09-22" fechaFin="2016-10-22"  saldoInicial="2801573.00" saldoFinal="8351741.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-10-22" fechaFin="2016-11-22"  saldoInicial="8351741.00" saldoFinal="6404694.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-11-22" fechaFin="2016-12-22"  saldoInicial="6404694.00" saldoFinal="7183684.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2016-12-22" fechaFin="2017-01-22"  saldoInicial="7183684.00" saldoFinal="3003200.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-01-22" fechaFin="2017-02-22"  saldoInicial="3003200.00" saldoFinal="3109015.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-02-22" fechaFin="2017-03-22"  saldoInicial="3109015.00" saldoFinal="493672.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-03-22" fechaFin="2017-04-22"  saldoInicial="493672.00" saldoFinal="4311527.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-04-22" fechaFin="2017-05-22"  saldoInicial="4311527.00" saldoFinal="6696336.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-05-22" fechaFin="2017-06-22"  saldoInicial="6696336.00" saldoFinal="5088673.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-06-22" fechaFin="2017-07-22"  saldoInicial="5088673.00" saldoFinal="7348744.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-07-22" fechaFin="2017-08-22"  saldoInicial="7348744.00" saldoFinal="2090684.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-08-22" fechaFin="2017-09-22"  saldoInicial="2090684.00" saldoFinal="1732027.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-09-22" fechaFin="2017-10-22"  saldoInicial="1732027.00" saldoFinal="943305.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-10-22" fechaFin="2017-11-22"  saldoInicial="943305.00" saldoFinal="5787161.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-11-22" fechaFin="2017-12-22"  saldoInicial="5787161.00" saldoFinal="8524916.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2017-12-22" fechaFin="2018-01-22"  saldoInicial="8524916.00" saldoFinal="1197126.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-01-22" fechaFin="2018-02-22"  saldoInicial="1197126.00" saldoFinal="7797667.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-02-22" fechaFin="2018-03-22"  saldoInicial="7797667.00" saldoFinal="5335598.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-03-22" fechaFin="2018-04-22"  saldoInicial="5335598.00" saldoFinal="5803271.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-04-22" fechaFin="2018-05-22"  saldoInicial="5803271.00" saldoFinal="8821758.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-05-22" fechaFin="2018-06-22"  saldoInicial="8821758.00" saldoFinal="7499504.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-06-22" fechaFin="2018-07-22"  saldoInicial="7499504.00" saldoFinal="4111729.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-07-22" fechaFin="2018-08-22"  saldoInicial="4111729.00" saldoFinal="1275907.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-08-22" fechaFin="2018-09-22"  saldoInicial="1275907.00" saldoFinal="4974920.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-09-22" fechaFin="2018-10-22"  saldoInicial="4974920.00" saldoFinal="284086.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-10-22" fechaFin="2018-11-22"  saldoInicial="284086.00" saldoFinal="8542687.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-11-22" fechaFin="2018-12-22"  saldoInicial="8542687.00" saldoFinal="1809092.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2018-12-22" fechaFin="2019-01-22"  saldoInicial="1809092.00" saldoFinal="537785.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-01-22" fechaFin="2019-02-22"  saldoInicial="537785.00" saldoFinal="4989876.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-02-22" fechaFin="2019-03-22"  saldoInicial="4989876.00" saldoFinal="1182294.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-03-22" fechaFin="2019-04-22"  saldoInicial="1182294.00" saldoFinal="5711503.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-04-22" fechaFin="2019-05-22"  saldoInicial="5711503.00" saldoFinal="2088734.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-05-22" fechaFin="2019-06-22"  saldoInicial="2088734.00" saldoFinal="4595440.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-06-22" fechaFin="2019-07-22"  saldoInicial="4595440.00" saldoFinal="6260723.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-07-22" fechaFin="2019-08-22"  saldoInicial="6260723.00" saldoFinal="8295609.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-08-22" fechaFin="2019-09-22"  saldoInicial="8295609.00" saldoFinal="646450.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-09-22" fechaFin="2019-10-22"  saldoInicial="646450.00" saldoFinal="3925664.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-10-22" fechaFin="2019-11-22"  saldoInicial="3925664.00" saldoFinal="6126271.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-11-22" fechaFin="2019-12-22"  saldoInicial="6126271.00" saldoFinal="6828907.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2019-12-22" fechaFin="2020-01-22"  saldoInicial="6828907.00" saldoFinal="7771260.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2020-01-22" fechaFin="2020-02-22"  saldoInicial="7771260.00" saldoFinal="8985680.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2020-02-22" fechaFin="2020-03-22"  saldoInicial="8985680.00" saldoFinal="5991053.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2020-03-22" fechaFin="2020-04-22"  saldoInicial="5991053.00" saldoFinal="6289539.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2020-04-22" fechaFin="2020-05-22"  saldoInicial="6289539.00" saldoFinal="6273584.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2020-05-22" fechaFin="2020-06-22"  saldoInicial="6273584.00" saldoFinal="412280.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2020-06-22" fechaFin="2020-07-22"  saldoInicial="412280.00" saldoFinal="3126983.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2020-07-22" fechaFin="2020-08-22"  saldoInicial="3126983.00" saldoFinal="75818.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2020-08-22" fechaFin="2020-09-22"  saldoInicial="75818.00" saldoFinal="5805888.00" />
    <Estado_de_Cuenta NumeroCuenta="11275551" fechaInicio="2020-09-22" fechaFin="2020-10-22"  saldoInicial="5805888.00" saldoFinal="6976498.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2010-07-17" fechaFin="2010-08-17"  saldoInicial="30743099.00" saldoFinal="3758652.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2010-08-17" fechaFin="2010-09-17"  saldoInicial="3758652.00" saldoFinal="6795220.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2010-09-17" fechaFin="2010-10-17"  saldoInicial="6795220.00" saldoFinal="1123950.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2010-10-17" fechaFin="2010-11-17"  saldoInicial="1123950.00" saldoFinal="582758.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2010-11-17" fechaFin="2010-12-17"  saldoInicial="582758.00" saldoFinal="4150204.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2010-12-17" fechaFin="2011-01-17"  saldoInicial="4150204.00" saldoFinal="7596650.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-01-17" fechaFin="2011-02-17"  saldoInicial="7596650.00" saldoFinal="7103748.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-02-17" fechaFin="2011-03-17"  saldoInicial="7103748.00" saldoFinal="4376065.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-03-17" fechaFin="2011-04-17"  saldoInicial="4376065.00" saldoFinal="3894521.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-04-17" fechaFin="2011-05-17"  saldoInicial="3894521.00" saldoFinal="4847184.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-05-17" fechaFin="2011-06-17"  saldoInicial="4847184.00" saldoFinal="6259884.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-06-17" fechaFin="2011-07-17"  saldoInicial="6259884.00" saldoFinal="7425251.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-07-17" fechaFin="2011-08-17"  saldoInicial="7425251.00" saldoFinal="5930095.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-08-17" fechaFin="2011-09-17"  saldoInicial="5930095.00" saldoFinal="5852249.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-09-17" fechaFin="2011-10-17"  saldoInicial="5852249.00" saldoFinal="3526585.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-10-17" fechaFin="2011-11-17"  saldoInicial="3526585.00" saldoFinal="2132737.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-11-17" fechaFin="2011-12-17"  saldoInicial="2132737.00" saldoFinal="6712033.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2011-12-17" fechaFin="2012-01-17"  saldoInicial="6712033.00" saldoFinal="7112401.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-01-17" fechaFin="2012-02-17"  saldoInicial="7112401.00" saldoFinal="6336427.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-02-17" fechaFin="2012-03-17"  saldoInicial="6336427.00" saldoFinal="8847897.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-03-17" fechaFin="2012-04-17"  saldoInicial="8847897.00" saldoFinal="1779535.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-04-17" fechaFin="2012-05-17"  saldoInicial="1779535.00" saldoFinal="8454406.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-05-17" fechaFin="2012-06-17"  saldoInicial="8454406.00" saldoFinal="6678458.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-06-17" fechaFin="2012-07-17"  saldoInicial="6678458.00" saldoFinal="1372970.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-07-17" fechaFin="2012-08-17"  saldoInicial="1372970.00" saldoFinal="3567030.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-08-17" fechaFin="2012-09-17"  saldoInicial="3567030.00" saldoFinal="2542950.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-09-17" fechaFin="2012-10-17"  saldoInicial="2542950.00" saldoFinal="3321311.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-10-17" fechaFin="2012-11-17"  saldoInicial="3321311.00" saldoFinal="8069387.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-11-17" fechaFin="2012-12-17"  saldoInicial="8069387.00" saldoFinal="1893807.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2012-12-17" fechaFin="2013-01-17"  saldoInicial="1893807.00" saldoFinal="8379714.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-01-17" fechaFin="2013-02-17"  saldoInicial="8379714.00" saldoFinal="3829155.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-02-17" fechaFin="2013-03-17"  saldoInicial="3829155.00" saldoFinal="6422746.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-03-17" fechaFin="2013-04-17"  saldoInicial="6422746.00" saldoFinal="957536.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-04-17" fechaFin="2013-05-17"  saldoInicial="957536.00" saldoFinal="3586949.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-05-17" fechaFin="2013-06-17"  saldoInicial="3586949.00" saldoFinal="3282283.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-06-17" fechaFin="2013-07-17"  saldoInicial="3282283.00" saldoFinal="8177776.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-07-17" fechaFin="2013-08-17"  saldoInicial="8177776.00" saldoFinal="7806254.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-08-17" fechaFin="2013-09-17"  saldoInicial="7806254.00" saldoFinal="6304035.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-09-17" fechaFin="2013-10-17"  saldoInicial="6304035.00" saldoFinal="6954475.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-10-17" fechaFin="2013-11-17"  saldoInicial="6954475.00" saldoFinal="6381202.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-11-17" fechaFin="2013-12-17"  saldoInicial="6381202.00" saldoFinal="1929179.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2013-12-17" fechaFin="2014-01-17"  saldoInicial="1929179.00" saldoFinal="5440111.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-01-17" fechaFin="2014-02-17"  saldoInicial="5440111.00" saldoFinal="7102197.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-02-17" fechaFin="2014-03-17"  saldoInicial="7102197.00" saldoFinal="6450093.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-03-17" fechaFin="2014-04-17"  saldoInicial="6450093.00" saldoFinal="1135617.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-04-17" fechaFin="2014-05-17"  saldoInicial="1135617.00" saldoFinal="6490847.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-05-17" fechaFin="2014-06-17"  saldoInicial="6490847.00" saldoFinal="3218841.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-06-17" fechaFin="2014-07-17"  saldoInicial="3218841.00" saldoFinal="5708111.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-07-17" fechaFin="2014-08-17"  saldoInicial="5708111.00" saldoFinal="7391865.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-08-17" fechaFin="2014-09-17"  saldoInicial="7391865.00" saldoFinal="4340257.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-09-17" fechaFin="2014-10-17"  saldoInicial="4340257.00" saldoFinal="5843658.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-10-17" fechaFin="2014-11-17"  saldoInicial="5843658.00" saldoFinal="598283.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-11-17" fechaFin="2014-12-17"  saldoInicial="598283.00" saldoFinal="7410414.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2014-12-17" fechaFin="2015-01-17"  saldoInicial="7410414.00" saldoFinal="2797584.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-01-17" fechaFin="2015-02-17"  saldoInicial="2797584.00" saldoFinal="545003.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-02-17" fechaFin="2015-03-17"  saldoInicial="545003.00" saldoFinal="8437168.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-03-17" fechaFin="2015-04-17"  saldoInicial="8437168.00" saldoFinal="1241043.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-04-17" fechaFin="2015-05-17"  saldoInicial="1241043.00" saldoFinal="6070981.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-05-17" fechaFin="2015-06-17"  saldoInicial="6070981.00" saldoFinal="8927753.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-06-17" fechaFin="2015-07-17"  saldoInicial="8927753.00" saldoFinal="317749.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-07-17" fechaFin="2015-08-17"  saldoInicial="317749.00" saldoFinal="4669734.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-08-17" fechaFin="2015-09-17"  saldoInicial="4669734.00" saldoFinal="3405885.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-09-17" fechaFin="2015-10-17"  saldoInicial="3405885.00" saldoFinal="5939839.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-10-17" fechaFin="2015-11-17"  saldoInicial="5939839.00" saldoFinal="1721477.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-11-17" fechaFin="2015-12-17"  saldoInicial="1721477.00" saldoFinal="4320605.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2015-12-17" fechaFin="2016-01-17"  saldoInicial="4320605.00" saldoFinal="1642882.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-01-17" fechaFin="2016-02-17"  saldoInicial="1642882.00" saldoFinal="1695780.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-02-17" fechaFin="2016-03-17"  saldoInicial="1695780.00" saldoFinal="4600872.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-03-17" fechaFin="2016-04-17"  saldoInicial="4600872.00" saldoFinal="5366486.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-04-17" fechaFin="2016-05-17"  saldoInicial="5366486.00" saldoFinal="5110548.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-05-17" fechaFin="2016-06-17"  saldoInicial="5110548.00" saldoFinal="2227496.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-06-17" fechaFin="2016-07-17"  saldoInicial="2227496.00" saldoFinal="4458620.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-07-17" fechaFin="2016-08-17"  saldoInicial="4458620.00" saldoFinal="4518812.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-08-17" fechaFin="2016-09-17"  saldoInicial="4518812.00" saldoFinal="5800671.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-09-17" fechaFin="2016-10-17"  saldoInicial="5800671.00" saldoFinal="7155118.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-10-17" fechaFin="2016-11-17"  saldoInicial="7155118.00" saldoFinal="8444856.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-11-17" fechaFin="2016-12-17"  saldoInicial="8444856.00" saldoFinal="8016906.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2016-12-17" fechaFin="2017-01-17"  saldoInicial="8016906.00" saldoFinal="769286.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-01-17" fechaFin="2017-02-17"  saldoInicial="769286.00" saldoFinal="598042.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-02-17" fechaFin="2017-03-17"  saldoInicial="598042.00" saldoFinal="1106597.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-03-17" fechaFin="2017-04-17"  saldoInicial="1106597.00" saldoFinal="3444308.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-04-17" fechaFin="2017-05-17"  saldoInicial="3444308.00" saldoFinal="3948294.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-05-17" fechaFin="2017-06-17"  saldoInicial="3948294.00" saldoFinal="2376640.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-06-17" fechaFin="2017-07-17"  saldoInicial="2376640.00" saldoFinal="7400726.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-07-17" fechaFin="2017-08-17"  saldoInicial="7400726.00" saldoFinal="3263194.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-08-17" fechaFin="2017-09-17"  saldoInicial="3263194.00" saldoFinal="3090381.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-09-17" fechaFin="2017-10-17"  saldoInicial="3090381.00" saldoFinal="6776793.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-10-17" fechaFin="2017-11-17"  saldoInicial="6776793.00" saldoFinal="8213961.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-11-17" fechaFin="2017-12-17"  saldoInicial="8213961.00" saldoFinal="7263920.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2017-12-17" fechaFin="2018-01-17"  saldoInicial="7263920.00" saldoFinal="5574190.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-01-17" fechaFin="2018-02-17"  saldoInicial="5574190.00" saldoFinal="2809579.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-02-17" fechaFin="2018-03-17"  saldoInicial="2809579.00" saldoFinal="5288747.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-03-17" fechaFin="2018-04-17"  saldoInicial="5288747.00" saldoFinal="483500.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-04-17" fechaFin="2018-05-17"  saldoInicial="483500.00" saldoFinal="2238577.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-05-17" fechaFin="2018-06-17"  saldoInicial="2238577.00" saldoFinal="5923242.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-06-17" fechaFin="2018-07-17"  saldoInicial="5923242.00" saldoFinal="8390988.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-07-17" fechaFin="2018-08-17"  saldoInicial="8390988.00" saldoFinal="5457701.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-08-17" fechaFin="2018-09-17"  saldoInicial="5457701.00" saldoFinal="568755.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-09-17" fechaFin="2018-10-17"  saldoInicial="568755.00" saldoFinal="6944398.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-10-17" fechaFin="2018-11-17"  saldoInicial="6944398.00" saldoFinal="1000164.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-11-17" fechaFin="2018-12-17"  saldoInicial="1000164.00" saldoFinal="7400961.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2018-12-17" fechaFin="2019-01-17"  saldoInicial="7400961.00" saldoFinal="1693002.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-01-17" fechaFin="2019-02-17"  saldoInicial="1693002.00" saldoFinal="1255779.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-02-17" fechaFin="2019-03-17"  saldoInicial="1255779.00" saldoFinal="3603289.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-03-17" fechaFin="2019-04-17"  saldoInicial="3603289.00" saldoFinal="2075639.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-04-17" fechaFin="2019-05-17"  saldoInicial="2075639.00" saldoFinal="6797844.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-05-17" fechaFin="2019-06-17"  saldoInicial="6797844.00" saldoFinal="1299852.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-06-17" fechaFin="2019-07-17"  saldoInicial="1299852.00" saldoFinal="504129.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-07-17" fechaFin="2019-08-17"  saldoInicial="504129.00" saldoFinal="4945397.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-08-17" fechaFin="2019-09-17"  saldoInicial="4945397.00" saldoFinal="1084960.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-09-17" fechaFin="2019-10-17"  saldoInicial="1084960.00" saldoFinal="8983875.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-10-17" fechaFin="2019-11-17"  saldoInicial="8983875.00" saldoFinal="894739.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-11-17" fechaFin="2019-12-17"  saldoInicial="894739.00" saldoFinal="5584784.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2019-12-17" fechaFin="2020-01-17"  saldoInicial="5584784.00" saldoFinal="1935457.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2020-01-17" fechaFin="2020-02-17"  saldoInicial="1935457.00" saldoFinal="6159168.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2020-02-17" fechaFin="2020-03-17"  saldoInicial="6159168.00" saldoFinal="6474288.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2020-03-17" fechaFin="2020-04-17"  saldoInicial="6474288.00" saldoFinal="6686933.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2020-04-17" fechaFin="2020-05-17"  saldoInicial="6686933.00" saldoFinal="6657571.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2020-05-17" fechaFin="2020-06-17"  saldoInicial="6657571.00" saldoFinal="3616089.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2020-06-17" fechaFin="2020-07-17"  saldoInicial="3616089.00" saldoFinal="3173355.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2020-07-17" fechaFin="2020-08-17"  saldoInicial="3173355.00" saldoFinal="7887643.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2020-08-17" fechaFin="2020-09-17"  saldoInicial="7887643.00" saldoFinal="5766862.00" />
    <Estado_de_Cuenta NumeroCuenta="11208369" fechaInicio="2020-09-17" fechaFin="2020-10-17"  saldoInicial="5766862.00" saldoFinal="8709941.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2012-05-11" fechaFin="2012-06-11"  saldoInicial="68939625.00" saldoFinal="1395640.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2012-06-11" fechaFin="2012-07-11"  saldoInicial="1395640.00" saldoFinal="4660783.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2012-07-11" fechaFin="2012-08-11"  saldoInicial="4660783.00" saldoFinal="6997289.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2012-08-11" fechaFin="2012-09-11"  saldoInicial="6997289.00" saldoFinal="8318881.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2012-09-11" fechaFin="2012-10-11"  saldoInicial="8318881.00" saldoFinal="5330113.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2012-10-11" fechaFin="2012-11-11"  saldoInicial="5330113.00" saldoFinal="3665260.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2012-11-11" fechaFin="2012-12-11"  saldoInicial="3665260.00" saldoFinal="3964864.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2012-12-11" fechaFin="2013-01-11"  saldoInicial="3964864.00" saldoFinal="2351326.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-01-11" fechaFin="2013-02-11"  saldoInicial="2351326.00" saldoFinal="1808455.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-02-11" fechaFin="2013-03-11"  saldoInicial="1808455.00" saldoFinal="4546177.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-03-11" fechaFin="2013-04-11"  saldoInicial="4546177.00" saldoFinal="1299137.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-04-11" fechaFin="2013-05-11"  saldoInicial="1299137.00" saldoFinal="1677424.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-05-11" fechaFin="2013-06-11"  saldoInicial="1677424.00" saldoFinal="3500604.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-06-11" fechaFin="2013-07-11"  saldoInicial="3500604.00" saldoFinal="5466296.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-07-11" fechaFin="2013-08-11"  saldoInicial="5466296.00" saldoFinal="7068732.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-08-11" fechaFin="2013-09-11"  saldoInicial="7068732.00" saldoFinal="2659991.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-09-11" fechaFin="2013-10-11"  saldoInicial="2659991.00" saldoFinal="3123426.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-10-11" fechaFin="2013-11-11"  saldoInicial="3123426.00" saldoFinal="6236330.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-11-11" fechaFin="2013-12-11"  saldoInicial="6236330.00" saldoFinal="6939767.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2013-12-11" fechaFin="2014-01-11"  saldoInicial="6939767.00" saldoFinal="6351541.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-01-11" fechaFin="2014-02-11"  saldoInicial="6351541.00" saldoFinal="6753591.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-02-11" fechaFin="2014-03-11"  saldoInicial="6753591.00" saldoFinal="2600964.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-03-11" fechaFin="2014-04-11"  saldoInicial="2600964.00" saldoFinal="1904242.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-04-11" fechaFin="2014-05-11"  saldoInicial="1904242.00" saldoFinal="4280633.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-05-11" fechaFin="2014-06-11"  saldoInicial="4280633.00" saldoFinal="634524.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-06-11" fechaFin="2014-07-11"  saldoInicial="634524.00" saldoFinal="3748161.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-07-11" fechaFin="2014-08-11"  saldoInicial="3748161.00" saldoFinal="329504.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-08-11" fechaFin="2014-09-11"  saldoInicial="329504.00" saldoFinal="1986167.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-09-11" fechaFin="2014-10-11"  saldoInicial="1986167.00" saldoFinal="3026831.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-10-11" fechaFin="2014-11-11"  saldoInicial="3026831.00" saldoFinal="1425322.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-11-11" fechaFin="2014-12-11"  saldoInicial="1425322.00" saldoFinal="2040513.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2014-12-11" fechaFin="2015-01-11"  saldoInicial="2040513.00" saldoFinal="8526025.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-01-11" fechaFin="2015-02-11"  saldoInicial="8526025.00" saldoFinal="784105.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-02-11" fechaFin="2015-03-11"  saldoInicial="784105.00" saldoFinal="6475149.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-03-11" fechaFin="2015-04-11"  saldoInicial="6475149.00" saldoFinal="7074674.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-04-11" fechaFin="2015-05-11"  saldoInicial="7074674.00" saldoFinal="1261245.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-05-11" fechaFin="2015-06-11"  saldoInicial="1261245.00" saldoFinal="7792329.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-06-11" fechaFin="2015-07-11"  saldoInicial="7792329.00" saldoFinal="7061939.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-07-11" fechaFin="2015-08-11"  saldoInicial="7061939.00" saldoFinal="3966914.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-08-11" fechaFin="2015-09-11"  saldoInicial="3966914.00" saldoFinal="5017192.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-09-11" fechaFin="2015-10-11"  saldoInicial="5017192.00" saldoFinal="180331.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-10-11" fechaFin="2015-11-11"  saldoInicial="180331.00" saldoFinal="4496998.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-11-11" fechaFin="2015-12-11"  saldoInicial="4496998.00" saldoFinal="6338278.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2015-12-11" fechaFin="2016-01-11"  saldoInicial="6338278.00" saldoFinal="5024689.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-01-11" fechaFin="2016-02-11"  saldoInicial="5024689.00" saldoFinal="6191340.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-02-11" fechaFin="2016-03-11"  saldoInicial="6191340.00" saldoFinal="4982902.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-03-11" fechaFin="2016-04-11"  saldoInicial="4982902.00" saldoFinal="8522099.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-04-11" fechaFin="2016-05-11"  saldoInicial="8522099.00" saldoFinal="2813770.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-05-11" fechaFin="2016-06-11"  saldoInicial="2813770.00" saldoFinal="8473590.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-06-11" fechaFin="2016-07-11"  saldoInicial="8473590.00" saldoFinal="124175.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-07-11" fechaFin="2016-08-11"  saldoInicial="124175.00" saldoFinal="8051276.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-08-11" fechaFin="2016-09-11"  saldoInicial="8051276.00" saldoFinal="5079947.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-09-11" fechaFin="2016-10-11"  saldoInicial="5079947.00" saldoFinal="5058200.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-10-11" fechaFin="2016-11-11"  saldoInicial="5058200.00" saldoFinal="5787378.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-11-11" fechaFin="2016-12-11"  saldoInicial="5787378.00" saldoFinal="6913534.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2016-12-11" fechaFin="2017-01-11"  saldoInicial="6913534.00" saldoFinal="5442350.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-01-11" fechaFin="2017-02-11"  saldoInicial="5442350.00" saldoFinal="2851158.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-02-11" fechaFin="2017-03-11"  saldoInicial="2851158.00" saldoFinal="5732137.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-03-11" fechaFin="2017-04-11"  saldoInicial="5732137.00" saldoFinal="5048583.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-04-11" fechaFin="2017-05-11"  saldoInicial="5048583.00" saldoFinal="2450899.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-05-11" fechaFin="2017-06-11"  saldoInicial="2450899.00" saldoFinal="3824625.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-06-11" fechaFin="2017-07-11"  saldoInicial="3824625.00" saldoFinal="534052.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-07-11" fechaFin="2017-08-11"  saldoInicial="534052.00" saldoFinal="2083267.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-08-11" fechaFin="2017-09-11"  saldoInicial="2083267.00" saldoFinal="3101555.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-09-11" fechaFin="2017-10-11"  saldoInicial="3101555.00" saldoFinal="8104207.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-10-11" fechaFin="2017-11-11"  saldoInicial="8104207.00" saldoFinal="7204818.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-11-11" fechaFin="2017-12-11"  saldoInicial="7204818.00" saldoFinal="583338.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2017-12-11" fechaFin="2018-01-11"  saldoInicial="583338.00" saldoFinal="3962194.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-01-11" fechaFin="2018-02-11"  saldoInicial="3962194.00" saldoFinal="5872968.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-02-11" fechaFin="2018-03-11"  saldoInicial="5872968.00" saldoFinal="1949935.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-03-11" fechaFin="2018-04-11"  saldoInicial="1949935.00" saldoFinal="168414.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-04-11" fechaFin="2018-05-11"  saldoInicial="168414.00" saldoFinal="178409.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-05-11" fechaFin="2018-06-11"  saldoInicial="178409.00" saldoFinal="4105132.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-06-11" fechaFin="2018-07-11"  saldoInicial="4105132.00" saldoFinal="6491266.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-07-11" fechaFin="2018-08-11"  saldoInicial="6491266.00" saldoFinal="3647983.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-08-11" fechaFin="2018-09-11"  saldoInicial="3647983.00" saldoFinal="6999922.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-09-11" fechaFin="2018-10-11"  saldoInicial="6999922.00" saldoFinal="2071461.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-10-11" fechaFin="2018-11-11"  saldoInicial="2071461.00" saldoFinal="1437588.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-11-11" fechaFin="2018-12-11"  saldoInicial="1437588.00" saldoFinal="136363.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2018-12-11" fechaFin="2019-01-11"  saldoInicial="136363.00" saldoFinal="4991633.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-01-11" fechaFin="2019-02-11"  saldoInicial="4991633.00" saldoFinal="7152154.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-02-11" fechaFin="2019-03-11"  saldoInicial="7152154.00" saldoFinal="6368351.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-03-11" fechaFin="2019-04-11"  saldoInicial="6368351.00" saldoFinal="417186.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-04-11" fechaFin="2019-05-11"  saldoInicial="417186.00" saldoFinal="953371.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-05-11" fechaFin="2019-06-11"  saldoInicial="953371.00" saldoFinal="808575.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-06-11" fechaFin="2019-07-11"  saldoInicial="808575.00" saldoFinal="2407686.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-07-11" fechaFin="2019-08-11"  saldoInicial="2407686.00" saldoFinal="8492647.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-08-11" fechaFin="2019-09-11"  saldoInicial="8492647.00" saldoFinal="3885392.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-09-11" fechaFin="2019-10-11"  saldoInicial="3885392.00" saldoFinal="8974977.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-10-11" fechaFin="2019-11-11"  saldoInicial="8974977.00" saldoFinal="3422826.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-11-11" fechaFin="2019-12-11"  saldoInicial="3422826.00" saldoFinal="8376830.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2019-12-11" fechaFin="2020-01-11"  saldoInicial="8376830.00" saldoFinal="2726179.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2020-01-11" fechaFin="2020-02-11"  saldoInicial="2726179.00" saldoFinal="3271356.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2020-02-11" fechaFin="2020-03-11"  saldoInicial="3271356.00" saldoFinal="7539257.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2020-03-11" fechaFin="2020-04-11"  saldoInicial="7539257.00" saldoFinal="3138026.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2020-04-11" fechaFin="2020-05-11"  saldoInicial="3138026.00" saldoFinal="4230875.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2020-05-11" fechaFin="2020-06-11"  saldoInicial="4230875.00" saldoFinal="8343024.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2020-06-11" fechaFin="2020-07-11"  saldoInicial="8343024.00" saldoFinal="1637378.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2020-07-11" fechaFin="2020-08-11"  saldoInicial="1637378.00" saldoFinal="4954330.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2020-08-11" fechaFin="2020-09-11"  saldoInicial="4954330.00" saldoFinal="3806714.00" />
    <Estado_de_Cuenta NumeroCuenta="11606859" fechaInicio="2020-09-11" fechaFin="2020-10-11"  saldoInicial="3806714.00" saldoFinal="5921236.00" />
    <Estado_de_Cuenta NumeroCuenta="11316046" fechaInicio="2020-03-28" fechaFin="2020-04-28"  saldoInicial="47710940.00" saldoFinal="3701754.00" />
    <Estado_de_Cuenta NumeroCuenta="11316046" fechaInicio="2020-04-28" fechaFin="2020-05-28"  saldoInicial="3701754.00" saldoFinal="5986078.00" />
    <Estado_de_Cuenta NumeroCuenta="11316046" fechaInicio="2020-05-28" fechaFin="2020-06-28"  saldoInicial="5986078.00" saldoFinal="7207510.00" />
    <Estado_de_Cuenta NumeroCuenta="11316046" fechaInicio="2020-06-28" fechaFin="2020-07-28"  saldoInicial="7207510.00" saldoFinal="5555492.00" />
    <Estado_de_Cuenta NumeroCuenta="11316046" fechaInicio="2020-07-28" fechaFin="2020-08-28"  saldoInicial="5555492.00" saldoFinal="4030023.00" />
    <Estado_de_Cuenta NumeroCuenta="11316046" fechaInicio="2020-08-28" fechaFin="2020-09-28"  saldoInicial="4030023.00" saldoFinal="3518173.00" />
    <Estado_de_Cuenta NumeroCuenta="11316046" fechaInicio="2020-09-28" fechaFin="2020-10-28"  saldoInicial="3518173.00" saldoFinal="7169451.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2016-08-28" fechaFin="2016-09-28"  saldoInicial="26745278.00" saldoFinal="4912653.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2016-09-28" fechaFin="2016-10-28"  saldoInicial="4912653.00" saldoFinal="179687.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2016-10-28" fechaFin="2016-11-28"  saldoInicial="179687.00" saldoFinal="2089034.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2016-11-28" fechaFin="2016-12-28"  saldoInicial="2089034.00" saldoFinal="6937274.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2016-12-28" fechaFin="2017-01-28"  saldoInicial="6937274.00" saldoFinal="5496046.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-01-28" fechaFin="2017-02-28"  saldoInicial="5496046.00" saldoFinal="7179565.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-02-28" fechaFin="2017-03-28"  saldoInicial="7179565.00" saldoFinal="6298845.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-03-28" fechaFin="2017-04-28"  saldoInicial="6298845.00" saldoFinal="5226614.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-04-28" fechaFin="2017-05-28"  saldoInicial="5226614.00" saldoFinal="4685783.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-05-28" fechaFin="2017-06-28"  saldoInicial="4685783.00" saldoFinal="7222032.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-06-28" fechaFin="2017-07-28"  saldoInicial="7222032.00" saldoFinal="4245696.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-07-28" fechaFin="2017-08-28"  saldoInicial="4245696.00" saldoFinal="7490426.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-08-28" fechaFin="2017-09-28"  saldoInicial="7490426.00" saldoFinal="3282798.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-09-28" fechaFin="2017-10-28"  saldoInicial="3282798.00" saldoFinal="5497514.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-10-28" fechaFin="2017-11-28"  saldoInicial="5497514.00" saldoFinal="7825664.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-11-28" fechaFin="2017-12-28"  saldoInicial="7825664.00" saldoFinal="3403301.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2017-12-28" fechaFin="2018-01-28"  saldoInicial="3403301.00" saldoFinal="5107946.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-01-28" fechaFin="2018-02-28"  saldoInicial="5107946.00" saldoFinal="1937739.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-02-28" fechaFin="2018-03-28"  saldoInicial="1937739.00" saldoFinal="320872.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-03-28" fechaFin="2018-04-28"  saldoInicial="320872.00" saldoFinal="1040845.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-04-28" fechaFin="2018-05-28"  saldoInicial="1040845.00" saldoFinal="3939150.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-05-28" fechaFin="2018-06-28"  saldoInicial="3939150.00" saldoFinal="7526474.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-06-28" fechaFin="2018-07-28"  saldoInicial="7526474.00" saldoFinal="4106362.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-07-28" fechaFin="2018-08-28"  saldoInicial="4106362.00" saldoFinal="1758164.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-08-28" fechaFin="2018-09-28"  saldoInicial="1758164.00" saldoFinal="699105.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-09-28" fechaFin="2018-10-28"  saldoInicial="699105.00" saldoFinal="2347486.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-10-28" fechaFin="2018-11-28"  saldoInicial="2347486.00" saldoFinal="6474889.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-11-28" fechaFin="2018-12-28"  saldoInicial="6474889.00" saldoFinal="7772068.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2018-12-28" fechaFin="2019-01-28"  saldoInicial="7772068.00" saldoFinal="1154920.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-01-28" fechaFin="2019-02-28"  saldoInicial="1154920.00" saldoFinal="1561868.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-02-28" fechaFin="2019-03-28"  saldoInicial="1561868.00" saldoFinal="5372833.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-03-28" fechaFin="2019-04-28"  saldoInicial="5372833.00" saldoFinal="6303529.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-04-28" fechaFin="2019-05-28"  saldoInicial="6303529.00" saldoFinal="5250857.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-05-28" fechaFin="2019-06-28"  saldoInicial="5250857.00" saldoFinal="7778732.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-06-28" fechaFin="2019-07-28"  saldoInicial="7778732.00" saldoFinal="8541782.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-07-28" fechaFin="2019-08-28"  saldoInicial="8541782.00" saldoFinal="6159749.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-08-28" fechaFin="2019-09-28"  saldoInicial="6159749.00" saldoFinal="1402551.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-09-28" fechaFin="2019-10-28"  saldoInicial="1402551.00" saldoFinal="8105003.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-10-28" fechaFin="2019-11-28"  saldoInicial="8105003.00" saldoFinal="7601038.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-11-28" fechaFin="2019-12-28"  saldoInicial="7601038.00" saldoFinal="7469341.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2019-12-28" fechaFin="2020-01-28"  saldoInicial="7469341.00" saldoFinal="5056470.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2020-01-28" fechaFin="2020-02-28"  saldoInicial="5056470.00" saldoFinal="3412993.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2020-02-28" fechaFin="2020-03-28"  saldoInicial="3412993.00" saldoFinal="3994992.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2020-03-28" fechaFin="2020-04-28"  saldoInicial="3994992.00" saldoFinal="728121.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2020-04-28" fechaFin="2020-05-28"  saldoInicial="728121.00" saldoFinal="8026512.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2020-05-28" fechaFin="2020-06-28"  saldoInicial="8026512.00" saldoFinal="5875832.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2020-06-28" fechaFin="2020-07-28"  saldoInicial="5875832.00" saldoFinal="7771567.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2020-07-28" fechaFin="2020-08-28"  saldoInicial="7771567.00" saldoFinal="3783064.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2020-08-28" fechaFin="2020-09-28"  saldoInicial="3783064.00" saldoFinal="8435758.00" />
    <Estado_de_Cuenta NumeroCuenta="11717598" fechaInicio="2020-09-28" fechaFin="2020-10-28"  saldoInicial="8435758.00" saldoFinal="8928767.00" />
  </Estados_de_Cuenta>


  <Usuarios>
    <Usuario User="jaguero" Pass="LaFacil" ValorDocumentoIdentidad="117370445" EsAdministrador="0" />
    <Usuario User="ralvarez" Pass="SiendoFeliz123" ValorDocumentoIdentidad="160713985" EsAdministrador="0" />
    <Usuario User="imendez" Pass="DebajoDelMar5454" ValorDocumentoIdentidad="143062990" EsAdministrador="0" />
    <Usuario User="gruiz" Pass="LaGloriaEsMia" ValorDocumentoIdentidad="134225981" EsAdministrador="0" />
    <Usuario User="fquiros" Pass="MyPass123*" ValorDocumentoIdentidad="106030039" EsAdministrador="1" />
    <Usuario User="gzuñiga" Pass="miCumple123" ValorDocumentoIdentidad="105711321" EsAdministrador="0" />
    <Usuario User="jperez" Pass="miCumple123" ValorDocumentoIdentidad="11717598" EsAdministrador="0" />
  </Usuarios>

  <Usuarios_Ver>
    <UsuarioPuedeVer User="jaguero" NumeroCuenta="11000001" />
    <UsuarioPuedeVer User="ralvarez" NumeroCuenta="11326139" />
    <UsuarioPuedeVer User="imendez" NumeroCuenta="11656323" />
    <UsuarioPuedeVer User="imendez" NumeroCuenta="11245285" />
    <UsuarioPuedeVer User="imendez" NumeroCuenta="11461191" />
    <UsuarioPuedeVer User="gzuñiga" NumeroCuenta="11592082" />
    <UsuarioPuedeVer User="gzuñiga" NumeroCuenta="11024586" />
  </Usuarios_Ver>
</Datos>'




-----------------------------------------Script de llenado de TypeDocIdentity
/*
ALTER PROCEDURE llenado_TypeDocIdentity
(
    @x xml
)
AS
BEGIN
    INSERT INTO [dbo].[TypeDocIdentity](Id, Name)
	SELECT  T.Item.value('@Id', 'int'),
			T.Item.value('@Nombre', 'varchar(100)')
	FROM @x.nodes('Datos/Tipo_Doc/TipoDocuIdentidad') as T(Item)

END
GO

exec llenado_TypeDocIdentity @x
select * from TypeDocIdentity

*/



-----------------------------------------Script de llenado de Coin

/*
ALTER PROCEDURE llenado_Coin
(
    @x xml
)
AS
BEGIN
    INSERT INTO [dbo].[Coin](Id, Name, Symbol)
	SELECT  T.Item.value('@Id', 'int'),
			T.Item.value('@Nombre', 'varchar(100)'),
			T.Item.value('@Simbolo', 'varchar(1)')
	FROM @x.nodes('Datos/Tipo_Moneda/TipoMoneda') as T(Item)

END
GO

exec llenado_Coin @x
select * from Coin

*/





------------------------------------------Script de llenado de Relationship

/*
ALTER PROCEDURE llenado_Relationship
(
    @x xml
)
AS
BEGIN
	INSERT INTO [dbo].[Relationship](Id, Name)
	SELECT  T.Item.value('@Id', 'int'),
			T.Item.value('@Nombre', 'varchar(100)')
	FROM @x.nodes('Datos/Parentezcos/Parentezco') as T(Item)
	
END

exec llenado_Relationship @x
select * from Relationship

*/




------------------------------------------Script de llenado de TypeSavingsAccount

/*
ALTER PROCEDURE llenado_TypeSavingsAccount
(
    @x xml
)
AS
BEGIN
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
			T.Item.value('@CargoAnual', 'money'),
			T.Item.value('@NumRetirosHumano', 'int'),
			T.Item.value('@NumRetirosAutomatico', 'int'),
			T.Item.value('@ComisionHumano', 'money'),
			T.Item.value('@ComisionAutomatico', 'money'),
			T.Item.value('@Interes', 'float')
	FROM @x.nodes('Datos/Tipo_Cuenta_Ahorros/TipoCuentaAhorro') as T(Item)

END

exec llenado_TypeSavingsAccount @x
select * from TypeSavingsAccount

*/



