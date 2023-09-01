<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>



<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Paseador de Perros</title>
    <link  rel="stylesheet" href="/estilos.css" type="text/css"/>
</head>



<body style="background-image: url(ImagenesPerros/20100.jpg); margin: 0;
    padding: 0;">
    <header style="width: 100%; height: 40px;  background: linear-gradient(to left, #000000, #330000, #660000, #990000, #CC0000, #FF3300, #FF6600, #FF9900); color: white; margin: 0;
    padding: 20px 0; ">
        <h1 align="center" class="Estilo1">PASEADOR DE PERROS</h1>
    </header>
      <div class="img" >

<p align="center" class="Estilo3">(El precio puede variar depende de la cantidad de perros si es mayor a 2 el descuento sera a 10%)</p>
<p align="center">TIPOS DE PERROS</p>


    
    <form id="form1" name="form1">
      <p align="center">Cantidad de perros Grandes</p>
        
      
      <div align="center">
        <input type="number" name="cantidadPerrosGrandes" id="cantidadPerrosGrandes" />
          
      </div>
        <p align="center">Cantidad de Perros Medianos</p>
        
      
      <div align="center">
        <input type="number" name="cantidadPerrosMedianos" id="cantidadPerrosMedianos" />
          
      </div>
        <p align="center">Cantidad de Perros Pequeños</p>
        
      
      <div align="center">
        <input type="number" name="cantidadPerrosPequenos" id="cantidadPerrosPequenos" />
          
      </div>
        <p align="center">Cantidad de Horas</p>
        
      
      <div align="center">
        <input type="number" name="horas" id="horas" />
          
      </div>
        <p align="center">
            <button type="button" onclick="calcularTotal()">CALCULAR</button>
        </p>
        
        <h2 align="center">TOTAL (Pesos Colombianos)</h2>
        <div align="center">
          <p><span class="Estilo1">$</span> 
            <input type="text" name="total" id="total" readonly />
        </p>
          <h5 align="left">&nbsp;</h5>
        </div>
    </form>
    
    <div align="center">    </div>
    </div>
    <script>
    
        function calcularTotal() {
            var cantidadPerrosGrandes = parseInt(document.getElementById('cantidadPerrosGrandes').value) || 0;
            var cantidadPerrosMedianos = parseInt(document.getElementById('cantidadPerrosMedianos').value) || 0;
            var cantidadPerrosPequenos = parseInt(document.getElementById('cantidadPerrosPequenos').value) || 0;
            var horas = parseInt(document.getElementById('horas').value) || 0;
            
            var totalCobro = 0;

            totalCobro += calcularCobroPorTipo(cantidadPerrosGrandes, 1, horas); 
            totalCobro += calcularCobroPorTipo(cantidadPerrosMedianos, 2, horas); 
            totalCobro += calcularCobroPorTipo(cantidadPerrosPequenos, 3, horas); 

          
            var totalPerros = cantidadPerrosGrandes + cantidadPerrosMedianos + cantidadPerrosPequenos;
            if (totalPerros > 1) {
                var descuento = totalCobro * 0.1;
                totalCobro -= descuento;
            }

            document.getElementById('total').value = totalCobro;
        }

        function calcularCobroPorTipo(cantidadPerros, tipoPerro, horas) {
            var cobroPorTipo = 0;

            switch (tipoPerro) {
                case 1:
                    if (horas < 1) {
                        cobroPorTipo = 10000;
                    } else {
                        cobroPorTipo = (horas * 10000);
                    }
                    break;
                case 2:
                    if (horas < 1) {
                        cobroPorTipo =  5000;
                    } else {
                        cobroPorTipo =  (horas * 5000);
                    }
                    break;
                case 3:
                    if (horas < 1) {
                        cobroPorTipo = 3000;
                    } else {
                        cobroPorTipo = horas * 3000;
                    }
                    break;
                default:
                    console.log("INCORRECTO");
                    break;
            }

            return cobroPorTipo * cantidadPerros;
        }
    </script>
</body>
