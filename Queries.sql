# Quantos pedidos foram feitos por cada cliente?
select concat(c.Primeiro_Nome,' ', c.Ultimo_Nome) as Cliente, p.Id_Cliente_Pedido as ID_Cliente, count(p.Id_pedido) as Qtd_Pedidos from pedido p, cliente c where p.Id_Cliente_Pedido = c.Id_Cliente
group by 2
order by 3 desc;

# Algum vendedor também é fornecedor?
select v.Razao_social as vendedor, v.Nome_Fantasia as VendedorFantasia, v.CNPJ as Vendedor_CNPJ, f.Razao_Social as Fornecedor, f.CNPJ as CNPJ_Fornecedor from vendedor v, fornecedor f where (v.CNPJ = f.CNPJ)

# Relação de produtos fornecedores e estoques;
select p.Id_Produto, p.Nome_Produto Descrição, e.Qtd_Estoque, f2.Razao_Social Fornecedor from produto p
join estoque e on p.Id_Produto = e.Id_Produto 
join produtofornecedor f on f.Id_PF_Produto = p.Id_Produto
join fornecedor f2 on f2.Id_Fornecedor = f.Id_PF_Fornecedor;

#Qtd produtos
select count(id_Produto) TotalProdutos from produto p 

#Produtos por fornecedor
select f2.Razao_Social Fornecedor, count(p.Id_Produto) Qtd_Produtos from produto p
join estoque e on p.Id_Produto = e.Id_Produto 
join produtofornecedor f on f.Id_PF_Produto = p.Id_Produto
join fornecedor f2 on f2.Id_Fornecedor = f.Id_PF_Fornecedor
group by 1;

# Total de venda por forma de pagamento
select p.Tipo_Pag , count(Id_Pedido) Qtd_pedidos, round(sum(pe.Valor_total),2) Total_vendido, round(avg(pe.Valor_total),2) Ticket_Médio from pedido pe
join pagamento p on p.Id_Pagamento = pe.Id_Pagamento_Pedido
where pe.Sit_Pedido <> 'Cancelado'
group by 1
order by 2 desc

# Vendas registradas no 1º semestre de 2023
select date(pe.Data_Cad_Pedido) Data_Compra, count(Id_Pedido) Qtd_pedidos, round(sum(pe.Valor_total),2) Total_vendido, round(avg(pe.Valor_total),2) Ticket_Médio from pedido pe
join pagamento p on p.Id_Pagamento = pe.Id_Pagamento_Pedido
where pe.Sit_Pedido <> 'Cancelado'
group by 1
having Data_Compra between '2023-01-01' and '2023-07-01'

# Vendas de produtos do tipo eletrônicos
select date(pe.Data_Cad_Pedido) Data, p.Nome_Produto, p.Categoria, round(pe.Valor_total,2) TotalVendido from pedido pe
join produto p on p.Id_Produto = pe.Id_Produto_Produto
where pe.Sit_Pedido <> 'Cancelado' and p.Categoria = 'Eletrônico'
order by 4 desc
