 # 🏥| Sistema de Banco de Dados Hospitalar
 
Este projeto implementa um banco de dados MySQL para gestão hospitalar, com tabelas de médicos e pacientes, seguindo os requisitos de uma avaliação acadêmica.             
 
## 📋| Estrutura do Banco de Dados 

### Tabelas Principais 

#### `medico`  
| Coluna       | Tipo         | Descrição                     | 
|--------------|--------------|-------------------------------| 
| id           | INT          | Chave primária autoincrementada |     
| nome         | VARCHAR(100) | Nome completo do médico       | 
| especialidade| VARCHAR(100) | Área de especialização médica |

#### `paciente`
| Coluna         | Tipo         | Descrição                     |
|----------------|--------------|-------------------------------|
| id             | INT          | Chave primária autoincrementada |
| nome           | VARCHAR(100) | Nome completo do paciente     |
| data_nascimento| DATE         | Data de nascimento            |
| medico_id      | INT          | Chave estrangeira para médico |
| sexo           | CHAR(1)      | Sexo do paciente (opcional)   |

## ⚙️| Funcionalidades Implementadas

1. Criação do banco de dados e tabelas
2. Inserção de dados de exemplo
3. Operações CRUD completas:
   - Atualização de registros
   - Exclusão de pacientes
   - Adição de novas colunas
4. Consultas avançadas:
   - Filtros por data
   - JOIN entre tabelas

## 💻| Como Executar

1. Copie todo o script SQL
2. Execute no seu servidor MySQL:
   
```bash
mysql -u seu_usuario -p < script_hospital.sql
📊 Exemplo de Consultas
Pacientes do século XXI:
```
```
sql
SELECT * FROM paciente WHERE data_nascimento > '2000-01-01';
Relação paciente-médico:

```
```
sql
SELECT p.nome, m.nome AS medico, m.especialidade
FROM paciente p JOIN medico m ON p.medico_id = m.id;

```

## 📝 Licença
Este projeto está licenciado sob a MIT License.



