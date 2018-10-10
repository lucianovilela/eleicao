#!/bin/bash

COMP=(295 297)
TIPO_NACIONAL=(c0001)
TIPO_ESTADUAL=(c0003 c0005 c0006 c0007)
ESTADO=(rs pr sc go ms mt df sp rj es ba se al pb rn ce ma pe pa rr ro am ac ap to)
#ESTADO=(rs pr)

for tipo in ${TIPO_NACIONAL[*]}
do 
	

	for uf in ${ESTADO[*]}
	do
		FILENAME=nacional_${uf}_${tipo}.js
		wget http://divulga.tse.jus.br/2018/divulgacao/oficial/${COMP[0]}/dadosdivweb/${uf}/${uf}-${tipo}-e000${COMP[0]}-w.js?1539115396253 -t 3 -O $FILENAME
	done
done

for tipo in ${TIPO_ESTADUAL[*]}
do 
	

	for uf in ${ESTADO[*]}
	do
		FILENAME=estadual_${uf}_${tipo}.js
		wget http://divulga.tse.jus.br/2018/divulgacao/oficial/${COMP[1]}/dadosdivweb/${uf}/${uf}-${tipo}-e000${COMP[1]}-w.js?1539115396253  -t 3 -O $FILENAME
	done
done
