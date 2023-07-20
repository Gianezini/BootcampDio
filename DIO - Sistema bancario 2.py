import textwrap

def menu():
    menu = """
        Selecione a opção desejada

    \t[1]\tDepositar
    \t[2]\tSacar
    \t[3]\tExtrato
    \t[4]\tNova Conta
    \t[5]\tListar Contas
    \t[6]\tNovo Usuário
    \t[7]\tSair
    """
    return input(textwrap.dedent(menu))

def depositar(saldo, valor, extrato, /): #A barra é para que todos os argumentos antes dela, sejam passados SOMENTE POR POSIÇÃO. Ex: "saldo"
        if valor > 0:
            saldo += valor
            extrato += f"Depósito:\tR${valor: .2f}\n"
            print(f"\nDepósito de R${valor: .2f} realizado com sucesso!")
        else:
            print("\nOperação falhou! O valor informado é inválido.")

        return saldo, extrato

def sacar(*, saldo, valor, extrato, limite, numero_saques, limite_saques): #O asterísco é para que todos os argumentos depois dele, sejam SOMENTE NOMEADAS. Ex "valor=valor"
    excedeu_saldo = valor > saldo
    excedeu_limite = valor > limite
    excedeu_saques = numero_saques >= limite_saques

    if excedeu_saldo:
            print("Operação falhou! saldo insuficiente.")

    elif excedeu_limite:
        print("Operação falhou! O valor do saque excede o limite.")

    elif excedeu_saques:
        print("Operação falhou! Limite de saques diários exedido.")

    elif valor > 0:
        saldo -= valor
        extrato += f"Saque:\t\tR${valor: .2f}\n"
        numero_saques += 1
        print(f"\nSaque no valor de R${valor: .2f} realizado com sucesso!")

    else:
        print("Operação falhou! O valor informado é inválido.")

    return saldo, extrato

def exibir_extrato(saldo, /, *, extrato): #Antes da barra são argumentos POSICIONAIS, e após o asterísco são argumentos NOMEADOS
    print("\n================EXTRATO==============")
    print("Não foram realizadas movimentações." if not extrato else extrato)
    print(f"\nSaldo:\t\tR${saldo: .2f}")
    print("=====================================")

def criar_usuario(usuarios):
    cpf = input("Informe o CPF (somente números): ")
    usuario = filtrar_usuario(cpf, usuarios)

    if usuario:
        print("\nJá existe um usuário cadastrado com esse CPF.")
        return
    
    nome = input("Informe seu nome completo: ")
    data_nascimento = input("Informe sua data de nascimento (dd-mm-aaaa): ")
    endereco = input("Informe seu endereço (Rua, Nr, Bairro, Cidade/UF): ")

    usuarios.append({"nome":nome, "data_nascimento":data_nascimento, "cpf":cpf, "endereco":endereco})

    primeiro_nome = nome.split()[0]
    print(f"\nParabéns {primeiro_nome}, seu usuário foi criado com sucesso")

def filtrar_usuario(cpf, usuarios):
    usuarios_filtrados = [usuario for usuario in usuarios if usuario["cpf"] == cpf]
    return usuarios_filtrados[0] if usuarios_filtrados else None

def criar_conta(agencia, numero_conta, usuarios):
    cpf = input("Informe o CPF do usuário: ")
    usuario = filtrar_usuario(cpf, usuarios)

    if usuario:
        print("\nConta Criada com Sucesso!")
        return{"agencia":agencia, "numero_conta":numero_conta, "usuario":usuario}
    
    print("\nUsuário não encontrado, realize o cadastro do mesmo antes de cadastrar uma conta!")

def listar_contas(contas):
    for conta in contas:
        linha = f"""\
            Agência:\t{conta['agencia']}
            C/C:\t\t{conta['numero_conta']}
            Titular:\t{conta['usuario']['nome']}
        """
        print("=" * 100)
        print(textwrap.dedent(linha))
        
def main():
    LIMITE_SAQUES = 3
    AGENCIA = "0001"
    
    saldo = 0
    limite = 500
    extrato = ""
    numero_saques = 0
    usuarios = []
    contas = []

    while True:
        opcao = menu()

        if opcao == "1":
            valor = float(input("Informe o valor do depósito: ").replace(',', '.'))

            saldo, extrato = depositar(saldo, valor, extrato)

        elif opcao == "2":
            valor = float(input("Informe o valor do saque: ").replace(',', '.'))

            saldo, extrato = sacar(
                saldo=saldo,
                valor=valor,
                extrato=extrato,
                limite=limite,
                numero_saques=numero_saques,
                limite_saques=LIMITE_SAQUES,
            )
            
        elif opcao == "3":
            exibir_extrato(saldo, extrato=extrato)

        elif opcao == "4":
            numero_conta = len(contas) +1
            conta = criar_conta(AGENCIA, numero_conta, usuarios)

            if conta:
                contas.append(conta)

        elif opcao == "5":
            listar_contas(contas)
        
        elif opcao == "6":
            criar_usuario(usuarios)

        elif opcao == "7":
            print("Saindo do sistema, tenha um ótimo dia!")
            break

        else:
            print("Opção inválida! Por favor, selecione uma das opções abaixo")

main()