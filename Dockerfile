# Usa una imagen base oficial de Node.js
FROM node:16

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de package.json y package-lock.json para instalar dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la aplicación al directorio de trabajo del contenedor
COPY . .

# Expone el puerto 3000 para que la app esté accesible
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
