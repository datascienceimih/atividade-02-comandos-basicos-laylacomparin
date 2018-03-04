################################################
# CENTRO UNIVERSITÁRIO METODISTA IZABELA HENDRIX
# PROGRAMAÇÃO FUNCIONAL ORIENTADA A OBJETOS
# Projeto Integrador - Atividade 1
# por Layla Comparin
################################################

# 1 - Crie 4 vetores de tamanho 10. Esses vetores devem ser nomeados com apenas uma letra minúscula cada um.

x <- c(1:10)
y <- c(seq(from = 10, to = 100, by = 10))
w <- c(rep(1:5, times = 2))
z <- c(rep(1:5, each =2))

# 2 - Execute a soma dos vetores, a subtração dos vetores, multiplicação e divisão. Apresente os resultados.

soma <- x + y + w + z
soma

# Resultado: 13  25  38  50  63  70  83  95 108 120

subtracao <- x - y - w - z
subtracao

# Resultado:  -11  -21  -32  -42  -53  -58  -69  -79  -90 -100

multiplicacao  <- x * y * w * z
multiplicacao

# Resultado:  10    80   540  1280  3750  1080  3920  7680 16200 25000

divisao  <- x / y / w / z
divisao 

# Resultado:  0.100000000 0.050000000 0.016666667 0.012500000  
#             0.006666667 0.033333333 0.012500000 0.008333333 
#             0.005000000 0.004000000


# 3 - Execute a soma da raiz quadrada dos dois primeiros vetores com a divisão da quarta potência dos dois últimos vetores.

calculo <- (sqrt(x) + sqrt(y)) + (w^4 / z^4)

# Resultado: 5.162278 21.886350 12.271776 24.324555 17.023185 10.207802 11.074852 12.089105 12.896433 14.162278

# 4 - Crie 2 matrizes de tamanho 10 X 10 com números que assumem casas decimais.

M <- matrix(seq(from = 0.5, to = 5, by = 0.5), 10, 10)
N <- matrix(seq(from = 5, to = 0.5, by = -0.5), 10, 10, byrow = T)

# 5 - Multiplique as matrizes por 10. Divida as matrizes por 3. Multiplique as duas matrizes.

# Matrizes * 10
M_10 <- M*10
N_10 <- N*10

# Matrizes / 3
M_3 <- M/3
N_3 <- N/3

# Matrizes multiplicadas entre si
MN <- M %*% N


# 6 - Monte um banco de dados com os nomes de todos os seus colegas da aula de 
# Programação Funcional e Orientada a Objetos. Coloque no banco de dados a idade de cada um, 
# o curso que faz, o time de futebol e o número de horas gastas fazendo exercícios 
# no R (para essa variável, use números com 2 casas decimais). Exiba o banco no console. 
# Atenção: os dados do tipo character devem ser character mesmo; não devem ser transformados 
# automaticamente em factor.

nomes <- c("Layla", "Gerson", "Edésio", "Adelvan", "Fabiano", "Bea", "Larissa")
idades <- c(24L, 24L, 29L, 18L, 25L, 23L, 24L)
cursos <- c("CD", "CD", "CD", "CD", "BioI", "BioI", "BioI")
times <- c("Botafogo", "Sport", "Atlético", "Flamengo", "Cruzeiro", "Atlético", "Atlético")
horasexerc <- c(2.00, 1.45, 0.75, 2.65, 2.15, 1.55, 1.75)


colegas <- data.frame(nomes, idades, cursos, times, horasexerc, stringsAsFactors = F)

colegas

##   nomes idades cursos    times horasexerc
#1   Layla     24     CD Botafogo       2.00
#2  Gerson     24     CD    Sport       1.45
#3  Edésio     29     CD Atlético       0.75
#4 Adelvan     18     CD Flamengo       2.65
#5 Fabiano     25   BioI Cruzeiro       2.15
#6     Bea     23   BioI Atlético       1.55
#7 Larissa     24   BioI Atlético       1.75

# 7 - Com um comando, exiba o banco de dados numa nova tela.

View(colegas)           

# 8 - Confira várias informações sobre o banco de dados (tamanho, classes das variáveis, nomes das variáveis) 
# usando apenas um comando.

str(colegas)

# 9 - Algumas variáveis fazem sentido serem do tipo factor (variáveis categóricas).
# O curso e o time de futebol são duas delas. Usando um comando transforme essas variáveis em factor.

colegas$cursos <- as.factor(colegas$cursos)
colegas$times <- as.factor(colegas$times)

# 10 - Acrescente, no final do banco de dados, mais uma linha com as 
# informações de todas as variáveis para o professor.

colegas <- rbind(colegas, data.frame(nomes = "Neylson", idades = 30L, cursos = "CD/BioI", times = "Atlético", horasexerc = 0.10))

# 11 - Crie uma lista com todos os objetos que você criou neste exercícios. Exiba a lista. 
# Apresente a classe da lista.

lista <- list(x, y, w, z, soma, subtracao, multiplicacao, divisao,
              calculo, M, N, M_10, M_3, N_10, N_3, MN, colegas)

lista

class(lista)

sapply (lista, class)
