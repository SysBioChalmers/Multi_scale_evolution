#!/bin/bash
#SBATCH -A C3SE2020-1-8
#SBATCH -C MEM128
#SBATCH -N 1
#SBATCH -n 20
#SBATCH -o out.txt
#SBATCH -t 3-00:00:00
#SBATCH --mail-user=luho@chalmers.se
#SBATCH --mail-type=end
codeml /c3se/NOBACKUP/users/luho/site_model/OG8517/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8517/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8517/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8517/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5043/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5043/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5043/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5043/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7386/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7386/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7386/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7386/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6485/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6485/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6485/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6485/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16019/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16019/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16019/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16019/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11818/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11818/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11818/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11818/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11496/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11496/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11496/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11496/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16253/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16253/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16253/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3823/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3823/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3823/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3823/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4268/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4268/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4268/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4268/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17550/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17550/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17550/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17550/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15945/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15945/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15945/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15945/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5635/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5635/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5635/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5635/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7292/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7292/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7292/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7292/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3900/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3900/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3900/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3900/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14913/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14913/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14913/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14913/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15781/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15781/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15781/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15781/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1363/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1363/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1363/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1363/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16347/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16347/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16347/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16347/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4663/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4663/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4663/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4663/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7949/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7949/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7949/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7949/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5602/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5602/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5602/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5602/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15972/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15972/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15972/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15972/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4101/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4101/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4101/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4101/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12339/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12339/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12339/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12339/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2499/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2499/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2499/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2499/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5743/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5743/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5743/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5743/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8217/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8217/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8217/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8217/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1222/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1222/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1222/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1222/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5987/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5987/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5987/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5987/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13731/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13731/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13731/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13731/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16231/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16231/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16231/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16231/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15195/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15195/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15195/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15195/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14696/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14696/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14696/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14696/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9523/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9523/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9523/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9523/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11396/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11396/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11396/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11396/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8461/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8461/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8461/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8461/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17373/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17373/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17373/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17373/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5657/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5657/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5657/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5657/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13170/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13170/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13170/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13170/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3791/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3791/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3791/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3791/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10581/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10581/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10581/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10581/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5660/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5660/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5660/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5660/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1301/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1301/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1301/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1301/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4601/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4601/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4601/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4601/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9355/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9355/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9355/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9355/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3955/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3955/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3955/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3955/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5380/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5380/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5380/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5380/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8827/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8827/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8827/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8827/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2738/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2738/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2738/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2738/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6024/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6024/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6024/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6024/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17857/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17857/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17857/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17857/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3513/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3513/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3513/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3513/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9682/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9682/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9682/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9682/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15234/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15234/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15234/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15234/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14028/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14028/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14028/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14028/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7710/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7710/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7710/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7710/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6982/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6982/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6982/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6982/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13490/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13490/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13490/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13490/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10549/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10549/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10549/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10549/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15556/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15556/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15556/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15556/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12393/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12393/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12393/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12393/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16801/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16801/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16801/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16801/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3430/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3430/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3430/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3430/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14376/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14376/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14376/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14376/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3352/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3352/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3352/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3352/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10175/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10175/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10175/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10175/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2451/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2451/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2451/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2451/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5294/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5294/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5294/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5294/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7166/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7166/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7166/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7166/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12287/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12287/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12287/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12287/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11641/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11641/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11641/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11641/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7479/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7479/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7479/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7479/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18409/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18409/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18409/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18409/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7604/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7604/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7604/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7604/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3889/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3889/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3889/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3889/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4383/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4383/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4383/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4383/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3546/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3546/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3546/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3546/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1683/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1683/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1683/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1683/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6046/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6046/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6046/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6046/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2245/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2245/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2245/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2245/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7745/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7745/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7745/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7745/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2510/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2510/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2510/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2510/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1847/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1847/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1847/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1847/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16863/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16863/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16863/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16863/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7010/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7010/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7010/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7010/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9182/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9182/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9182/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9182/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5839/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5839/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5839/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5839/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15749/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15749/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15749/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15749/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8872/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8872/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8872/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8872/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10249/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10249/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10249/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10249/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15417/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15417/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15417/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15417/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2433/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2433/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2433/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2433/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1288/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1288/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1288/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1288/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15375/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15375/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15375/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15375/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6152/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6152/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6152/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6152/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4297/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4297/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4297/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4297/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16784/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16784/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16784/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16784/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6165/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6165/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6165/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6165/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3465/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3465/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3465/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3465/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10642/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10642/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10642/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10642/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12909/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12909/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12909/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12909/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13968/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13968/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13968/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13968/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3307/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3307/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3307/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3307/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14323/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14323/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14323/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14323/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16977/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16977/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16977/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16977/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6318/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6318/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6318/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6318/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9589/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9589/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9589/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9589/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15420/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15420/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15420/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15420/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2404/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2404/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2404/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2404/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16644/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16644/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16644/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16644/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17458/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17458/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17458/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17458/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14581/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14581/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14581/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14581/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12158/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12158/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12158/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12158/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17625/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17625/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17625/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17625/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13139/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13139/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13139/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13139/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9156/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9156/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9156/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9156/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4402/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4402/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4402/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4402/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16111/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16111/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16111/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16111/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9161/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9161/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9161/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9161/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4435/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4435/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4435/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4435/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1657/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1657/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1657/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1657/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6903/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6903/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6903/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6903/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1348/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1348/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1348/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1348/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13532/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13532/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13532/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13532/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8741/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8741/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8741/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8741/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5068/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5068/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5068/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5068/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1774/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1774/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1774/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1774/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15396/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15396/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15396/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15396/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8014/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8014/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8014/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8014/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5222/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5222/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5222/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5222/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16994/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16994/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16994/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16994/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4521/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4521/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4521/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4521/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10852/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10852/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10852/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10852/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15582/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15582/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15582/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15582/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1602/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1602/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1602/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1602/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4302/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4302/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4302/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4302/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9656/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9656/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9656/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9656/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11945/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11945/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11945/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11945/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8162/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8162/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8162/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8162/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG16611/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16611/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16611/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16611/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13311/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13311/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13311/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13311/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9661/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9661/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9661/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9661/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4148/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4148/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4148/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4148/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12370/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12370/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12370/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12370/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5354/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5354/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5354/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5354/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2591/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2591/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2591/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2591/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8600/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8600/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8600/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8600/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3292/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3292/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3292/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3292/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4709/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4709/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4709/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4709/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4216/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4216/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4216/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4216/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12253/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12253/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12253/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8723/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8723/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8723/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8723/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14395/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14395/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14395/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14395/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4543/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4543/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4543/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4543/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3386/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3386/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3386/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3386/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10830/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10830/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10830/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10830/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6399/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6399/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6399/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6399/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12506/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12506/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12506/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12506/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6679/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6679/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6679/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6679/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10441/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10441/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10441/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2165/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2165/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2165/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2165/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13916/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13916/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13916/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13916/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10323/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10323/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10323/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10323/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2607/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2607/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2607/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2607/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18377/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18377/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18377/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18377/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8089/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8089/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8089/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8089/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2318/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2318/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2318/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2318/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12977/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12977/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12977/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12977/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12940/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12940/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12940/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12940/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7330/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7330/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7330/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7330/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1594/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1594/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1594/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1594/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3651/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3651/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3651/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3651/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15469/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15469/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15469/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15469/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2152/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2152/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2152/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2152/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18422/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18422/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18422/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18422/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5797/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5797/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5797/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5797/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3010/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3010/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3010/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3010/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5847/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5847/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5847/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5847/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3981/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3981/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3981/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3981/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10237/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10237/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10237/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10237/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6272/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6272/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6272/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6272/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15055/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15055/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15055/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15055/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2071/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2071/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2071/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2071/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17390/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17390/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17390/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17390/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4811/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4811/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4811/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4811/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10562/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10562/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10562/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10562/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7059/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7059/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7059/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7059/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14992/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14992/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14992/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14992/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6038/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6038/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6038/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6038/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5870/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5870/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5870/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5870/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11442/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11442/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11442/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11442/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12915/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12915/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12915/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12915/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17584/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17584/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17584/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17584/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13298/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13298/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13298/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13298/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18168/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18168/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18168/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18168/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2418/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2418/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2418/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2418/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8296/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8296/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8296/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8296/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4967/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4967/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4967/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4967/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2130/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2130/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2130/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2130/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10376/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10376/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10376/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10376/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4794/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4794/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4794/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4794/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5906/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5906/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5906/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5906/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12922/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12922/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12922/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12922/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4844/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4844/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4844/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4844/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15037/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15037/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15037/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15037/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9481/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9481/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9481/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9481/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11234/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11234/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11234/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11234/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15755/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15755/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15755/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15755/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10255/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10255/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10255/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10255/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6572/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6572/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6572/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6572/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5812/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5812/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5812/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5812/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3045/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3045/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3045/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3045/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1380/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1380/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1380/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1380/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18236/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18236/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18236/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18236/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15991/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15991/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15991/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15991/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3238/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3238/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3238/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3238/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6738/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6738/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6738/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6738/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5192/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5192/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5192/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5192/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15773/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15773/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15773/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15773/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4691/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4691/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4691/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4691/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3054/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3054/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3054/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3054/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14070/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14070/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14070/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14070/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2248/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2248/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2248/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2248/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1391/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1391/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1391/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1391/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6554/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6554/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6554/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6554/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3229/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3229/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3229/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3229/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9490/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9490/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9490/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9490/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10039/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10039/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10039/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10039/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14047/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14047/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14047/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14047/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11547/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11547/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11547/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11547/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2760/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2760/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2760/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2760/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3622/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3622/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3622/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3622/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10405/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10405/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10405/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10405/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11619/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11619/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11619/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11619/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14319/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14319/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14319/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14319/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3140/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3140/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3140/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3140/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17595/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17595/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17595/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17595/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2674/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2674/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2674/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2674/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11453/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11453/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11453/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11453/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG12904/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12904/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12904/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12904/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8287/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8287/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8287/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8287/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7109/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7109/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7109/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7109/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18179/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18179/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18179/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18179/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2548/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2548/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2548/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2548/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7048/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7048/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7048/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7048/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5692/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5692/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5692/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5692/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3529/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3529/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3529/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3529/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6029/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6029/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6029/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6029/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10211/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10211/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10211/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10211/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15239/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15239/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15239/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15239/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11525/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11525/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11525/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11525/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2060/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2060/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2060/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2060/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14747/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14747/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14747/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14747/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11119/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11119/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11119/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11119/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11888/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11888/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11888/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11888/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2143/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2143/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2143/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2143/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6340/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6340/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6340/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6340/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11353/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11353/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11353/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11353/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16596/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16596/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16596/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16596/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7474/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7474/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7474/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7474/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3368/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3368/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3368/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3368/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13589/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13589/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13589/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13589/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2309/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2309/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2309/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2309/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12966/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12966/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12966/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12966/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8587/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8587/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8587/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8587/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3884/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3884/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3884/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3884/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9519/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9519/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9519/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9519/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10821/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10821/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10821/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10821/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18686/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18686/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18686/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18686/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11840/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11840/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11840/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11840/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4230/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4230/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4230/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4230/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18399/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18399/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18399/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18399/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9764/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9764/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9764/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9764/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13223/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13223/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13223/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13223/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4207/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4207/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4207/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4207/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8050/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8050/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8050/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8050/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5779/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5779/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5779/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5779/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14384/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14384/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14384/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14384/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15198/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15198/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15198/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15198/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1065/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1065/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1065/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1065/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7832/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7832/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7832/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7832/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10187/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10187/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10187/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10187/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17103/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17103/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17103/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17103/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12403/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12403/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12403/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12403/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8173/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8173/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8173/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8173/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10935/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10935/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10935/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10935/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9112/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9112/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9112/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9112/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17661/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17661/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17661/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17661/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5345/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5345/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5345/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5345/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2580/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2580/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2580/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2580/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8611/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8611/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8611/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8611/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5372/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5372/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5372/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5372/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8626/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8626/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8626/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8626/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2939/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2939/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2939/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2939/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15593/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15593/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15593/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15593/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1171/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1171/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1171/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1171/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11790/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11790/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11790/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11790/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4471/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4471/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4471/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4471/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16637/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16637/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16637/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16637/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1613/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1613/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1613/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1613/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9706/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9706/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9706/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9706/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4252/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4252/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4252/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4252/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1752/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1752/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1752/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1752/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16776/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16776/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16776/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16776/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5551/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5551/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5551/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5551/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6488/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6488/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6488/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6488/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7694/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7694/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7694/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7694/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17075/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17075/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17075/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17075/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8767/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8767/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8767/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8767/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1518/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1518/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1518/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1518/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4989/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4989/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4989/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4989/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8032/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8032/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8032/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8032/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6831/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6831/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6831/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6831/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11815/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11815/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11815/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11815/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10687/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10687/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10687/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10687/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4265/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4265/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4265/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4265/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15948/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15948/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15948/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15948/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7973/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7973/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7973/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7973/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11936/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11936/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11936/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11936/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4659/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4659/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4659/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4659/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6083/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6083/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6083/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6083/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14929/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14929/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14929/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14929/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4346/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4346/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4346/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4346/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13355/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13355/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13355/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13355/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10793/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10793/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10793/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10793/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10653/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10653/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10653/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10653/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15353/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15353/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15353/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15353/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16795/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16795/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16795/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16795/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6174/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6174/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6174/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6174/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8977/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8977/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8977/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8977/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14450/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14450/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14450/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14450/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16966/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16966/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16966/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16966/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2415/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2415/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2415/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2415/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8784/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8784/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8784/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8784/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15431/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15431/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15431/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15431/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3316/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3316/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3316/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3316/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10419/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10419/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10419/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10419/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1975/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1975/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1975/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1975/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15406/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15406/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15406/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15406/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1786/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1786/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1786/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1786/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6143/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6143/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6143/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6143/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4286/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4286/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4286/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4286/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8940/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8940/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8940/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8940/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1299/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1299/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1299/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1299/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9193/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9193/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9193/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9193/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11726/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11726/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11726/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11726/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6702/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6702/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6702/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6702/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7990/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7990/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7990/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7990/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14739/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14739/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14739/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14739/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11239/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11239/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11239/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11239/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10025/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10025/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10025/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10025/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2263/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2263/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2263/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2263/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3048/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3048/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3048/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3048/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2254/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2254/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2254/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2254/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4392/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4392/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4392/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4392/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2536/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2536/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2536/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2536/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10012/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10012/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10012/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10012/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2029/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2029/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2029/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2029/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11711/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11711/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11711/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11711/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3374/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3374/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3374/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3374/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18418/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18418/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18418/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18418/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1920/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1920/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1920/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1920/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15453/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15453/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15453/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15453/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2477/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2477/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2477/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2477/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3416/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3416/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3416/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3416/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6409/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6409/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6409/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6409/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6887/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6887/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6887/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6887/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10606/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10606/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10606/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10606/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2322/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2322/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2322/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2322/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3421/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3421/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3421/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3421/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15464/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15464/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15464/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15464/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5285/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5285/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5285/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5285/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6643/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6643/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6643/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6643/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11539/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11539/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11539/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11539/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10725/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10725/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10725/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10725/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9860/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9860/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9860/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9860/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10047/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10047/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10047/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10047/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7063/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7063/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7063/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7063/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17682/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17682/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17682/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17682/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG13481/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13481/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13481/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13481/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10558/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10558/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10558/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10558/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16181/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16181/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16181/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16181/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3257/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3257/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3257/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3257/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14273/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14273/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14273/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14273/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4492/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4492/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4492/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4492/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13838/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13838/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13838/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13838/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9857/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9857/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9857/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9857/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15570/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15570/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15570/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15570/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2554/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2554/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2554/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2554/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6248/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6248/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6248/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6248/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14511/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14511/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14511/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14511/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6035/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6035/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6035/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6035/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12859/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12859/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12859/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12859/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16149/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16149/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16149/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16149/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10590/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10590/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10590/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10590/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9139/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9139/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9139/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9139/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1472/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1472/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1472/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1472/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2925/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2925/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2925/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2925/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9426/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9426/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9426/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9426/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14960/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14960/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14960/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14960/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5882/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5882/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5882/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5882/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9344/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9344/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9344/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9344/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11948/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11948/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11948/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11948/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12891/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12891/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12891/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12891/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1638/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1638/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1638/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1638/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8312/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8312/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8312/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8312/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2083/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2083/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2083/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2083/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12023/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12023/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12023/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12023/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14687/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14687/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14687/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14687/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2831/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2831/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2831/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2831/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8231/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8231/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8231/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8231/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11698/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11698/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11698/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11698/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5752/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5752/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5752/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5752/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2197/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2197/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2197/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2197/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7497/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7497/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7497/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7497/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8719/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8719/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8719/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8719/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6394/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6394/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6394/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6394/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5030/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5030/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5030/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5030/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3867/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3867/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3867/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3867/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9326/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9326/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9326/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9326/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10290/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10290/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10290/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10290/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16649/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16649/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16649/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16649/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13349/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13349/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13349/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13349/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1410/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1410/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1410/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1410/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2947/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2947/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2947/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2947/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8370/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8370/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8370/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8370/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13892/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13892/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13892/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13892/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12162/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12162/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12162/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12162/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1345/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1345/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1345/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1345/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4645/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4645/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4645/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4645/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8253/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8253/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8253/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4995/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4995/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4995/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4995/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5707/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5707/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5707/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5707/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10868/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10868/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10868/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10868/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17223/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17223/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17223/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17223/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14816/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14816/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14816/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14816/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3832/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3832/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3832/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3832/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4766/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4766/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4766/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4766/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1266/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1266/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1266/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1266/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8019/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8019/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8019/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8019/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1251/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1251/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1251/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1251/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2697/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2697/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2697/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2697/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17576/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17576/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17576/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17576/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1533/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1533/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1533/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1533/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5730/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5730/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5730/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5730/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16008/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16008/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16008/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16008/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16150/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16150/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16150/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16150/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10907/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10907/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10907/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10907/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10589/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10589/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10589/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10589/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4474/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4474/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4474/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4474/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5668/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5668/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5668/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5668/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14295/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14295/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14295/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14295/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10096/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10096/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10096/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10096/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15596/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15596/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15596/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15596/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13332/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13332/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13332/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13332/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6975/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6975/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6975/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6975/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8469/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8469/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8469/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8469/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7085/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7085/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7085/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7085/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6786/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6786/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6786/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6786/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4443/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4443/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4443/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4443/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5501/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5501/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5501/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5501/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8055/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8055/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8055/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8055/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13226/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13226/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13226/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13226/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3849/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3849/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3849/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3849/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16726/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16726/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16726/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16726/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5263/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5263/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5263/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5263/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8737/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8737/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8737/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8737/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15482/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15482/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15482/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15482/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13573/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13573/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13573/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13573/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4557/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4557/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4557/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4557/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3392/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3392/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3392/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3392/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4048/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4048/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4048/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4048/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8700/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8700/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8700/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8700/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2491/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2491/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2491/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2491/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1548/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1548/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1548/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1548/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4235/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4235/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4235/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4235/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9761/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9761/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9761/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9761/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17012/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17012/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17012/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17012/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15296/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15296/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15296/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15296/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10289/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10289/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10289/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10289/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16650/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16650/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16650/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16650/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4374/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4374/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4374/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4374/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17631/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17631/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17631/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17631/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12331/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12331/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12331/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12331/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12619/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12619/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12619/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12619/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17606/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17606/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17606/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17606/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8676/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8676/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8676/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8676/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2969/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2969/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2969/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2969/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1643/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1643/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1643/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1643/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9617/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9617/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9617/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9617/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8885/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8885/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8885/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8885/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9056/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9056/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9056/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9056/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10871/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10871/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10871/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10871/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4260/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4260/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4260/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4260/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11181/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11181/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11181/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11181/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16744/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16744/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16744/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16744/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15382/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15382/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15382/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15382/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11810/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11810/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11810/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11810/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7691/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7691/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7691/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7691/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9703/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9703/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9703/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9703/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14838/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14838/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14838/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14838/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4257/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4257/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4257/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4257/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8762/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8762/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8762/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8762/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13511/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13511/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13511/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13511/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1035/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1035/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1035/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1035/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11456/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11456/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11456/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11456/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15655/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15655/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15655/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15655/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2671/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2671/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2671/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2671/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3610/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3610/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3610/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3610/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15428/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15428/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15428/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15428/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2882/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2882/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2882/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2882/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7413/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7413/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7413/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7413/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4944/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4944/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4944/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4944/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15137/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15137/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15137/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15137/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8282/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8282/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8282/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8282/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13957/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13957/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13957/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13957/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2124/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2124/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2124/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2124/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16948/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16948/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16948/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16948/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3627/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3627/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3627/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3627/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8959/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8959/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8959/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8959/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4780/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4780/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4780/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4780/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5912/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5912/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5912/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5912/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13874/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13874/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13874/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13874/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2996/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2996/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2996/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2996/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11220/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11220/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11220/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11220/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16698/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16698/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16698/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16698/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6079/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6079/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6079/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6079/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3066/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3066/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3066/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3066/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5488/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5488/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5488/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5488/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15269/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15269/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15269/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15269/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14717/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14717/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14717/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14717/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1878/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1878/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1878/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1878/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6233/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6233/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6233/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6233/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2030/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2030/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2030/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2030/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10514/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10514/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10514/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10514/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2171/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2171/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2171/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2171/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15155/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15155/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15155/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15155/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18401/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18401/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18401/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18401/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3110/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3110/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3110/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3110/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15328/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15328/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15328/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15328/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3127/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3127/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3127/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3127/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7159/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7159/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7159/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7159/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1580/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1580/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1580/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1580/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13935/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13935/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13935/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13935/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2218/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2218/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2218/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2218/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8189/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8189/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8189/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8189/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11520/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11520/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11520/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11520/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8818/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8818/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8818/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8818/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6266/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6266/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6266/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6266/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15041/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15041/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15041/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15041/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13816/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13816/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13816/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13816/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7552/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7552/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7552/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7552/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15569/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15569/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15569/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15569/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1494/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1494/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1494/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1494/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2730/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2730/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2730/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2730/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14508/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14508/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14508/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14508/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14986/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14986/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14986/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14986/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18240/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18240/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18240/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18240/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7230/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7230/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7230/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7230/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG16212/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16212/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16212/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16212/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11859/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11859/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11859/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11859/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18380/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18380/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18380/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18380/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4229/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4229/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4229/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4229/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8561/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8561/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8561/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8561/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12026/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12026/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12026/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12026/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12539/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12539/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12539/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12539/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4701/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4701/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4701/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4701/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2834/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2834/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2834/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2834/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16306/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16306/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16306/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16306/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12894/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12894/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12894/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12894/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7586/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7586/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7586/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7586/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12667/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12667/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12667/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12667/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8317/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8317/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8317/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8317/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6285/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6285/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6285/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6285/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13164/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13164/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13164/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13164/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3785/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3785/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3785/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3785/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2917/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2917/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2917/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2917/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16453/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16453/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16453/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16453/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11296/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11296/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11296/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11296/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG11789/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11789/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11789/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11789/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12650/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12650/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12650/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12650/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5674/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5674/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5674/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5674/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14289/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14289/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14289/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14289/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9341/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9341/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9341/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9341/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5116/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5116/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5116/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5116/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3191/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3191/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3191/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3191/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4754/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4754/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4754/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4754/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6491/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6491/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6491/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6491/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5735/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5735/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5735/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5735/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13983/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13983/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13983/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13983/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2861/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2861/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2861/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2861/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9562/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9562/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9562/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9562/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1536/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1536/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1536/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1536/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9555/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9555/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9555/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9555/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1263/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1263/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1263/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1263/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15681/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15681/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15681/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15681/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9728/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9728/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9728/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9728/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9169/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9169/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9169/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9169/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6585/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6585/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6585/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6585/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7286/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7286/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7286/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7286/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8417/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8417/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8417/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8417/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12150/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12150/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12150/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12150/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10979/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10979/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10979/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10979/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1415/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1415/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1415/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1415/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4115/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4115/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4115/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4115/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2251/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2251/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2251/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2251/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3230/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3230/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3230/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3230/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10508/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10508/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10508/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10508/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15517/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15517/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15517/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15517/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10017/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10017/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10017/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10017/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8695/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8695/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8695/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8695/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2504/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2504/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2504/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2504/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9807/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9807/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9807/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9807/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6218/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6218/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6218/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6218/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2266/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2266/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2266/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2266/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7766/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7766/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7766/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7766/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15403/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15403/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15403/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15403/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6624/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6624/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6624/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6624/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3324/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3324/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3324/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3324/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2138/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2138/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2138/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2138/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18635/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18635/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18635/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18635/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3159/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3159/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3159/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3159/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2345/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2345/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2345/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2345/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1783/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1783/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1783/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1783/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3446/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3446/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3446/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3446/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2372/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2372/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2372/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2372/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15356/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15356/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15356/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15356/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6613/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6613/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6613/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6613/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15575/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15575/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15575/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15575/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7051/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7051/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7051/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7051/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1488/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1488/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1488/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1488/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1806/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1806/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1806/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1806/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1197/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1197/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1197/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1197/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8833/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8833/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8833/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8833/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3018/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3018/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3018/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3018/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13484/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13484/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13484/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13484/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6765/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6765/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6765/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6765/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15542/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15542/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15542/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15542/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17687/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17687/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17687/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17687/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG12948/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12948/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12948/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12948/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11662/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11662/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11662/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11662/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14362/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14362/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14362/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14362/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1912/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1912/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1912/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1912/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9971/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9971/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9971/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9971/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2472/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2472/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2472/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2472/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6882/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6882/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6882/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6882/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7610/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7610/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7610/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7610/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6660/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6660/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6660/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6660/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7163/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7163/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7163/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7163/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10147/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10147/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10147/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10147/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1934/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1934/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1934/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1934/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9960/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9960/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9960/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9960/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6102/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6102/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6102/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6102/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8901/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8901/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8901/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8901/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3402/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3402/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3402/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3402/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7601/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7601/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7601/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7601/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6893/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6893/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6893/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6893/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2336/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2336/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2336/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2336/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6135/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6135/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6135/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6135/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8936/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8936/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8936/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8936/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16927/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16927/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16927/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16927/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2215/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2215/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2215/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2215/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8184/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8184/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8184/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8184/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7715/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7715/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7715/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7715/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3998/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3998/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3998/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3998/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10053/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10053/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10053/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10053/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13495/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13495/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13495/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13495/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7568/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7568/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7568/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7568/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4486/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4486/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4486/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4486/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15564/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15564/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15564/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15564/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5385/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5385/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5385/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5385/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1499/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1499/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1499/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1499/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6021/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6021/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6021/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6021/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10219/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10219/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10219/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10219/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16781/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16781/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16781/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16781/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16972/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16972/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16972/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16972/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15425/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15425/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15425/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15425/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9902/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9902/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9902/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9902/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9093/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9093/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9093/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9093/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14326/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14326/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14326/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14326/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10883/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10883/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10883/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10883/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7429/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7429/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7429/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7429/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11611/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11611/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11611/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11611/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18459/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18459/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18459/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18459/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2129/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2129/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2129/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2129/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16945/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16945/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16945/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16945/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10112/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10112/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10112/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10112/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7136/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7136/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7136/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7136/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11173/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11173/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11173/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11173/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4292/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4292/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4292/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4292/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8954/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8954/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8954/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8954/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10670/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10670/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10670/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10670/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6448/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6448/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6448/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6448/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13879/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13879/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13879/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13879/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9187/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9187/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9187/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9187/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9498/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9498/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9498/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9498/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8684/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8684/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8684/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8684/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7268/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7268/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7268/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7268/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15253/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15253/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15253/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7777/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7777/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7777/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7777/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4699/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4699/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4699/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4699/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5485/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5485/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5485/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5485/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14078/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14078/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14078/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14078/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7740/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7740/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7740/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7740/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8840/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8840/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8840/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8840/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1686/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1686/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1686/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1686/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6043/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6043/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6043/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6043/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2522/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2522/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2522/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2522/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10006/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10006/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10006/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10006/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15019/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15019/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15019/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15019/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10997/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10997/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10997/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10997/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1404/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1404/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1404/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1404/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10968/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10968/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10968/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10968/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5607/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5607/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5607/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5607/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13117/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13117/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13117/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13117/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7858/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7858/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7858/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7858/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4010/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4010/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4010/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4010/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9739/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9739/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9739/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9739/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8525/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8525/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8525/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8525/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG6839/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6839/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6839/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6839/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11493/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11493/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11493/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11493/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1272/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1272/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1272/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1272/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16256/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16256/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16256/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16256/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4745/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4745/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4745/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4745/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13761/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13761/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13761/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13761/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5559/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5559/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5559/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5559/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2683/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2683/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2683/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2683/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7383/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7383/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7383/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7383/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5665/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5665/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5665/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5665/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8331/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8331/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8331/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8331/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14298/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14298/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14298/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14298/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13142/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13142/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13142/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13142/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12123/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12123/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12123/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12123/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16320/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16320/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16320/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16320/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1304/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1304/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1304/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1304/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4604/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4604/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4604/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4604/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6978/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6978/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6978/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6978/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17669/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17669/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17669/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17669/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16475/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16475/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16475/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16475/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7088/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7088/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7088/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7088/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6294/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6294/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6294/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6294/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2588/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2588/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2588/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2588/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9244/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9244/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9244/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9244/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13056/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13056/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13056/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13056/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5771/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5771/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5771/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5771/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9039/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9039/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9039/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9039/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5746/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5746/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5746/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5746/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12762/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12762/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12762/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12762/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5259/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5259/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5259/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5259/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2812/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2812/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2812/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2812/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18391/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18391/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18391/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18391/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12000/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12000/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12000/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12000/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14857/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14857/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14857/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14857/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4727/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4727/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4727/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4727/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3740/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3740/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3740/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3740/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5399/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5399/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5399/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5399/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10078/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10078/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10078/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10078/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1485/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1485/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1485/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1485/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2043/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2043/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2043/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2043/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3022/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3022/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3022/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3022/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7221/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7221/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7221/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7221/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2716/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2716/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2716/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2716/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18266/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18266/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18266/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18266/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9384/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9384/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9384/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9384/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12695/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12695/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12695/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12695/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10550/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10550/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10550/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10550/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7574/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7574/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7574/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7574/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16496/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16496/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16496/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16496/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5792/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5792/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5792/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5792/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7148/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7148/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7148/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7148/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11347/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11347/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11347/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11347/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10444/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10444/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10444/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10444/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14358/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14358/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14358/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14358/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18410/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18410/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18410/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18410/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12781/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12781/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12781/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12781/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15339/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15339/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15339/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15339/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14125/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14125/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14125/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14125/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5956/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5956/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5956/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5956/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2602/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2602/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2602/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2602/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15767/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15767/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15767/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15767/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1385/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1385/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1385/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1385/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7521/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7521/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7521/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7521/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2509/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2509/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2509/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2509/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15032/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15032/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15032/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15032/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13696/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13696/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13696/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13696/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11553/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11553/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11553/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11553/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6068/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6068/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6068/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6068/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16959/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16959/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16959/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16959/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18445/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18445/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18445/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18445/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6454/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6454/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6454/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6454/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5903/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5903/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5903/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5903/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4791/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4791/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4791/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4791/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17938/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17938/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17938/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17938/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10373/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10373/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10373/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10373/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11447/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11447/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11447/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11447/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12910/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12910/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12910/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12910/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13971/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13971/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13971/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13971/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4955/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4955/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4955/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4955/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3601/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3601/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3601/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3601/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14829/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14829/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14829/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14829/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9712/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9712/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9712/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9712/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8980/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8980/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8980/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8980/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16762/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16762/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16762/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16762/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8011/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8011/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8011/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8011/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1259/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1259/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1259/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1259/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4524/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4524/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4524/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4524/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5738/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5738/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5738/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5738/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7873/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7873/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7873/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7873/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12203/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12203/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12203/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12203/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8744/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8744/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8744/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8744/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8539/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8539/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8539/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8539/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4271/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4271/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4271/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4271/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1771/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1771/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1771/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1771/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7967/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7967/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7967/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7967/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4430/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4430/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4430/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4430/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11922/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11922/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11922/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11922/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6588/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6588/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6588/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6588/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3088/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3088/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3088/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3088/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6097/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6097/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6097/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6097/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8894/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8894/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8894/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8894/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4352/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4352/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4352/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4352/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13341/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13341/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13341/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13341/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7950/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7950/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7950/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7950/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9153/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9153/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9153/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9153/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4407/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4407/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4407/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4407/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4889/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4889/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4889/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4889/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17620/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17620/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17620/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17620/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1896/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1896/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1896/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1896/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8650/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8650/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8650/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8650/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4059/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4059/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4059/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4059/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7180/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7180/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7180/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7180/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16062/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16062/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16062/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16062/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6683/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6683/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6683/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6683/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10835/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10835/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10835/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10835/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12503/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12503/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12503/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12503/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5527/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5527/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5527/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5527/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1724/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1724/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1724/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1724/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4213/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4213/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4213/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4213/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3858/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3858/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3858/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3858/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG12534/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12534/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12534/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12534/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5510/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5510/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5510/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5510/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11863/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11863/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11863/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11863/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14390/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14390/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14390/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14390/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8239/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8239/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8239/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8239/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10802/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10802/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10802/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10802/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8726/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8726/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8726/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8726/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12108/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12108/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12108/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12108/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9664/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9664/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9664/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9664/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1152/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1152/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1152/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1152/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9106/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9106/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9106/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9106/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17675/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17675/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17675/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17675/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7094/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7094/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7094/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7094/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2594/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2594/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2594/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2594/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17642/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17642/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17642/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17642/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10087/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10087/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10087/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10087/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11784/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11784/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11784/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11784/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4465/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4465/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4465/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4465/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4307/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4307/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4307/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4307/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11925/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11925/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11925/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11925/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG5149/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5149/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5149/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5149/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17610/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17610/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17610/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17610/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5334/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5334/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5334/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5334/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8660/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8660/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8660/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8660/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7960/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7960/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7960/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7960/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4437/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4437/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4437/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4437/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12638/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12638/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12638/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12638/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9154/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9154/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9154/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9154/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8348/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8348/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8348/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8348/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6936/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6936/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6936/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6936/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9329/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9329/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9329/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9329/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13507/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13507/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13507/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13507/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10850/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10850/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10850/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10850/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5220/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5220/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5220/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5220/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13018/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13018/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13018/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13018/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16518/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16518/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16518/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16518/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13265/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13265/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13265/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13265/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4241/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4241/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4241/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4241/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6815/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6815/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6815/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6815/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5575/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5575/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5575/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5575/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15394/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15394/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15394/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15394/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17051/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17051/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17051/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17051/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9722/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9722/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9722/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9722/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11197/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11197/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11197/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11197/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1155/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1155/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1155/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1155/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16171/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16171/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16171/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16171/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4455/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4455/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4455/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4455/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9890/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9890/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9890/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9890/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2593/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2593/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2593/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2593/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12372/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12372/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12372/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12372/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6963/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6963/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6963/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6963/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5434/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5434/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5434/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5434/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17127/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17127/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17127/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17127/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5403/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5403/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5403/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5403/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17438/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17438/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17438/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17438/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9654/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9654/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9654/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9654/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10911/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10911/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10911/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10911/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4223/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4223/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4223/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4223/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12266/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12266/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12266/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12266/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2198/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2198/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2198/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2198/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9015/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9015/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9015/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9015/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3384/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3384/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3384/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3384/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7816/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7816/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7816/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7816/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6684/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6684/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6684/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6684/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14688/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14688/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14688/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14688/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16730/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16730/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16730/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16730/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11864/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11864/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11864/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11864/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10474/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10474/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10474/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10474/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4907/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4907/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4907/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4907/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5795/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5795/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5795/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5795/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2632/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2632/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2632/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2632/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15309/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15309/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15309/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15309/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9297/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9297/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9297/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9297/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14122/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14122/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14122/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14122/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3419/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3419/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3419/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3419/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15621/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15621/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15621/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15621/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8594/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8594/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8594/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8594/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11340/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11340/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11340/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11340/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3664/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3664/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3664/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3664/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18417/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18417/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18417/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18417/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2239/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2239/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2239/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2239/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3025/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3025/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3025/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3025/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7739/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7739/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7739/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7739/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6525/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6525/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6525/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6525/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18256/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18256/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18256/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18256/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2726/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2726/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2726/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2726/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14763/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14763/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14763/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14763/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5681/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5681/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5681/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5681/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3258/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3258/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3258/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3258/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10560/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10560/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10560/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10560/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4824/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4824/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4824/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4824/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10557/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10557/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10557/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10557/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13191/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13191/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13191/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13191/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10048/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10048/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10048/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10048/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11254/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11254/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11254/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11254/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15735/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15735/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15735/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15735/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7211/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7211/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7211/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7211/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9383/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9383/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9383/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9383/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1296/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1296/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1296/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1296/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4796/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4796/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4796/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4796/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG5904/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5904/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5904/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5904/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2650/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2650/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2650/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2650/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6331/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6331/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6331/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6331/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3631/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3631/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3631/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3631/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15409/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15409/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15409/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15409/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4965/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4965/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4965/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4965/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18442/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18442/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18442/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18442/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7405/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7405/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7405/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7405/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16969/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16969/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16969/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16969/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14622/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14622/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14622/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14622/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8978/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8978/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8978/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8978/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12086/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12086/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12086/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12086/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7678/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7678/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7678/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7678/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2378/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2378/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2378/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2378/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18556/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18556/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18556/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18556/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4871/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4871/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4871/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4871/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2539/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2539/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2539/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2539/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6225/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6225/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6225/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6225/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18234/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18234/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18234/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18234/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7244/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7244/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7244/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7244/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10260/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10260/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10260/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10260/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15248/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15248/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15248/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15248/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11554/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11554/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11554/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11554/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10257/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10257/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10257/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10257/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17492/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17492/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17492/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17492/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3712/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3712/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3712/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3712/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6212/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6212/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6212/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6212/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15035/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15035/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15035/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15035/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5076/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5076/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5076/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5076/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17552/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17552/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17552/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17552/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10397/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10397/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10397/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10397/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9221/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9221/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9221/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9221/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14194/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14194/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14194/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14194/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16251/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16251/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16251/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16251/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12730/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12730/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12730/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12730/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4508/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4508/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4508/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4508/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2840/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2840/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2840/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2840/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1517/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1517/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1517/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1517/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12707/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12707/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12707/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12707/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13995/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13995/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13995/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13995/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4742/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4742/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4742/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4742/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9216/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9216/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9216/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9216/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6809/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6809/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6809/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6809/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15970/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15970/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15970/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15970/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4892/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4892/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4892/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4892/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12624/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12624/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12624/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12624/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5600/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5600/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5600/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5600/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1361/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1361/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1361/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1361/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10283/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10283/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10283/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10283/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3935/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3935/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3935/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3935/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8436/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8436/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8436/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8436/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3902/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3902/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3902/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3902/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12613/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12613/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12613/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12613/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8363/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8363/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8363/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8363/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4134/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4134/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4134/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4134/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13110/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13110/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13110/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13110/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14694/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14694/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14694/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14694/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4075/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4075/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4075/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4075/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5776/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5776/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5776/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5776/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5985/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5985/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5985/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5985/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG13733/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13733/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13733/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13733/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3843/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3843/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3843/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3843/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4208/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4208/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4208/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4208/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14850/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14850/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14850/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14850/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2184/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2184/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2184/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2184/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8215/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8215/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8215/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8215/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5741/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5741/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5741/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5741/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6698/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6698/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6698/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6698/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15831/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15831/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15831/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15831/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9516/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9516/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9516/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9516/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14973/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14973/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14973/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14973/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9357/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9357/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9357/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9357/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13627/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13627/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13627/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13627/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11280/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11280/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11280/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11280/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1461/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1461/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1461/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1461/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8629/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8629/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8629/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8629/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4156/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4156/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4156/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4156/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2090/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2090/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2090/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2090/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4449/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4449/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4449/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4449/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17413/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17413/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17413/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17413/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2570/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2570/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2570/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2570/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16803/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16803/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16803/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16803/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10054/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10054/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10054/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10054/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4838/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4838/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4838/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4838/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3273/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3273/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3273/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3273/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6773/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6773/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6773/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6773/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8812/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8812/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8812/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8812/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6011/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6011/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6011/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6011/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14502/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14502/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14502/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14502/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2058/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2058/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2058/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2058/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9844/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9844/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9844/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9844/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8588/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8588/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8588/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8588/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7606/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7606/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7606/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7606/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8097/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8097/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8097/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8097/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15322/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15322/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15322/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15322/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14343/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14343/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14343/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14343/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10140/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10140/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10140/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10140/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10177/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10177/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10177/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10177/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5296/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5296/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5296/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5296/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15477/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15477/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15477/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15477/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG11674/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11674/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11674/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11674/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10468/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10468/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10468/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10468/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14374/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14374/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14374/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14374/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15168/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15168/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15168/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15168/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11409/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11409/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11409/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11409/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11116/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11116/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11116/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11116/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11057/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11057/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11057/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11057/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2270/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2270/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2270/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2270/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8683/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8683/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8683/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8683/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10001/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10001/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10001/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10001/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1872/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1872/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1872/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1872/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3226/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3226/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3226/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3226/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10990/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10990/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10990/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10990/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2247/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2247/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2247/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2247/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5482/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5482/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5482/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5482/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16975/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16975/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16975/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16975/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15422/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15422/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15422/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15422/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2406/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2406/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2406/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2406/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9094/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9094/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9094/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9094/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8288/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8288/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8288/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8288/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG16299/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16299/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16299/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16299/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16786/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16786/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16786/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16786/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8964/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8964/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8964/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8964/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1795/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1795/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1795/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1795/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10677/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10677/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10677/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10677/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15377/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15377/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15377/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15377/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11616/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11616/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11616/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11616/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10115/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10115/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10115/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10115/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15415/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15415/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15415/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15415/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2431/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2431/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2431/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2431/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18141/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18141/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18141/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18141/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15366/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15366/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15366/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15366/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5587/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5587/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5587/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5587/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11165/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11165/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11165/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11165/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6141/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6141/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6141/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6141/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8942/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8942/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8942/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8942/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3441/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3441/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3441/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16953/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16953/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16953/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16953/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15404/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15404/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15404/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15404/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10895/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10895/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10895/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10895/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1940/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1940/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1940/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1940/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2417/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2417/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2417/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2417/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18167/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18167/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18167/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18167/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15351/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15351/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15351/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15351/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14213/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14213/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14213/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14213/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15510/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15510/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15510/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15510/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7034/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7034/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7034/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7034/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10010/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10010/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10010/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10010/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14571/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14571/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14571/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14571/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8856/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8856/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8856/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8856/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6055/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6055/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6055/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6055/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2256/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2256/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2256/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2256/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5493/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5493/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5493/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5493/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14059/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14059/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14059/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14059/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2261/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2261/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2261/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2261/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12480/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12480/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12480/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12480/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18711/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18711/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18711/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18711/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7761/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7761/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7761/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7761/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10027/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10027/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10027/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10027/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14224/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14224/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14224/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14224/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG6700/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6700/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6700/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6700/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6641/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6641/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6641/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6641/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11665/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11665/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11665/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11665/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1915/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1915/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1915/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1915/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9941/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9941/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9941/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9941/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10604/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10604/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10604/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10604/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7620/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7620/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7620/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7620/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2608/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2608/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2608/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2608/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16588/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16588/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16588/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16588/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6369/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6369/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6369/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6369/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11982/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11982/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11982/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11982/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9855/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9855/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9855/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9855/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7056/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7056/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7056/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7056/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4490/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4490/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4490/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4490/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2049/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2049/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2049/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2049/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4829/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4829/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4829/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4829/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13483/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13483/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13483/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13483/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6762/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6762/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6762/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6762/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9862/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9862/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9862/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9862/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2561/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2561/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2561/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2561/M8/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10045/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10045/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10045/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10045/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9691/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9691/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9691/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9691/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5848/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5848/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5848/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5848/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2081/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2081/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2081/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2081/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4147/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4147/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4147/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4147/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8472/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8472/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8472/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8472/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9371/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9371/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9371/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9371/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9346/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9346/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9346/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9346/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17648/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17648/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17648/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17648/M8/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16454/M1a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16454/M2a/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16454/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16454/M8/codeml_test.ctl & 
wait
