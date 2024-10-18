# Importação da biblioteca no pacote netmiko
from netmiko import ConnectHandler

# Criar um dicionário para uma dispositivo em particular
R1 = {'device_type': 'cisco_ios',
	'ip': '192.168.122.2',
	'username': 'admin',
	'password': 'password',
	'secret': 'enpassword'}

'''Chamando a bilioteca ConnectHandler [**R1] quer dizer que o python
considera os conteúdos do dicionário como um par de chave-valor
ao invés de um elemento separado. '''
net_connect = ConnectHandler(**R1)

# Enviando um comando para o dispositivo
output = net_connect.send_command("show ip int br")

# Mostrando a saída do comando
print(output)
