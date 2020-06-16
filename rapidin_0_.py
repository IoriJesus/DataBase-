import os


l = sorted(os.listdir(os.getcwd()), key = lambda x: int(x.split('_')[1]))

cnt = 1
for i in range(len(l)):
    if (l[i] == "rapidin_0_.py"):
        continue
    os.rename(l[i], "q" + str(cnt) + ".sql")
    l[i] = "q" + str(cnt) + ".sql"
    cnt += 1


ans = """
clear screen
set linesize 130
set pagesize 100
spool log.txt
connect sergio/sergio
prompt starting scripts execution
"""

for name in l:
    if name == "rapidin_0_.py":
        continue
    ans += "@@/root/Database-/Ejercicios/SQLByExample/Chap9/" + name + "\n"

ans += """
dbms_output.put_line('--Sergio Gabriel Sanchez Valencia')
pause end of execution
"""

with open('exec.sql', 'w+') as f:
    f.write(ans)
