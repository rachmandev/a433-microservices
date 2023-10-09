echo "================ Melakukan Build Image ============" #menampilkan teks ke layar hasil dari perintah echo
docker build -t item-app:v1 . #melakukan Build Image Dengan Dockerfile dengan nama image item-app dan memilik tag v1
echo "============== Menampilkan Daftar Image ===========" #menampilkan teks ke layar hasil dari perintah echo
docker images #menampilkan daftar images yang ada pada docker
echo "================= Mengubah Nama Image =============" #menampilkan teks ke layar hasil dari perintah echo
echo "== item-app:v1 to ghcr.io/rachmandev/item-app:v1 ==" #menampilkan teks ke layar hasil dari perintah echo
#docker tag item-app:v1 ghcr.io/rachmandev/item-app:v1 #mengubah nama dari item-app:v1  menjadi ghcr.io/rachmandev/item-app:v1 menggunakan tag
#docker tag item-app:v1 rachmandev/item-app:v1 #mengubah nama dari item-app:v1  menjadi rachmandev/item-app:v1 menggunakan tag
echo "=== Menampilkan Nama Image Yang Telah di Rename ===" #menampilkan teks ke layar hasil dari perintah echo
docker images | grep rachmandev #menampilkan daftar images dengan teks yang berkaitan dengan nama rachmandev
echo "===== Melakukan Login Ke Github & Docker Hub ======" #menampilkan teks ke layar hasil dari perintah echo
#docker login ghcr.io --username rachmandev --password $GITHUB_TOKEN #untuk login ke github package dengan username rachmandev dan password yang disimpan di variabel GITHUB_TOKEN jika menggunakan password-stdin tidak bisa login
#docker login --username rachmandev --password $DOCKER_TOKEN #untuk login ke docker hub dengan username rachmandev dan password yang disimpan di dalam variabel DOCKER_TOKEN jika menggunakan --password-stdin tidak bisa login 
echo "Melakukan Push Ke Github Packages & Docker Hub" #menampilkan teks ke layar hasil dari perintah echo
#docker push ghcr.io/rachmandev/item-app:v1 #melakukan push/upload image ke dalam repository github package
#docker push rachmandev/item-app:v1 #melakukan push/upload image ke dalam repository docker hub
