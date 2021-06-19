CREATE TABLE Comorbidades (
  codcomo   int(10) NOT NULL AUTO_INCREMENT, 
  desccomor varchar(255) NOT NULL, 
  PRIMARY KEY (codcomo));
CREATE TABLE Endereco (
  pais           varchar(255) NOT NULL, 
  est            char(2) NOT NULL, 
  cid            varchar(255) NOT NULL, 
  rua            varchar(255) NOT NULL, 
  bairro         varchar(255) NOT NULL, 
  comp           int(10), 
  Pacientecodpac int(10) NOT NULL, 
  num            int(5));
CREATE TABLE Especializacao (
  codesp      int(8) NOT NULL AUTO_INCREMENT, 
  nomeesp     varchar(255) NOT NULL, 
  instituicao varchar(255) NOT NULL, 
  PRIMARY KEY (codesp));
CREATE TABLE Especializacao_Medico (
  Especializacaocodesp int(8) NOT NULL, 
  Medicocodmed         int(8) NOT NULL, 
  PRIMARY KEY (Especializacaocodesp, 
  Medicocodmed));
CREATE TABLE Hospital (
  codhos  int(8) NOT NULL AUTO_INCREMENT, 
  nomhosp varchar(255) NOT NULL, 
  telef   varchar(255) NOT NULL, 
  esthos  char(2) NOT NULL, 
  cidhos  varchar(255) NOT NULL, 
  ruahos  varchar(255) NOT NULL, 
  PRIMARY KEY (codhos));
CREATE TABLE Login (
  codusuario int(10) NOT NULL AUTO_INCREMENT, 
  usuario    varchar(255) NOT NULL, 
  senha      varchar(255) NOT NULL, 
  PRIMARY KEY (codusuario));
CREATE TABLE Medico (
  codmed  int(8) NOT NULL AUTO_INCREMENT, 
  nomemed varchar(255) NOT NULL, 
  PRIMARY KEY (codmed));
CREATE TABLE Paciente (
  codpac         int(10) NOT NULL AUTO_INCREMENT, 
  nomepac        varchar(255) NOT NULL, 
  cpfpac         varchar(11) NOT NULL UNIQUE, 
  sexpac         char(1) NOT NULL, 
  telpac         varchar(255) NOT NULL, 
  datanasc       time(6) NOT NULL, 
  Hospitalcodhos int(8) NOT NULL, 
  Medicocodmed   int(8), 
  CONSTRAINT codpac 
    PRIMARY KEY (codpac));
CREATE TABLE Paciente_Comorbidades (
  Pacientecodpac      int(10) NOT NULL, 
  Comorbidadescodcomo int(10) NOT NULL, 
  PRIMARY KEY (Pacientecodpac, 
  Comorbidadescodcomo));
CREATE TABLE Paciente_Sintomas (
  Pacientecodpac  int(10) NOT NULL, 
  Sintomascodsint int(5) NOT NULL, 
  Intsint         int(2), 
  PRIMARY KEY (Pacientecodpac, 
  Sintomascodsint));
CREATE TABLE Questionario (
  Pacientecodpac int(10) NOT NULL, 
  pesopac        decimal(5, 2) NOT NULL, 
  altpac         decimal(3, 2) NOT NULL, 
  teste          varchar(255), 
  result         varchar(255), 
  bebe           char(1) NOT NULL, 
  fuma           char(1) NOT NULL, 
  relacsex       char(1) NOT NULL, 
  classe         varchar(255) NOT NULL, 
  tipsang        varchar(3) NOT NULL);
CREATE TABLE Sintomas (
  codsint  int(5) NOT NULL AUTO_INCREMENT, 
  nomesint varchar(255) NOT NULL, 
  PRIMARY KEY (codsint));
ALTER TABLE Paciente_Comorbidades ADD CONSTRAINT FKPaciente_C880135 FOREIGN KEY (Comorbidadescodcomo) REFERENCES Comorbidades (codcomo);
ALTER TABLE Paciente_Comorbidades ADD CONSTRAINT FKPaciente_C60719 FOREIGN KEY (Pacientecodpac) REFERENCES Paciente (codpac);
ALTER TABLE Especializacao_Medico ADD CONSTRAINT FKEspecializ131278 FOREIGN KEY (Medicocodmed) REFERENCES Medico (codmed);
ALTER TABLE Especializacao_Medico ADD CONSTRAINT FKEspecializ5741 FOREIGN KEY (Especializacaocodesp) REFERENCES Especializacao (codesp);
ALTER TABLE Paciente ADD CONSTRAINT FKPaciente924260 FOREIGN KEY (Medicocodmed) REFERENCES Medico (codmed);
ALTER TABLE Endereco ADD CONSTRAINT FKEndereco525211 FOREIGN KEY (Pacientecodpac) REFERENCES Paciente (codpac);
ALTER TABLE Questionario ADD CONSTRAINT FKQuestionar555707 FOREIGN KEY (Pacientecodpac) REFERENCES Paciente (codpac);
ALTER TABLE Paciente ADD CONSTRAINT FKPaciente300502 FOREIGN KEY (Hospitalcodhos) REFERENCES Hospital (codhos);
ALTER TABLE Paciente_Sintomas ADD CONSTRAINT FKPaciente_S824946 FOREIGN KEY (Sintomascodsint) REFERENCES Sintomas (codsint);
ALTER TABLE Paciente_Sintomas ADD CONSTRAINT FKPaciente_S516710 FOREIGN KEY (Pacientecodpac) REFERENCES Paciente (codpac);
