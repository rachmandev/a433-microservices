echo "== Remove Gateway & Virtual Service E-commerce ==" #menampilkan teks ke layar hasil dari perintah echo
kubectl delete -f gateway-virtualservice/.
echo "=====-=========== Remove Rabbitmq ===============" #menampilkan teks ke layar hasil dari perintah echo
kubectl delete -f rabbitmq/.
echo "============== Remove Order-service ============" #menampilkan teks ke layar hasil dari perintah echo
kubectl delete -f order/.
echo "============= Remove Shipping-service ==========" #menampilkan teks ke layar hasil dari perintah echo
kubectl delete -f shipping/.