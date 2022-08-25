# Data_Analyst_Project--Sales_Management

El siguiente proyecto busca ejemplificar todo el proceso en el flujo de trabajo de un Data Analyst. Primero se presenta una solicitud de negocio, realizada por el manager de ventas. A continuación, se usa SQL para realizar los querys con el objetivo de conseguir los datos necesarios y poder responder a las necesidades. Por último, se usa POWER BI para crear los dashboards con toda la información extraída.

# Solicitud y requerimiento de negocio.


Para este proyecto se toma la solicitud realizada por el manager de ventas. Según esta solicitud se realiza todo el proceso necesario para dar una solución al problema.

Los requerimientos pedidos fueron los siguientes:

1. Mejorar los reportes de ventas de internet y cambiar de reportes estáticos a dashboards dinámicos.

2. Mostrar cuanto se ha vendido de cada producto, a que cliente y como ha ido evolucionando en el tiempo.

3. Un resumen detallado de las ventas por internet según el cliente. 

4. Un resumen detallado de las ventas por internet según el producto.

5. Hacer seguimiento de las ventas en el tiempo comparándolo con el presupuesto de los últimos 3 años.


#  Extracción, transformación y carga de los datos (SQL).


En este proyecto se utilizó el manejador de base de datos Microsoft SQL y la base de datos de AdventureWorks. 

Esta es una base de datos de ejemplo que originalmente fue publicada por Microsoft para mostrar como diseñar una base de datos SQL usando SQL Server 2008.  El diseño de la base de datos ha progresado desde que se publicó por primera vez. Adicionalmente, se hace una actualización de los datos para tener registros del 2007 al 2022. 

La base de datos esta conformada por Dimension tables y Fact tables. Las Dim tables están conformadas por variables con datos categóricos y las Fact tables por su parte contienen a las variables numéricas.

Se utilizaron las tablas de DimDate, DimCustumer, DimGeography,  DimProduct, DimProductCategory, DimSubProductCategory y FactInternetSales.

Para crear el modelo necesario de datos para el análisis y cumplimiento de las necesidades pedidas. Se implementaron los siguientes querys usando SQL.

Cada uno de estos querys genero una tabla con la información necesaria para la creación de los dashboards. Adicionalmente, se usa una tabla externa con la información del presupuesto. En total se tiene 4 archivos CSV y uno de Excel correspondiente al presupuesto. 

#  Sales management dasboars.


Finalmente el reporte de ventas por internet se compone de 3 dashboards. El primero es un resumen general, el segundo está enfocada en la información detallada del cliente y la tercera en las ventas por producto.

# Distribución archivos. 
--------

    ├── DataBaseResults
    │   ├── Custumer.csv              <- Datos extraídos de la base de datos de los clientes.
    │   ├── FactIntertSales.csv       <- Datos extraídos de la base de datos de las ventas por internet.
    │   ├── Product.csv               <- Datos extraídos de la base de datos de los productos.
    │   ├── SalesBudget.xlsx          <- Tabla con el presupuesto de los últimos 3 años.
    │   └── date information.csv      <- Datos extraídos de la base de datos de las fechas.
    │
    ├── SQL Querys
    │   ├── CustumerQuery.sql         <- Query usado para extraer los datos de los clientes.
    │   ├── DataTimeQuery.sql         <- Query usado para extraer los datos de las fechas.
    │   ├── InternetSalesQuery.sql    <- Query usado para extraer los datos de las ventas por internet.
    │   └── ProductQuery.sql          <- Query usado para extraer los datos de los productos.
    │
    ├── README.md                     <- Toda la información sobre el proyecto.
    │
    ├── Sales Report.pbix             <- Archivo de POWER BI con los modelos y dashboards creados. 
    │
    └──  Sales Report.pdf             <- Archivo PDF con los 3 dashboards creados.

  --------
