#Qtd de OS por cliente
select c.nome Cliente, count(o.id_os) Qtd_OS from os o
join cliente c on c.id_cliente = o.id_cliente 
group by o.id_cliente
order by Qtd_Os desc;

#Qtd de itens por OS
select i.id_os OS, count(i.id_item) Qtd_Itens from itens_os i
group by i.id_os
order by 1;

#Última OS de cada cliente
select c.nome Cliente, max(id_os) Ultima_OS from os o
join cliente c on c.id_cliente = o.id_cliente 
group by 1;

#Cliente com maior número e OS
select Nome, Ordens
from (
    select c.nome, count(o.id_os) Ordens,
           rank() over (order by count(o.id_os) desc) Ranking
    from os o
    join cliente c on c.id_cliente = o.id_cliente
    group by c.nome
) as ranked
where Ranking = 1;

#Qtd OS em aberto
select * from os where data_fim is null;

#Valor Total recebido das OS
select sum(quantidade * preco_unit) as Valor_Itens from itens_os ;

#Valor total em estoque de cada produto
select p.descricao, round((qtd_Est * custo_unit),2) as Valor_Estoque from produto p;

#Diferença de dias entre a abertura e o fechamento da OS
select id_os, datediff(data_fim, data_inicio) as DiasOS from os
order by DiasOS desc;
