#!/bin/sh
exec 1>&2
find . -iname "*.php" | while read prom
do
        php -l $prom
done
RETVAL=$?

if [ $RETVAL != 0 ]
then
        echo "Erro de sintaxe em arquivo PHP."
	echo "Favor corrigir antes de executar commit novamente."
fi
exit $RETVAL

