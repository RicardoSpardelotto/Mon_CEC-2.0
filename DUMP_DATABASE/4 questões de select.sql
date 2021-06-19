select codpac ,nomepac from paciente p
join paciente_sintomas ps 
on p.codpac = ps.Pacientecodpac
where (TIMESTAMPDIFF(YEAR,datanasc,CURDATE()) < 40 or TIMESTAMPDIFF(YEAR,datanasc,CURDATE()) > 60) and ps.Sintomascodsint = '13'
order by nomepac;

select nomepac, cid from paciente p 
join endereco e 
on p.codpac = e.Pacientecodpac
join paciente_sintomas ps 
on ps.Pacientecodpac = p.codpac
join questionario q2
on q2.Pacientecodpac = p.codpac 
where 
(e.cid = 'Maravilha' or 
e.cid = 'Descanso' or 
e.cid = 'Pinhalzinho' or 
e.cid = 'Chapecó' or 
e.cid = 'Itapiranga') and p.sexpac = 'F' and ps.Sintomascodsint > '0' and q2.result = 'Negativo'
order by e.cid desc, p.nomepac;

select cep, cid, count(cid) as Quantidade from endereco e
join questionario q2 
on q2.Pacientecodpac = e.Pacientecodpac
where q2.`result` = 'Suspeito' and e.est = 'SC'
group by cid
order by quantidade;

SELECT ins.codins, ins.nomins, (SELECT COUNT(*) AS Quantidade FROM turma trm WHERE trm.codins = ins.codins) 
total_turmas FROM instrutor group by Quantidade ORDER BY ins.nomins DESC;

select TIMESTAMPDIFF(YEAR,datanasc ,CURDATE()) AS Idade, count(TIMESTAMPDIFF(YEAR,datanasc ,CURDATE())) as Quantidade from paciente p
join questionario q 
on p.codpac = q.Pacientecodpac
where q.`result` = 'Positivo' and p.datareg % 2 = 1
order by Quantidade desc;