SELECT AdicionarUsuario('Luan', 'luanemail@gmail.com');
SELECT AdicionarUsuario('Luana', 'luana@hotmail.com');
SELECT AdicionarUsuario('Viviane', 'kaory@yahoo.com');

SELECT * FROM USUARIO;

SELECT AdicionarConta(1, 'luan_corrente', 0, 'Corrente'); 
SELECT AdicionarConta(1, 'luan_poupa', 1200.00, 'Poupança');
SELECT AdicionarConta(2, 'luanafla', 500.00, 'Corrente'); 
SELECT AdicionarConta(3, 'vivi01', 0, 'Poupança'); 
 
SELECT * FROM CONTA;

-- CATEGORIAS DE RECEITA
SELECT AdicionarCategoria('Salário');
SELECT AdicionarCategoria('Renda Extra');
SELECT AdicionarCategoria('Investimento');
-- CATEGORIAS DE DESPESA
SELECT AdicionarCategoria('Alimentação');
SELECT AdicionarCategoria('Contas');
SELECT AdicionarCategoria('Vestuário');

SELECT * FROM CATEGORIA;

-- TRANSAÇÕES CONTA "luan_corrente"
SELECT AdicionarReceita(1, 'Diária', 60.00, 'Diária no supermercado sexta-feira', 1);
SELECT AdicionarDespesa(1, 'Camisa', 110.00, 'Camisa nova do real 23/24', 6);
SELECT SaldoPorConta(1);

-- TRANSAÇÕES CONTA "luanafla"
SELECT AdicionarReceita(3, 'Salário', 1200.00, 'Salário do mês de dezembro', 1);
SELECT AdicionarReceita(3, 'Jogo do tigre', 150.00, 'Tá pagando muito', 2);
SELECT AdicionarDespesa(3, 'Café', 80.00, '1 caixa de café', 4);
SELECT AdicionarDespesa(3, 'Plano', 30.00, 'Plano de internet', 5);
SELECT SaldoPorConta(3);

-- TRANSAÇÕES CONTA "vivi01"
SELECT AdicionarReceita(4, 'Salário', 1800.00, 'Salário do mês de dezembro', 1);
SELECT AdicionarReceita(4, 'Tesouro', 47.83, 'Rendimentos do mês de dezembro', 3);
SELECT AdicionarDespesa(4, 'Tênis', 600.00, 'Novo tênis da marca x', 6);
SELECT SaldoPorConta(4);

CALL RelatorioTransacoesPorCategoria();
CALL TransacoesConta(3);