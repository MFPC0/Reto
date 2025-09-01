Para poder utilizar este ropositorio es encesario tener instalado los siguientes programas con el sistema operativo corresponiente (cabe aclarar que este proyecto se elaboro en un contenedoor docker):
*Docker Desktop
*Visual Studio Code
+Git (link de descarga: git-scm.com)

Lo siguiente será descargar los archivos de configuracion que se encuentra en la carpeta archivos de configuración, algo importante a la hora de realizar esta parte del proceso es que resultas obligatorio poner todos los documentos ern la misma carpeta, una vez descargados los archivos y programas lo primero que se debe hacer es abrir el docker compose, posteriormente regresamos a la carpeta donde se guarda el proyecto, entramos a la terminal desde la carpeta y agregamos el siguiente comando:

docker compose up -d

esperamos que se terminen de levantar los servicios para poder continuar; una vez levantados los servicios entramos al servidor local de phpmyadmin (si se desconoce como solo ingrese en un navegador dentro de la sección de URLs lo siguiente 127.0.0.1:8080) agregamos una nueva base de datos, una vez creada, entramos a esta y en la sección sql de phpmyadmin ingresamos lo siguiente en la sección de código y le damos correr:

CREATE TABLE ads_spend (
    `date` DATE,
    platform VARCHAR(50),
    account VARCHAR(100),
    campaign VARCHAR(100),
    country VARCHAR(50),
    device VARCHAR(50),
    spend DECIMAL(10,2),
    clicks INT,
    impressions INT,
    conversions INT,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    source_file_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

esto nos creara los encabezados de la tabla, ahora exportamos la tabla pidiendo que ignore los datos de la primera fila en este caso debido a que en esta se enceuntran los enabezados que ya agregamos; con esto listo debería estar lista la sección de la base de datos

para configuara la parte de n8n es necesario abrirlo desde el servidor local (desde un buscador en la sección de URLs: agrega la siguiente liga: http://127.0.0.1:5678/home/workflows); una vez dentro importa el archivo json con el nombre Workflow, valida que los nodos esten correctamente configurados.
Con esto listo el reto descrito en el reto esta listo
