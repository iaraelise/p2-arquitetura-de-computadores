.text
main:	addi $2, $0, 5
		syscall
		
		# Linhas 2 e 3: Pede para que o sistema execute o serviço 5 (leitura) e armazena o valor digitado (n) em $2;
		
		add $8, $0, $2 # $8 = 0 + n   ->   $8 = n;
		
		addi $9, $0, 10 # $9 = 0 + 10   ->   $9 = 10;
		
		
		# PRIMEIRA DIVISÃO
		
		div $8, $9 # n / 10;
		mfhi $10 # Move o resto da divisão para $10. $10 armazena o dígito da unidade;
		mflo $11 # Move o quociente da divisão para $11;
		
		
		# SEGUNDA DIVISÃO
		
		div $11, $9 # quociente da divisão anterior / 10;
		mfhi $12 # Move o resto da divisão para $12. $12 armazena o dígito da dezena;
		mflo $13 # $13 armazena o quociente da divisão, ou seja, o dígito da centena;
		
		
		# OPERAÇÃO
		
		add $14, $10, $12 # $14 = unidade + dezena;
		add $4, $14, $13 # $4 = $14 + centena;
		
		addi $2, $0, 1
		syscall
		
		# Linhas 31 e 32: Pede para que o sistema execute o serviço 1 (impressão);

		addi $2, $0, 10 # Finaliza o programa;
		
		
		# 5 - Código de serviço de leitura;
		# 1 - Código de serviço de impressão. Usa o $4 como argumento (parâmetro);
		# $2 - Registrador onde o código de serviço será armazenados;
		# $4 - Registrador utilizado para passar dados.