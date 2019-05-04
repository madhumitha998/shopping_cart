To use Seyfora services carry out the following steps:

 1. Run all scripts in scripts folder
 2. Move 'files' folder into the 'www' folder (localhost/files/payment is specified as the return link for NEWPayment service)
 3. Open all 4 html files in 'files' folder and change the Host name in all serviceURLs to your Host Name.
 3. Import GXTX_final_services.zip into TIBCO BusinessWorks
 4. Under NEWPayment module->Resources->KeystoreProviderResource: Select location of the PPKeystore provided
 5. Under NEWPayment module->Resources->HttpClientResource1: Change Default Host to your Host Name
	(typically your System Name, obtainable from Start Menu > msinfo32).
 6. To enable scenario 3 to operate, ensure the following Resources' Default Host value are changed from the
	existing values to your System Name; 
		->Admin_Order module->Resources->HttpClientResource (connects to Order service)
		->Admin_Order module->Resources->HttpClientResource1 (connects to Shipping service)
		->Notifier module->Resources->HttpClientResource (connects to Order service)
		->Notifier module->Resources->HttpClientResource1 (connects to Customer service)
 7. Login to RabbitMQ Config site (localhost:15672)
 8. To setup the RabbitMQ queue, create a new Exchange "ESD.PROJ" with direct Type. Thereafter, create a new Queue "notifications", with Bindings to receive from "ESD.PROJ" exchange and set Routing key to "ship"
 8. Run services on TIBCO
 9. Open homepage.html and begin scenario 1&2 walkthrough
 10. After scenario 1&2 is completed, open ship-admin.html to begin scenario 3 walkthrough
