Create database Projeto_integrador;
USE Projeto_integrador;

CREATE TABLE Medico(
IdMedico int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nome varchar(100) not null,
RG varchar(9) not null,
Senha varchar(50) not null,
Endereco varchar(200)
);

CREATE TABLE Paciente(
IdPaciente int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nome varchar(100) not null,
RG varchar(9) not null,
Senha varchar(50) not null,
Data_nascimento date,
Medico_responsavel_id int,
foreign key (Medico_responsavel_id) references Medico (IdMedico)
);

CREATE TABLE Lembrete(
IdLembrete int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Descricao varchar(500) not null,
Data_hora varchar(100) not null,
Realizado bool not null Default false,
Paciente_id int not null,
foreign key (Paciente_id) references Paciente (IdPaciente)
);

/*** -----------------------------------------------------------------------------------------***/

Insert into Medico(Nome, RG, Senha, Endereco) Values 
('Pedro', '167864189', MD5(123), 'Rua Flores 10, apto 101'), ('Qiyana', '012398745', MD5(123), 'Avenida Japão 50'), ('Renato', '369752014', MD5(123), 'Rua Albieri 480'), ('Sarah', '784512963', MD5(123), 'Travessa A 89'), ('Taís', '205846197', MD5(123), 'Rua das Rosas, 80, apto 200'), ('Umberto', '379128645', MD5(123), 'Avenida Santos, 90'), ('Vânia', '558961440', MD5(123), 'Rua Álamo, 180, ap 90'), ('Wanderley', '250466789', MD5(123), 'Avenida Chateaubriand, 150'), ('Xuxa', '648912345', MD5(123), 'Rua Flores 670'), ('Yuri', '741255986', MD5(123), 'Avenida das Águas 600');

Insert into Paciente(Nome, RG, Senha, Data_nascimento, Medico_responsavel_id) Values
('Antônio', '861324730', MD5(123), '1969-01-01', 1), ('Bruno', '876978067', MD5(123), '1970-01-01', 1), ('Carlos', '814279023', MD5(123), '1971-01-01', 2), ('Diana', '924987030', MD5(123), '1972-01-01', 3), ('Ester', '603737061', MD5(123), '1973-01-01', 4), ('Fábio', '529091049', MD5(123), '1974-01-01', 5), ('Gustavo', '626639045', MD5(123), '1975-01-01', 6), ('Hélio', '297959057', MD5(123), '1976-01-01', 7), ('Isabela', '588651056', MD5(123), '1977-01-01', 8), ('João', '972518080', MD5(123), '1978-01-01', 9), ('Kira', '236987415', MD5(123), '1979-01-01', 10), ('Lucas', '123765985', MD5(123), '2000-01-01', 2), ('Maria', '550123643', MD5(123), '2005-01-01', 3), ('Nathália', '108634722', MD5(123), '2010-01-01', 4), ('Otávio', '259876513', MD5(123), '2015-01-01', 5);

Insert into Lembrete(Descricao, Data_hora, Paciente_id) Values
('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 1), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 2), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 3), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 4), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 5), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 6), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 7), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 8), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 9), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 10), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 11), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 12), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 13), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 14), ('Tomar 2 comprimidos de Advil', '2022-01-01 10:10:10', 15);

Select * from Medico;
Select * from Paciente;
Select * from Lembrete;

