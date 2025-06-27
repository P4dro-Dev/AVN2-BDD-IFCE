-- 1. Criação do banco de dados 
CREATE DATABASE hospital;
USE hospital;

-- 2. Criação da tabela médico 
CREATE TABLE medico (
    id INT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(100) NOT NULL,         
    especialidade VARCHAR(100) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Criação da tabela paciente
CREATE TABLE paciente (
    id INT AUTO_INCREMENT PRIMARY KEY,    
    nome VARCHAR(100) NOT NULL,           
    data_nascimento DATE NOT NULL,      
    medico_id INT NOT NULL,              
    FOREIGN KEY (medico_id) REFERENCES medico(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. Inserção de médicos 
INSERT INTO medico (nome, especialidade) VALUES
('Dr. Ana Souza', 'Cardiologia'),      -- Médico 1
('Dr. Bruno Lima', 'Pediatria'),       -- Médico 2
('Dra. Carla Mendes', 'Dermatologia'); -- Médico 3

-- 5. Inserção de pacientes 
INSERT INTO paciente (nome, data_nascimento, medico_id) VALUES
('Lucas Silva', '2005-09-15', 2),    
('Mariana Rocha', '1992-03-22', 1),   
('Pedro Almeida', '1980-12-01', 3),   
('Joana Dias', '2003-07-19', 1),      
('Carlos Pinto', '1999-01-05', 2);    

-- 6. Atualização de paciente 
UPDATE paciente 
SET nome = 'Mariana Oliveira' 
WHERE id = 2;  

-- 7. Remoção de paciente 
DELETE FROM paciente 
WHERE id = 4; 

-- 8. Adição de coluna sexo 
ALTER TABLE paciente 
ADD sexo CHAR(1) 
AFTER data_nascimento; 

-- 9. Consulta pacientes recentes 
SELECT * 
FROM paciente 
WHERE data_nascimento > '2000-01-01'; 

-- 10. Consulta com JOIN 
SELECT 
    p.nome AS paciente_nome,
    p.data_nascimento,
    m.nome AS medico_nome,
    m.especialidade
FROM 
    paciente p
INNER JOIN 
    medico m ON p.medico_id = m.id; 