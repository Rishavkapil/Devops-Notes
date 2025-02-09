
Rabbit Mq is an open source software that enables applications to communicate with each other by sending and receiving messages.
 It implements the **Advanced Message Queuing Protocol (AMQP)**


**Message Broker :**   RabbitMq acts as a middleman between Producer(sender) and Consumer(receiver) of messages.
1. **Producer:**
    
    - An application that sends messages to RabbitMQ.
        
2. **Consumer:**
    
    - An application that receives messages from RabbitMQ.
        
3. **Queue:**
    
    - A buffer that stores messages until they are processed by consumers.
        
    - Messages are stored in the order they are received (FIFO - First In, First Out).
        
4. **Exchange:**
    
    - A component that routes messages from producers to queues.
        
    - It uses rules (bindings) to determine where messages should go.
        
5. **Binding:**
    
    - A link between an exchange and a queue.
        
    - It defines how messages should be routed.
        
6. **Routing Key:**
    
    - A key used by the exchange to decide which queue(s) should receive a message.




###### How RabbitMQ works


1. A producer sends a message to exchange 
2.  The exchange routes the message to one or more **queues** based on **bindings** and **routing keys**.
3. A **consumer** retrieves the message from the queue and processes it.






##### Installation of RabbitMQ

			`sudo apt update`
		sudo apt install rabbitmq-server


Check the status of rabbitmq 

				sudo systemctl status rabbitmq-server
		
		 
Set Up RabbitMQ Management Plugin (Optional)



RabbitMQ comes with a web-based management interface that makes it easier to monitor and manage your RabbitMQ server. To enable this plugin, run the following commands:




			**sudo rabbitmq-plugins enable rabbitmq_management**
			**sudo systemctl restart rabbitmq-server**

Access RabbitMQ Management Web Interface

	**http://localhost:15672/**