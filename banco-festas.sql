CREATE TABLE Clientes 
( 
); 

CREATE TABLE Festas 
( 
 idClientes INT,  
); 

CREATE TABLE Pagamento 
( 
 idClientes INT,  
); 

CREATE TABLE Pix 
( 
 codigo-pix INT,  
 idPagamento INT,  
); 

CREATE TABLE CartaoCredito 
( 
 nome no cartão INT,  
 cpf INT,  
 endereço INT,  
 idPagamento INT,  
); 

CREATE TABLE Boleto 
( 
 data_vencimento INT,  
 Cod_barras INT,  
 idPagamento INT,  
); 

ALTER TABLE Festas ADD FOREIGN KEY(idClientes) REFERENCES Clientes (idClientes)
ALTER TABLE Pagamento ADD FOREIGN KEY(idClientes) REFERENCES Clientes (idClientes)
ALTER TABLE Pix ADD FOREIGN KEY(idPagamento) REFERENCES Pagamento (idPagamento)
ALTER TABLE CartaoCredito ADD FOREIGN KEY(idPagamento) REFERENCES Pagamento (idPagamento)
ALTER TABLE Boleto ADD FOREIGN KEY(idPagamento) REFERENCES Pagamento (idPagamento)
