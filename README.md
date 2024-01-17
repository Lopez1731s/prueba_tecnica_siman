
# Proyecto ETL para el Conjunto de Datos Brazilian E-Commerce Public Dataset by Olist

Este proyecto implementa un flujo automatizado de Extracción, Transformación y Carga (ETL) en Python para los archivos del conjunto de datos Olist hacia una base de datos Oracle. Además, se utiliza Vertabelo para el modelado de datos relacional y la generación del diccionario de datos.

## Requisitos

- [Python 3.x](https://www.python.org/)
- [Pandas](https://pandas.pydata.org/docs/)
- [SQLAlchemy](https://www.sqlalchemy.org/)
- Oracle Database
- [Vertabelo](https://vertabelo.com/) (para el modelado de datos)

## Configuración

1. Clonar este repositorio.

   ```bash
   git clone https://github.com/tu_usuario/proyecto-etl-olist.git
   ```

2. Instalar dependencias.
    ```bash
    pip install pandas sqlalchemy cx_Oracle
    ```

## Uso

1. Ejecutar el script Python.

    ```bash
    python etl_script.py
    ```
2. Configurar la cadena de conexion hacia la base de datos

## Estructura del Proyecto
```plaintext
│   Documentación.docx
│   README.md
│
├───database
│       database.sql
│       diagrama_base_de_datos.svg
│       diccionario_datos.pdf
│
└───project
    │   etl.py
    │
    └───sources
            olist_customers_dataset.csv
            olist_orders_dataset.csv
            olist_order_items_dataset.csv
```

## Descripción de Directorios y Archivos
`database/`: Contiene archivos de la base de datos.
- database.sql: Script SQL para la creación de tablas en Oracle.
- diagrama_base_de_datos.svg: Diagrama del modelo de datos.
- diccionario_datos.pdf: Diccionario de datos.

`project/`: Directorio principal del proyecto.

- etl.py: Script para extraer, transformar y cargar la data.

`sources/`: Contiene los archivos fuente del conjunto de datos Olist.

- olist_customers_dataset.csv: Datos de clientes.
- olist_orders_dataset.csv: Datos de ordenes.
- olist_order_items_dataset.csv: Datos de los ítems de las ordenes.

#### Autor
- [Jonathan Lopez](https://github.com/Lopez1731s)