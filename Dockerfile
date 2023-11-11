# Docker Akan Mengunduh Base Image Bernama Node Dengan Versi LTS Alpine Dari Docker Hub
FROM node:lts-alpine as base
# Membuat Directory baru bernama app di dalam container dan menjadikan working Directory
WORKDIR /app
# Menyalin berkas package.json dan package-lock.json dari local working directory saat ini ke dalam container working directory
COPY package*.json ./
# Membuka port yang akan di gunakan oleh container
EXPOSE 3001
# Menginstall Package Dengan Clean Install
RUN npm ci
# Menyalin semua berkas dengan ekstensi .js dari local working directory saat ini ke dalam container working directory
COPY ./*.js ./
# Menjalankan Node index.js setelah container berhasil berjalan
CMD ["node", "index.js"]

# Mengambil image dari base sebagai dev
FROM base as dev
# Menambah apk ke bash dengan no cache
RUN apk add --no-cache bash
# Mengambil file wait-for-it.sh dari github 
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
# Menjalankan chmod agar file bisa di eksekusi
RUN chmod +x /bin/wait-for-it.sh