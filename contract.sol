
pragma solidity ^0.5.0.;

contract contratoCompraVenta{
    address public propietario;     // dirección publica propietario
    bool public vendido = false;
    string public descripcionProducto = " venta de coche, opel Corsa año 2003";
    uint  public precio = 2 ether;

    contratoCompraVenta(){
        propietario = msg.sender;
    }
    
    function comprar() payable{
        if (msg.value >= precio){          // si el precio es = o superior , canvia de propietario
            owner.transfer(this.balance);  // sinp devuelve dinero 
            owner = msg.sender;
            vendido = true;
        }else {
            
        revert();
    }
 }