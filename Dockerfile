# Docker Akan Mengunduh Base Image Bernama Node Dari Docker Hub
FROM node:14.5.0-alpine
# Membuat Directory baru bernama app di dalam container dan menjadikan working Directory
WORKDIR /app
# Menyalin semua berkas dari local working directory saat ini ke dalam container working directory
COPY . .
# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db
# Mengeksekusi perintah untuk menginstall dan membuild npm saat sedang proses pembuatan image
RUN npm install --production --unsafe-perm && npm run build 
# Membuka port yang akan di gunakan oleh containery
EXPOSE 8080
# Menjalankan server npm setelah container berhasil berjalan
CMD ["npm", "start"] 