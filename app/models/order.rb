class Order < ActiveRecord::Base

	def boolean createOrder(clientNit, productCode)
			cliente = client.where(:nit => clientNit).first
			producto = product.where(:code => productCode).first

		if ((cliente == nil)|(producto == nil))
			puts "CLIENTE O PRODUCTO INVALIDO"
			return false
		else
			nuevaorden = order.new
			nuevaorden.code = productCode
			nuevaorden.client_id = cliente.id
			nuevaorden.date = Time.now
			nuevaorden.amount = 1
			nuevaorden.save

		end


	end

end