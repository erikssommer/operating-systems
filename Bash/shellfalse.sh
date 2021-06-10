#! /bin/bash
IFS=:
# shellcheck disable=SC2034
# shellcheck disable=SC2162
while read brnavn x ID GR NAVN HOME SHELL
do
if [ "$SHELL" = "/bin/false" ]
then
unset IFS
# shellcheck disable=SC2162
ps aux | while read bruker PID x x x x x x x x prog
do
if [ "$brnavn" = "$bruker" ]
then
echo "$brnavn har pid=$PID"
fi
done
IFS=:
fi
done < /etc/passwd