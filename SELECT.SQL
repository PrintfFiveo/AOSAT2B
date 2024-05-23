SELECT
alunos.nome_completo, materias_alunos.nota_prova_bimestral
FROM alunos
INNER JOIN
materias_alunos ON alunos.id = materias_alunos.aluno_id
WHERE
materias_alunos.nota_prova_bimestral>7;


select
  alunos.id, alunos.nome_completo, ROUND((
    materias_alunos.nota_atitudinal * 0.1 +
    materias_alunos.nota_licoes * 0.1 +
    materias_alunos.nota_prova_mensal * 0.3 +
    materias_alunos.nota_prova_bimestral * 0.5
  ),1) as media, materias_alunos.materia_id
from materias_alunos
INNER join
alunos ON alunos.id=materias_alunos.aluno_id
WHERE (
    materias_alunos.nota_atitudinal * 0.1 +
    materias_alunos.nota_licoes * 0.1 +
    materias_alunos.nota_prova_mensal * 0.3 +
    materias_alunos.nota_prova_bimestral * 0.5
  )>7

  
select
  alunos.id, alunos.nome_completo, ROUND((
    materias_alunos.nota_atitudinal * 0.1 +
    materias_alunos.nota_licoes * 0.1 +
    materias_alunos.nota_prova_mensal * 0.3 +
    materias_alunos.nota_prova_bimestral * 0.5
  ),1) as media, materias_alunos.curso_tecnico
from materias_alunos
INNER join
alunos ON alunos.id=materias_alunos.aluno_id
WHERE materias_alunos.nota_prova_bimestral>7 AND curso_tecnico=2
