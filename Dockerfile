FROM node:slim

#Se escoge carpeta donde de esta parte en adelante se ejecutará las instrucciones del dockerfile
WORKDIR /app

#Se copian los package a /app
COPY package*.json ./

#Se instalan las dependencias (estás están dentro de package)
RUN npm install

#Se copia el resto de estructuras de carpetas
COPY . .

#Se expone el puerto donde vite sirve nuestra app
EXPOSE 5173

#Se ejecuta la app; -- --host funciona para que el servidor escuche con la interfaz de red  0.0.0.0
# para que se acepten conexiones desde cualquier ip que llegue con puerto especificado en EXPOSE.
    CMD [ "npm", "run", "dev", "--", "--host" ]