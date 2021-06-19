ALTER TABLE paciente CHANGE sexpac sexpac enum('M','F') not null;
ALTER TABLE questionario CHANGE bebe bebe enum('S','N') not null;
ALTER TABLE questionario CHANGE fuma fuma enum('S','N') not null;
ALTER TABLE questionario CHANGE relacsex relacsex enum('S','N') not null;
alter table Instrutor add sexo enum('M','F');
alter table medico change cpfmed cpfmed char(11) unique;
alter table endereco add cep char(8) not null;
alter table paciente add datareg time(6);
alter table paciente change datanasc datanasc date;
alter table paciente change datareg datareg date;
alter table endereco change comp comp varchar(255);

UPDATE aluno SET altalu = (sal.altalu*1.08)
FROM (SELECT codalu, altalu FROM Aluno WHERE sexalu = 'M')AS sal
WHERE codalu = sal.codalu;

DELETE * FROM Telefone_Instrutor ti
JOIN Instrutor i
ON ti.codins = i.codins
WHERE i.nomeins = 'A%';

CREATE TABLE Turma_Aluno ( 
codturalu decimal(8, 0) NOT NULL CONSTRAINT Turma_Aluno_pk PRIMARY KEY (codturalu), 
codtur decimal(6, 0) CONSTRAINT Turma_fk FOREIGN KEY (codtur) REFERENCES Turma(codtur),
codalu decimal(6, 0) CONSTRAINT Aluno_fk FOREIGN KEY (codalu) REFERENCES Aluno(codalu),
nfaturalu decimal(2, 0),
datturalu timestamp,
virturalu decimal(8, 2);