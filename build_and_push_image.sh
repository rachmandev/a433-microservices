echo "================ Melakukan Build Image ============" #menampilkan teks ke layar hasil dari perintah echo
docker build -t order-service:latest . #melakukan Build Image Dengan Dockerfile dengan nama image order-servie dan memiliki tag latest
echo "===== Melakukan Login Ke Github & Docker Hub ======" #menampilkan teks ke layar hasil dari perintah echo
docker login ghcr.io --username rachmandev --password $GITHUB_TOKEN #untuk login ke github package dengan username rachmandev dan password yang disimpan di variabel GITHUB_TOKEN jika menggunakan password-stdin tidak bisa login
docker login --username rachmandev --password $DOCKER_TOKEN #untuk login ke docker hub dengan username rachmandev dan password yang disimpan di dalam variabel DOCKER_TOKEN jika menggunakan --password-stdin tidak bisa login 
echo "Melakukan Push Ke Github Packages & Docker Hub" #menampilkan teks ke layar hasil dari perintah echo
docker tag order-service:latest ghcr.io/rachmandev/order-service:latest #mengubah nama dari order-service:latest  menjadi ghcr.io/rachmandev/order-service:latest menggunakan tag latest
docker tag order-service:latest rachmandev/order-service:latest #mengubah nama dari order-service:latest  menjadi rachmandev/order-service:latest menggunakan tag latest
docker push ghcr.io/rachmandev/order-service:latest #melakukan push/upload image ke dalam repository github package
docker push rachmandev/order-service:latest #melakukan push/upload image ke dalam repository docker hub