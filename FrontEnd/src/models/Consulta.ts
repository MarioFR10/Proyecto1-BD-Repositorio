export default class Consulta{
    id: number | undefined;
    oANumber: number | undefined;
    objetiveAccountId: number | undefined;
    description: string | undefined;
    succesfullDeposits: number | undefined;
    deposits: number | undefined;
    succesfullBalance: number | undefined;
    balance: number | undefined;
    nombre: string | undefined;
    balan: number | undefined;
    mayorBen: string | undefined;
    cantCuentas: number | undefined;
    codigoCuenta: string | undefined;
    promedioRetiros: number | undefined;
    mesMayor: number | undefined;
    anioMayor: number | undefined;
    

    constructor(id: number | undefined, oANumber: number | undefined, objetiveAccountId: number | undefined, description: string | undefined, succesfullDeposits: number | undefined, deposits: number | undefined, succesfullBalance: number | undefined, balance: number | undefined, nombre: string | undefined, balan: number | undefined, mayorBen: string | undefined , cantCuentas: number | undefined, codigoCuenta: string | undefined, promedioRetiros: number | undefined, mesMayor: number | undefined, anioMayor: number | undefined){
        this.id = id;
        this.oANumber = oANumber;
        this.objetiveAccountId = objetiveAccountId;
        this.description = description;
        this.succesfullDeposits = succesfullDeposits;
        this.deposits = deposits;
        this.succesfullBalance =  succesfullBalance;
        this.balance = balance;
        this.nombre = nombre;
        this.balan = balan;
        this.mayorBen = mayorBen;
        this.cantCuentas = cantCuentas;
        this.codigoCuenta = codigoCuenta;
        this.promedioRetiros = promedioRetiros;
        this.mesMayor = mesMayor;
        this.anioMayor = anioMayor;
    }
}