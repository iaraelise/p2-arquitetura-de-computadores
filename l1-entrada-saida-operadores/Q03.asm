.text
main:	addi $2, $0, 5
		syscall
		
		# Linhas 2 e 3: Pede para que o sistema execute o serviço 5 (leitura) e armazena o valor em $2;
		
		add $8, $0, $2 # $8 = 0 + $2;
		
		addi $2, $0, 5
		syscall
		
		# Linhas 9 e 10: Repete o processo das linhas 2 e 3;
		
		mul $4, $8, $2 # $4 = valor digitado 1 * valor digitado 2;
		
		addi $2, $0, 1
		syscall
		
		# Linhas 16 e 17: Pede para que o sistema execute o serviço 1 (impressão);

		addi $2, $0, 10 # Finaliza o programa;
		
		
		# 5 - Código de serviço de leitura;
		# 1 - Código de serviço de impressão. Usa o $4 como argumento (parâmetro);
		# $2 - Registrador onde o código de serviço será armazenados;
		# $4 - Registrador utilizado para passar dados.