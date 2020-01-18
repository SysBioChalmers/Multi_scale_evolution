#!/bin/bash
#SBATCH -A C3SE2020-1-8
#SBATCH -C MEM128
#SBATCH -N 1
#SBATCH -n 20
#SBATCH -o out.txt
#SBATCH -t 7-00:00:00
#SBATCH --mail-user=luho@chalmers.se
#SBATCH --mail-type=end
codeml /c3se/NOBACKUP/users/luho/site_model/OG13873/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13873/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13873/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4676/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4676/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4676/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11932/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11932/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11932/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8778/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8778/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8778/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7104/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7104/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7104/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16715/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16715/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16715/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11062/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11062/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11062/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15840/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15840/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15840/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11076/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11076/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11076/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11606/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11606/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11606/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5700/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5700/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5700/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1695/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1695/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1695/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18088/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18088/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18088/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11823/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11823/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11823/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10491/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10491/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10491/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9886/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9886/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9886/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14879/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14879/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14879/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15458/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15458/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15458/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2499/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2499/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2499/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15227/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15227/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15227/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4732/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4732/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4732/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5040/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5040/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5040/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7069/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7069/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7069/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7923/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7923/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7923/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17450/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17450/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17450/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11639/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11639/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11639/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17828/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17828/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17828/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6582/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6582/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6582/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3582/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3582/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3582/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13101/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13101/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13101/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8795/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8795/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8795/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2223/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2223/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2223/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8748/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8748/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8748/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10271/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10271/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10271/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2800/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2800/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2800/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7225/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7225/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7225/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3267/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3267/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3267/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7697/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7697/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7697/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8683/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8683/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8683/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4623/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4623/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4623/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1667/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1667/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1667/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1959/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1959/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1959/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7004/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7004/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7004/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12341/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12341/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12341/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2205/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2205/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2205/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15236/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15236/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15236/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1325/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1325/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1325/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16112/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16112/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16112/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9155/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9155/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9155/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14622/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14622/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14622/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12758/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12758/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12758/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6452/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6452/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6452/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17597/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17597/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17597/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4314/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4314/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4314/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10020/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10020/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10020/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7213/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7213/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7213/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2116/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2116/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2116/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12643/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12643/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12643/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17456/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17456/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17456/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16221/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16221/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16221/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10310/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10310/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10310/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8127/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8127/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8127/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11254/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11254/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11254/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5801/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5801/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5801/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2331/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2331/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2331/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5077/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5077/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5077/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13547/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13547/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13547/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3689/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3689/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3689/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6127/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6127/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6127/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14264/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14264/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14264/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13359/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13359/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13359/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1190/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1190/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1190/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3917/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3917/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3917/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8393/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8393/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8393/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4322/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4322/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4322/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11973/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11973/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11973/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4957/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4957/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4957/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10702/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10702/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10702/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2821/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2821/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2821/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9910/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9910/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9910/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2614/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2614/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2614/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4288/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4288/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4288/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7015/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7015/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7015/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2893/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2893/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2893/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2316/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2316/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2316/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2146/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2146/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2146/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4575/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4575/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4575/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9164/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9164/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9164/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7408/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7408/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7408/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4147/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4147/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4147/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2145/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2145/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2145/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6013/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6013/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6013/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5116/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5116/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5116/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11915/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11915/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11915/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6021/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6021/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6021/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11378/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11378/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11378/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15254/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15254/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15254/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11662/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11662/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11662/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8067/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8067/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8067/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9226/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9226/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9226/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7119/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7119/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7119/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6276/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6276/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6276/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3109/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3109/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3109/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4528/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4528/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4528/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10446/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10446/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10446/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3084/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3084/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3084/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8425/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8425/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8425/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9561/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9561/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9561/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1370/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1370/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1370/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14574/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14574/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14574/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2259/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2259/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2259/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10907/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10907/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10907/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5711/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5711/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5711/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7619/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7619/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7619/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2607/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2607/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2607/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6180/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6180/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6180/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2148/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2148/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2148/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2303/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2303/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2303/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4101/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4101/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4101/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9619/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9619/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9619/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15991/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15991/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15991/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2508/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2508/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2508/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7621/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7621/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7621/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10017/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10017/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10017/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10253/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10253/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15793/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15793/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15793/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15032/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15032/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15032/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3185/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3185/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3185/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10712/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10712/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10712/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8284/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8284/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8284/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11147/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11147/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11147/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1748/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1748/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1748/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3518/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3518/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3518/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11120/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11120/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11120/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6350/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6350/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6350/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16958/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16958/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16958/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18230/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18230/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18230/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4780/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4780/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4780/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16357/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16357/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16357/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16096/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16096/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16096/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14441/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14441/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9249/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9249/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9249/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8522/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8522/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8522/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4838/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4838/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4838/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4787/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4787/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4787/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9439/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9439/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9439/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6574/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6574/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6574/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16255/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16255/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16255/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6807/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6807/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6807/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5644/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5644/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5644/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6073/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6073/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6073/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12636/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12636/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12636/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3712/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3712/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3712/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5279/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5279/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5279/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1229/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1229/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1229/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14618/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14618/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14618/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18375/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18375/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18375/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5555/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5555/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5555/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11665/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11665/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11665/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5164/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5164/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5164/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG6362/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6362/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6362/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7441/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7441/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5975/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5975/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5975/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4683/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4683/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4683/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2250/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2250/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2250/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7899/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7899/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7899/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7823/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7823/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7823/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10545/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10545/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10545/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2864/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2864/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2864/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2689/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2689/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2689/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5236/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5236/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5236/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2702/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2702/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2702/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12767/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12767/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12767/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15290/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15290/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15290/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6007/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6007/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6007/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10171/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10171/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10171/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4793/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4793/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4793/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8324/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8324/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8324/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3647/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3647/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3647/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15878/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15878/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15878/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG6802/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6802/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6802/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12533/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12533/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12533/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7180/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7180/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7180/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18111/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18111/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18111/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5508/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5508/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5508/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5387/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5387/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5387/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15239/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15239/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15239/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15281/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15281/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15281/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1649/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1649/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1649/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1393/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1393/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1393/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3570/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3570/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3570/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11566/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11566/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11566/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5323/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5323/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5323/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10054/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10054/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10054/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2185/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2185/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2185/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7123/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7123/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7123/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4459/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4459/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4459/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18007/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18007/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18007/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14932/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14932/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14932/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1452/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1452/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1452/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15467/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15467/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15467/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14754/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14754/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14754/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18335/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18335/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18335/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18663/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18663/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18663/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14087/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14087/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14087/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10232/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10232/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10232/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6591/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6591/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6591/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15697/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15697/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15697/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7035/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7035/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7035/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4545/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4545/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4545/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8081/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8081/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8081/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2671/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2671/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2671/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11532/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11532/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11532/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5603/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5603/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5603/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6259/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6259/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6259/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2734/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2734/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2734/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14926/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14926/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14926/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14502/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14502/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14502/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4568/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4568/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4568/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2290/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2290/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2290/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG16093/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16093/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16093/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16114/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16114/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16114/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12270/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12270/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12270/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4298/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4298/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4298/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1641/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1641/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1641/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12353/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12353/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12353/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4670/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4670/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4670/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8030/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8030/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8030/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13175/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13175/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13175/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6260/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6260/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6260/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2130/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2130/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2130/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16593/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16593/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16593/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15595/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15595/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15595/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16558/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16558/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16558/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16113/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16113/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16113/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5016/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5016/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5016/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16088/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16088/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16088/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8398/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8398/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8398/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11205/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11205/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11205/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9052/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9052/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9052/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14630/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14630/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14630/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8633/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8633/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8633/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6344/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6344/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6344/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18405/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18405/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18405/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1491/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1491/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1491/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12534/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12534/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12534/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1726/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1726/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1726/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16250/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16250/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16250/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5917/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5917/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5917/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14332/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14332/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14332/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6937/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6937/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6937/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6547/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6547/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6547/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15106/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15106/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15106/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4832/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4832/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4832/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10122/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10122/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10122/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1471/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1471/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1471/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10869/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10869/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10869/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4457/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4457/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4457/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2402/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2402/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2402/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10478/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10478/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10478/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14043/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14043/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14043/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12215/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12215/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12215/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12731/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12731/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12731/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11540/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11540/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11540/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6762/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6762/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6762/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10761/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10761/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10761/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2059/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2059/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2059/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11882/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11882/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11882/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12068/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12068/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12068/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12120/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12120/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12120/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12265/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12265/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12265/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8276/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8276/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8276/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7222/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7222/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7222/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15632/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15632/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15632/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5907/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5907/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5907/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5777/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5777/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5777/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2553/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2553/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2553/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15098/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15098/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15098/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5481/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5481/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5481/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2348/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2348/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2348/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG17604/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17604/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17604/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1276/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1276/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1276/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14850/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14850/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14850/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6153/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6153/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6153/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3575/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3575/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3575/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11610/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11610/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11610/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3824/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3824/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3824/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10057/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10057/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10057/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17071/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17071/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17071/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15753/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15753/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15753/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3969/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3969/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3969/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8575/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8575/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8575/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3899/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3899/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3899/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13018/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13018/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13018/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16241/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16241/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16241/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11453/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11453/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11453/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2577/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2577/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2577/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2992/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2992/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2992/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2536/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2536/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2536/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2873/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2873/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2873/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4086/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4086/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4086/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6664/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6664/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6664/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6437/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6437/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6437/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2141/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2141/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2141/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4695/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4695/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4695/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3340/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3340/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3340/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9784/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9784/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9784/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2330/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2330/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2330/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10766/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10766/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10766/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12205/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12205/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12205/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3599/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3599/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3599/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14376/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14376/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14376/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11096/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11096/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11096/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3810/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3810/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3810/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8603/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8603/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8603/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2513/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2513/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2513/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1928/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1928/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1928/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8194/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8194/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8194/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12961/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12961/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12961/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12777/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12777/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12777/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG18334/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18334/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18334/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2242/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2242/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2242/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8624/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8624/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8624/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9198/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9198/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9198/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1897/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1897/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1897/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12288/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12288/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12288/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18415/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18415/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18415/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15223/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15223/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15223/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9421/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9421/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9421/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6740/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6740/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6740/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3631/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3631/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3631/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11731/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11731/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11731/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8448/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8448/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8448/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1274/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1274/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1274/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16183/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16183/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16183/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14411/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14411/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14411/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14076/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14076/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14076/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5792/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5792/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5792/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3637/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3637/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3637/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10746/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10746/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10746/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2467/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2467/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2467/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6765/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6765/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6765/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8500/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8500/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8500/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2424/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2424/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2424/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12730/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12730/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12730/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14956/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14956/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14956/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10180/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10180/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10180/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3834/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3834/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3834/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7209/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7209/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7209/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1193/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1193/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1193/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15128/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15128/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15128/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1628/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1628/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1628/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7972/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7972/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7972/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2265/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2265/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2265/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2823/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2823/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2823/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5507/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5507/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5507/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11123/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11123/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11123/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4115/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4115/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4115/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6042/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6042/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6042/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9369/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9369/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9369/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3659/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3659/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3659/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11017/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11017/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11017/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4195/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4195/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4195/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10190/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10190/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10190/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7860/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7860/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7860/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4144/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4144/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4144/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5781/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5781/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5781/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1461/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1461/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1461/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3451/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3451/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3451/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13203/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13203/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13203/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11625/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11625/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11625/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8121/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8121/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8121/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1504/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1504/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1504/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5428/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5428/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5428/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11933/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11933/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11933/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10301/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10301/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10301/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16485/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16485/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16485/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17632/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17632/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17632/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4701/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4701/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4701/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7258/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7258/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7258/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3623/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3623/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3623/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1152/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1152/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1152/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4945/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4945/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4945/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17459/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17459/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17459/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10294/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10294/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10294/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2747/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2747/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2747/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6188/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6188/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6188/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10523/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10523/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10523/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1788/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1788/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1788/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6463/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6463/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6463/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14414/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14414/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14414/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8297/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8297/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8297/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12652/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12652/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12652/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13573/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13573/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13573/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13760/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13760/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13760/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5124/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5124/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5124/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7372/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7372/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7372/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15703/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15703/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15703/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15138/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15138/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15138/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15820/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15820/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15820/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1580/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1580/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1580/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4401/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4401/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4401/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6453/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6453/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6453/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17266/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17266/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17266/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7896/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7896/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7896/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15630/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15630/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15630/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4688/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4688/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4688/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10231/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10231/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10231/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18173/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18173/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18173/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10272/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10272/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10272/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14435/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14435/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14435/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3752/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3752/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3752/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8958/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8958/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8958/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8494/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8494/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8494/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16297/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16297/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16297/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6732/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6732/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6732/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2247/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2247/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2247/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1965/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1965/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1965/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14903/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14903/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14903/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12411/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12411/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12411/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2350/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2350/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2350/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16786/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16786/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16786/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5516/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5516/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5516/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2108/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2108/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2108/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8559/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8559/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8559/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13243/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13243/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13243/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3038/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3038/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3038/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11675/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11675/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11675/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5088/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5088/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5088/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9555/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9555/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9555/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7435/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7435/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7435/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9270/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9270/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9270/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2839/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2839/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2839/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9313/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9313/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9313/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11258/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11258/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11258/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10500/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10500/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10500/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14050/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14050/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14050/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10852/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10852/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10852/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8163/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8163/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8163/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13273/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13273/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13273/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8359/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8359/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8359/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15767/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15767/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15767/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14421/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14421/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14421/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4253/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4253/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9603/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9603/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9603/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7653/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7653/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7653/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12136/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12136/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12136/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2272/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2272/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2272/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6366/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6366/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6366/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8285/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8285/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8285/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14432/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14432/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14432/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11552/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11552/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11552/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4553/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4553/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4553/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16027/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16027/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16027/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5722/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5722/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5722/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3311/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3311/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3311/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13247/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13247/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13247/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9359/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9359/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9359/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15505/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15505/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15505/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4784/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4784/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4784/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7575/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7575/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7575/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12509/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12509/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12509/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2917/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2917/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2917/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3681/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3681/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3681/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14077/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14077/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14077/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17543/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17543/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17543/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5171/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5171/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5171/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4818/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4818/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4818/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8423/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8423/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8423/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15998/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15998/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15998/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3462/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3462/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3462/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16957/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16957/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16957/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5418/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5418/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5418/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17162/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17162/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17162/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2389/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2389/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2389/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7867/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7867/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7867/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16482/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16482/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16482/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14398/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14398/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14398/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5532/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5532/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5532/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11289/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11289/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11289/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7842/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7842/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7842/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7237/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7237/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7237/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8485/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8485/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8485/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1619/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1619/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1619/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14637/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14637/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14637/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11811/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11811/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11811/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8875/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8875/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8875/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8174/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8174/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8174/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18463/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18463/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18463/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15013/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15013/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15013/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7790/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7790/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7790/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1600/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1600/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1600/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15115/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15115/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15115/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11677/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11677/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11677/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14856/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14856/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14856/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4150/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4150/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4150/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17854/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17854/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17854/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13788/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13788/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13788/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4162/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4162/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4162/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12745/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12745/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12745/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9291/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9291/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9291/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7759/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7759/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7759/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15730/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15730/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15730/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7160/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7160/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7160/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4835/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4835/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4835/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14557/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14557/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14557/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9864/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9864/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9864/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2392/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2392/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2392/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15373/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15373/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15373/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6520/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6520/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6520/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1653/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1653/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1653/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9416/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9416/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9416/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10819/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10819/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10819/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4082/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4082/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4082/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7363/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7363/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7363/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9657/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9657/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9657/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5461/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5461/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5461/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12170/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12170/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12170/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2152/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2152/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2152/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5766/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5766/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5766/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG5980/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5980/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5980/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2213/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2213/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2213/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3045/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3045/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3045/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13747/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13747/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13747/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2151/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2151/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2151/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3532/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3532/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3532/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5072/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5072/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5072/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3898/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3898/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3898/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11619/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11619/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11619/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8558/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8558/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8558/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18398/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18398/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18398/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1153/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1153/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1153/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3509/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3509/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3509/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16000/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16000/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16000/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2429/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2429/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2429/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11947/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11947/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11947/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9847/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9847/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9847/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13506/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13506/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13506/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14355/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14355/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14355/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2884/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2884/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2884/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10442/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10442/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10442/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6760/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6760/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6760/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2907/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2907/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2907/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7068/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7068/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7068/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3115/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3115/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3115/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3112/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3112/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3112/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11993/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11993/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11993/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11156/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11156/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11156/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11810/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11810/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11810/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10724/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10724/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10724/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9007/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9007/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9007/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14239/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14239/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14239/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6348/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6348/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6348/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5782/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5782/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5782/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6756/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6756/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6756/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14795/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14795/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14795/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13590/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13590/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13590/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1263/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1263/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1263/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9669/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9669/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9669/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12303/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12303/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12303/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG13402/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13402/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13402/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5734/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5734/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5734/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2840/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2840/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2840/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5352/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5352/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5352/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1979/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1979/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1979/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17044/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17044/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17044/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10704/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10704/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10704/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10669/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10669/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10669/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8862/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8862/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8862/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9620/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9620/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9620/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7706/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7706/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7706/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18423/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18423/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18423/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16453/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16453/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16453/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16769/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16769/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16769/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11041/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11041/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11041/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4962/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4962/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4962/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5857/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5857/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5857/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9694/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9694/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9694/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5030/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5030/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5030/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8387/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8387/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8387/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7110/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7110/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7110/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1583/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1583/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1583/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4326/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4326/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4326/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7962/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7962/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7962/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11655/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11655/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11655/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5686/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5686/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5686/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2063/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2063/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2063/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12630/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12630/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12630/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6610/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6610/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6610/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16150/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16150/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16150/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6441/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6441/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9590/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9590/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9590/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7764/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7764/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7764/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13906/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13906/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13906/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14719/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14719/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14719/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7358/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7358/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7358/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10864/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10864/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10864/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11558/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11558/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11558/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3954/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3954/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3954/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14023/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14023/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14023/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1210/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1210/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1210/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14899/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14899/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14899/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13197/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13197/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13197/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4443/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4443/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4443/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10353/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10353/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10353/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15982/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15982/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15982/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2217/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2217/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2217/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2187/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2187/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2187/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2288/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2288/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2288/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2529/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2529/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2529/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15624/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15624/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15624/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17679/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17679/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17679/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7973/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7973/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7973/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2011/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2011/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2011/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8715/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8715/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8715/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15368/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15368/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15368/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7799/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7799/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7799/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11553/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11553/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11553/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12332/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12332/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12332/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1919/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1919/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1919/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG13689/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13689/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13689/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16072/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16072/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16072/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18545/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18545/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18545/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1397/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1397/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1397/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1863/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1863/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1863/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3846/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3846/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3846/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16374/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16374/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16374/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15462/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15462/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15462/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2165/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2165/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2165/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13540/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13540/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13540/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9911/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9911/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9911/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12800/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12800/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12800/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13453/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13453/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13453/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2087/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2087/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2087/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10435/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10435/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10435/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11905/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11905/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11905/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2610/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2610/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2610/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10297/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10297/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10297/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13641/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13641/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13641/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3444/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3444/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3444/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9057/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9057/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9057/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7897/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7897/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7897/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7499/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7499/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7499/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6423/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6423/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6423/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7602/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7602/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7602/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11143/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11143/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11143/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2945/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2945/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2945/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6709/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6709/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6709/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6044/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6044/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6044/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4433/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4433/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4433/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8281/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8281/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8281/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9572/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9572/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9572/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8776/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8776/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8776/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13382/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13382/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13382/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9140/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9140/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9140/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14140/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14140/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14140/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9163/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9163/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9163/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6882/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6882/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6882/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1981/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1981/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1981/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6718/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6718/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6718/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2233/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2233/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2233/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6150/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6150/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6150/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9897/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9897/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9897/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16243/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16243/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16243/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9567/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9567/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9567/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4231/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4231/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4231/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6929/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6929/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6929/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1259/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1259/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1259/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7192/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7192/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7192/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4531/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4531/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4531/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12850/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12850/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12850/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13810/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13810/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13810/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16015/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16015/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16015/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13524/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13524/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13524/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8820/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8820/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8820/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6363/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6363/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6363/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13234/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13234/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13234/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4978/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4978/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4978/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2645/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2645/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2645/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4936/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4936/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4936/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1931/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1931/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1931/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5518/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5518/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5518/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3998/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3998/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3998/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5605/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5605/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5605/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3729/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3729/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3729/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6564/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6564/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6564/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2632/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2632/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2632/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15167/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15167/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15167/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15609/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15609/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15609/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16233/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16233/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16233/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12627/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12627/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12627/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3259/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3259/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3259/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10508/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10508/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10508/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15233/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15233/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15233/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12669/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12669/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12669/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15096/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15096/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15096/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6770/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6770/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6770/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10549/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10549/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10549/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16102/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16102/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16102/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3440/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3440/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3440/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG11533/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11533/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11533/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3131/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3131/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3131/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13096/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13096/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13096/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10441/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10441/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6580/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6580/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6580/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3409/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3409/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3409/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2714/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2714/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2714/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18625/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18625/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18625/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7801/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7801/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7801/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16529/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16529/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16529/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2142/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2142/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2142/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5130/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5130/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5130/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17653/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17653/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17653/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10656/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10656/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10656/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18253/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18253/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16497/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16497/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16497/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12146/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12146/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12146/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13634/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13634/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13634/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10119/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10119/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10119/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4024/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4024/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4024/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG5855/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5855/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5855/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1812/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1812/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1812/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11661/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11661/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11661/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10963/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10963/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10963/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16617/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16617/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16617/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15999/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15999/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15999/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7733/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7733/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7733/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4514/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4514/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4514/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15017/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15017/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15017/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5021/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5021/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5021/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15841/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15841/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15841/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7053/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7053/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7053/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10026/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10026/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10026/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5137/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5137/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5137/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7375/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7375/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7375/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8413/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8413/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8413/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5953/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5953/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5953/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11337/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11337/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11337/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11656/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11656/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11656/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11037/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11037/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11037/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG12247/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12247/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12247/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5735/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5735/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5735/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14191/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14191/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14191/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13893/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13893/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13893/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12137/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12137/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12137/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1522/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1522/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1522/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4169/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4169/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4169/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16401/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16401/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16401/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9752/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9752/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9752/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14523/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14523/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14523/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9253/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9253/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13805/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13805/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13805/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3849/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3849/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3849/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8514/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8514/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8514/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3184/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3184/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3184/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4607/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4607/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4607/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5374/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5374/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5374/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12936/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12936/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12936/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5004/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5004/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5004/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18537/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18537/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18537/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4324/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4324/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4324/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4374/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4374/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4374/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2666/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2666/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2666/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6278/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6278/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6278/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7031/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7031/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7031/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3228/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3228/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3228/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7909/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7909/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7909/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14723/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14723/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14723/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16452/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16452/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16452/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4867/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4867/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4867/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8207/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8207/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8207/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10005/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10005/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10005/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6906/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6906/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6906/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6049/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6049/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6049/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7678/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7678/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7678/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11157/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11157/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11157/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1205/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1205/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1205/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15475/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15475/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15475/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18412/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18412/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18412/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10627/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10627/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10627/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG6903/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6903/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6903/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18171/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18171/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18171/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6104/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6104/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6104/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17004/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17004/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17004/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1460/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1460/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1460/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3856/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3856/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3856/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13944/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13944/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13944/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6234/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6234/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6234/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6110/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6110/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6110/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9514/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9514/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9514/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12621/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12621/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12621/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12620/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12620/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12620/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3711/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3711/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3711/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12844/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12844/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12844/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6935/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6935/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6935/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15575/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15575/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15575/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16987/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16987/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16987/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9202/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9202/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9202/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10554/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10554/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10554/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15238/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15238/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15238/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8737/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8737/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8737/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9173/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9173/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9173/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6068/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6068/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6068/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1284/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1284/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1284/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4098/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4098/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4098/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14979/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14979/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14979/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14798/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14798/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14798/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16338/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16338/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16338/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6963/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6963/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6963/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1489/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1489/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1489/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10644/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10644/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10644/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5329/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5329/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5329/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4630/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4630/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4630/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7025/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7025/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7025/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4294/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4294/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4294/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5697/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5697/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5697/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5402/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5402/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5402/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8103/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8103/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8103/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14464/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14464/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14464/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4876/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4876/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4876/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG5912/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5912/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5912/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9545/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9545/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9545/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3831/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3831/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3831/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16208/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16208/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16208/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9672/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9672/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9672/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5796/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5796/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5796/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1790/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1790/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1790/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8312/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8312/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8312/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1494/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1494/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1494/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1353/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1353/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1353/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5922/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5922/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5922/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10518/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10518/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10518/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2558/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2558/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2558/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3406/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3406/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3406/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10333/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10333/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10333/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10215/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10215/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10215/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2179/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2179/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2179/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2697/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2697/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2697/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9420/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9420/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9420/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4302/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4302/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4302/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3043/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3043/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3043/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17235/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17235/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17235/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1554/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1554/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1554/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11434/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11434/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11434/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18269/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18269/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18269/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3198/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3198/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3198/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15473/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15473/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15473/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2072/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2072/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2072/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3085/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3085/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3085/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12613/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12613/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12613/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5637/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5637/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5637/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17613/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17613/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17613/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14213/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14213/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14213/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8385/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8385/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8385/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11853/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11853/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11853/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11738/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11738/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11738/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10641/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10641/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10641/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18552/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18552/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18552/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17036/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17036/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17036/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7452/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7452/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7452/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG5636/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5636/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5636/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5501/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5501/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5501/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2325/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2325/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2325/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9312/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9312/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9312/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4903/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4903/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4903/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11572/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11572/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11572/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15351/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15351/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15351/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16911/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16911/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16911/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9251/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9251/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9251/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11732/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11732/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11732/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6436/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6436/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6436/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4546/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4546/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4546/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6810/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6810/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6810/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15317/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15317/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15317/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1924/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1924/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1924/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12910/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12910/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12910/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1206/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1206/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1206/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13886/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13886/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13886/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8980/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8980/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8980/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6772/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6772/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6772/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4884/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4884/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4884/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12637/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12637/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12637/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14969/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14969/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14969/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9372/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9372/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9372/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11627/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11627/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11627/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6668/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6668/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6668/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2608/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2608/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2608/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15832/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15832/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15832/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12524/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12524/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12524/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3522/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3522/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3522/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5467/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5467/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5467/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17512/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17512/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17512/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4441/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4441/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12640/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12640/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12640/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4435/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4435/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4435/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7605/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7605/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7605/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6293/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6293/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6293/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3182/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3182/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3182/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5795/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5795/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5795/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4238/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4238/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4238/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15135/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15135/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15135/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10361/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10361/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10361/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14384/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14384/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14384/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17223/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17223/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17223/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10619/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10619/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10619/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15653/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15653/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15653/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6982/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6982/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6982/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17253/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17253/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3797/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3797/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3797/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2180/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2180/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2180/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7263/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7263/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7263/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18399/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18399/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18399/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9707/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9707/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9707/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7267/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7267/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7267/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10885/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10885/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10885/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8400/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8400/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8400/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14959/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14959/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14959/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4726/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4726/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4726/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2477/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2477/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2477/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6643/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6643/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6643/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7294/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7294/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7294/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13796/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13796/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13796/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9307/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9307/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9307/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4988/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4988/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4988/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15078/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15078/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15078/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3828/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3828/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3828/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15796/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15796/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15796/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5696/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5696/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5696/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18270/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18270/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18270/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4562/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4562/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4562/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2767/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2767/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2767/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17846/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17846/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17846/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7630/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7630/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7630/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15071/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15071/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15071/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8060/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8060/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8060/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2687/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2687/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2687/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18686/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18686/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18686/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11813/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11813/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11813/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16732/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16732/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16732/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4563/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4563/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4563/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG17453/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17453/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17453/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12111/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12111/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12111/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4286/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4286/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4286/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10327/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10327/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10327/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2984/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2984/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2984/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9441/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9441/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10596/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10596/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10596/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2894/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2894/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2894/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9450/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9450/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9450/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1963/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1963/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1963/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5255/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5255/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5255/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13655/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13655/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13655/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8811/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8811/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8811/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9943/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9943/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9943/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8176/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8176/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8176/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6279/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6279/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6279/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6971/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6971/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6971/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17420/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17420/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17420/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6431/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6431/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6431/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8140/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8140/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8140/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1180/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1180/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1180/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6320/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6320/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6320/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1604/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1604/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1604/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3350/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3350/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3350/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7186/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7186/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7186/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6189/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6189/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6189/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14214/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14214/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14214/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5934/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5934/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5934/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16161/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16161/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16161/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10182/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10182/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10182/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10802/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10802/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10802/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4611/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4611/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4611/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3638/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3638/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3638/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11467/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11467/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11467/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17704/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17704/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17704/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16122/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16122/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16122/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14785/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14785/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14785/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3594/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3594/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3594/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4090/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4090/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4090/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3923/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3923/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3923/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG13542/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13542/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13542/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5146/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5146/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5146/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8367/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8367/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8367/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12319/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12319/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12319/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2090/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2090/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2090/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7423/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7423/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7423/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12725/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12725/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12725/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6008/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6008/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6008/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12322/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12322/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12322/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7136/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7136/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7136/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3718/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3718/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3718/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17293/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17293/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17293/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5278/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5278/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5278/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18425/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18425/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18425/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5905/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5905/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5905/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14576/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14576/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14576/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9848/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9848/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9848/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2448/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2448/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2448/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7126/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7126/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7126/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7017/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7017/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7017/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10338/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10338/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10338/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11820/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11820/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11820/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1906/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1906/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1906/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7167/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7167/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7167/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4424/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4424/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4424/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14484/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14484/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14484/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8373/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8373/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8373/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12480/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12480/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12480/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9695/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9695/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9695/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3792/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3792/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3792/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8767/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8767/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8767/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14784/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14784/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14784/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10475/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10475/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10475/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18156/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18156/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18156/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4426/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4426/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4426/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2186/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2186/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2186/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11889/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11889/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11889/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12300/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12300/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12300/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5805/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5805/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5805/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8628/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8628/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8628/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG11349/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11349/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11349/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10331/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10331/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10331/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2361/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2361/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2361/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5284/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5284/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5284/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7581/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7581/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7581/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4048/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4048/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4048/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2239/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2239/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2239/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17439/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17439/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17439/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17401/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17401/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17401/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9356/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9356/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9356/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13066/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13066/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13066/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3102/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3102/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3102/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11679/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11679/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11679/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16011/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16011/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16011/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16438/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16438/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16438/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12499/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12499/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12499/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6880/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6880/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6880/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6136/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6136/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6136/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2551/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2551/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2551/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12863/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12863/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12863/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG11691/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11691/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11691/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3245/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3245/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3245/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14080/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14080/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14080/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2140/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2140/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2140/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17390/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17390/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17390/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2540/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2540/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2540/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3973/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3973/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3973/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15946/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15946/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15946/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18262/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18262/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18262/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5812/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5812/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5812/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6342/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6342/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6342/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9296/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9296/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9296/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7964/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7964/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7964/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1385/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1385/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1385/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4774/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4774/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4774/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2124/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2124/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2124/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1133/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1133/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1133/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1546/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1546/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1546/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13844/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13844/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13844/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12650/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12650/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12650/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2548/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2548/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2548/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4544/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4544/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4544/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4635/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4635/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4635/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15858/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15858/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15858/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5062/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5062/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5062/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5710/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5710/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5710/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16770/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16770/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16770/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8420/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8420/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8420/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18400/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18400/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18400/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11341/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11341/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11341/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6595/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6595/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6595/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9262/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9262/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9262/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13855/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13855/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13855/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8631/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8631/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8631/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9006/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9006/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9006/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5123/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5123/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5123/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1720/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1720/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1720/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5497/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5497/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5497/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11081/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11081/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11081/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15913/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15913/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15913/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4414/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4414/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4414/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5984/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5984/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5984/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12403/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12403/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12403/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9554/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9554/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9554/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14880/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14880/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14880/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12267/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12267/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12267/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8736/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8736/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8736/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15010/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15010/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15010/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6633/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6633/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6633/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7390/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7390/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7390/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5927/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5927/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5927/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8947/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8947/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8947/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5877/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5877/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5877/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4261/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4261/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4261/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16132/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16132/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16132/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5683/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5683/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5683/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16092/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16092/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16092/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9487/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9487/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9487/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9876/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9876/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9876/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9968/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9968/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9968/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8639/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8639/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8639/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13028/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13028/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13028/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5093/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5093/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5093/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13199/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13199/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13199/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6866/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6866/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6866/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1293/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1293/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1293/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9830/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9830/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9830/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1172/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1172/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1172/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15641/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15641/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15641/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8290/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8290/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8290/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5456/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5456/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5456/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18426/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18426/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18426/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9497/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9497/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9497/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2597/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2597/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2597/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6503/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6503/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6503/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11338/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11338/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11338/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2501/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2501/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2501/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15686/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15686/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15686/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7704/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7704/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7704/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15425/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15425/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15425/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8892/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8892/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8892/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6602/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6602/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6602/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15332/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15332/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15332/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6347/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6347/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6347/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2321/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2321/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2321/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6078/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6078/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6078/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1890/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1890/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1890/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5860/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5860/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5860/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6100/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6100/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6100/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15380/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15380/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15380/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5457/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5457/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5457/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1646/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1646/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1646/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13501/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13501/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13501/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6079/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6079/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6079/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7509/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7509/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7509/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7296/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7296/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7296/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13313/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13313/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13313/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3449/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3449/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3449/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6419/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6419/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6419/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4663/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4663/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4663/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7461/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7461/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7461/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7969/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7969/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7969/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6999/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6999/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6999/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3875/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3875/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3875/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6583/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6583/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6583/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6996/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6996/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6996/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18092/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18092/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18092/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8728/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8728/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8728/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9745/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9745/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9745/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3133/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3133/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3133/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7215/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7215/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7215/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5845/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5845/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5845/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5896/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5896/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5896/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11031/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11031/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11031/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11862/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11862/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11862/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5149/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5149/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5149/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12295/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12295/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12295/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15122/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15122/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15122/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5799/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5799/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5799/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7997/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7997/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7997/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7243/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7243/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7243/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15091/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15091/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15091/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9820/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9820/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9820/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4139/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4139/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4139/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5193/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5193/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5193/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13758/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13758/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13758/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12525/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12525/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12525/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9354/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9354/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9354/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5553/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5553/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5553/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5985/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5985/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5985/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8877/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8877/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8877/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1651/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1651/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1651/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3342/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3342/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3342/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13961/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13961/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13961/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11187/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11187/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11187/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6752/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6752/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6752/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6899/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6899/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6899/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4989/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4989/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4989/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16238/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16238/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16238/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5333/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5333/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5333/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG12541/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12541/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12541/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11058/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11058/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11058/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14821/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14821/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14821/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2120/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2120/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2120/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6888/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6888/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6888/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1308/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1308/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1308/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4829/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4829/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4829/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7689/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7689/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7689/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11839/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11839/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11839/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13872/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13872/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13872/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18708/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18708/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18708/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5524/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5524/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5524/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6588/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6588/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6588/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11629/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11629/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11629/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4942/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4942/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4942/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14029/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14029/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14029/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12218/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12218/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12218/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14895/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14895/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14895/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12244/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12244/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12244/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15365/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15365/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15365/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7854/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7854/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7854/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8961/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8961/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8961/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14278/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14278/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14278/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13373/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13373/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13373/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5334/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5334/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5334/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3951/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3951/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3951/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4284/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4284/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4284/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7786/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7786/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7786/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11541/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11541/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11541/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10879/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10879/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10879/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3479/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3479/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3479/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10290/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10290/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10290/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6352/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6352/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6352/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18633/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18633/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18633/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3873/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3873/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3873/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7374/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7374/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7374/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7792/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7792/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7792/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11624/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11624/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11624/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4152/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4152/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4152/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15347/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15347/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15347/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG12085/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12085/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12085/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14517/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14517/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14517/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6062/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6062/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6062/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6379/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6379/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6379/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3211/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3211/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3211/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17779/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17779/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17779/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8155/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8155/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8155/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11902/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11902/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11902/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17774/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17774/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17774/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15310/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15310/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15310/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1485/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1485/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1485/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4588/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4588/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4588/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6699/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6699/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6699/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2398/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2398/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2398/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13499/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13499/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13499/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14789/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14789/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14789/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7958/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7958/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7958/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9053/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9053/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9053/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3227/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3227/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3227/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10592/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10592/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10592/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG12195/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12195/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12195/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15354/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15354/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15354/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9605/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9605/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9605/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11430/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11430/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11430/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4013/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4013/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4013/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16775/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16775/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16775/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5909/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5909/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5909/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10842/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10842/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10842/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7398/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7398/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7398/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15361/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15361/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15361/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18348/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18348/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18348/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14573/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14573/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14573/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5156/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5156/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5156/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8014/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8014/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8014/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5718/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5718/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5718/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3319/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3319/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3319/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3979/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3979/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3979/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13918/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13918/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13918/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6118/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6118/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6118/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13731/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13731/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13731/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2375/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2375/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2375/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2677/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2677/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2677/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13736/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13736/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13736/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6957/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6957/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6957/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18416/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18416/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18416/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16635/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16635/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16635/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14634/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14634/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14634/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4669/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4669/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4669/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9952/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9952/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9952/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5240/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5240/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5240/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9008/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9008/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9008/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7816/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7816/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7816/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16577/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16577/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16577/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2603/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2603/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2603/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15131/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15131/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15131/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7955/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7955/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7955/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5768/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5768/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5768/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13283/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13283/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13283/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12144/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12144/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12144/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2077/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2077/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2077/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG16659/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16659/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16659/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14682/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14682/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14682/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3925/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3925/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3925/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11512/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11512/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11512/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6883/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6883/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6883/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8964/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8964/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8964/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2740/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2740/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2740/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3385/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3385/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3385/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8592/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8592/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8592/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11136/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11136/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11136/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8657/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8657/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8657/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7560/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7560/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7560/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6822/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6822/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6822/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14776/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14776/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14776/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1844/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1844/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1844/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12696/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12696/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12696/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14786/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14786/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14786/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13861/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13861/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13861/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11953/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11953/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11953/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10642/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10642/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10642/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4179/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4179/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4179/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9218/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9218/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9218/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12672/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12672/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12672/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7003/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7003/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7003/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6624/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6624/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6624/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9464/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9464/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9464/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11196/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11196/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11196/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2096/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2096/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2096/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2549/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2549/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2549/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12492/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12492/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12492/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6875/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6875/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6875/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14113/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14113/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14113/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16525/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16525/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16525/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13010/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13010/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13010/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4586/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4586/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4586/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8478/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8478/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8478/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2438/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2438/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2438/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13173/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13173/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13173/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5139/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5139/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5139/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8339/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8339/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8339/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9637/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9637/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9637/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3755/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3755/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3755/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3607/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3607/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3607/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5125/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5125/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5125/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14194/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14194/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14194/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9437/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9437/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9437/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16377/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16377/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16377/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8495/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8495/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8495/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13899/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13899/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13899/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7157/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7157/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7157/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6816/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6816/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6816/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15562/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15562/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15562/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8049/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8049/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8049/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13077/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13077/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13077/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8353/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8353/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8353/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2159/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2159/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2159/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11399/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11399/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11399/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3852/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3852/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3852/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11088/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11088/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11088/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6167/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6167/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6167/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15958/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15958/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15958/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16852/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16852/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16852/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6209/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6209/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6209/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5398/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5398/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5398/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7259/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7259/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7259/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16702/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16702/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16702/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2069/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2069/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2069/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6315/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6315/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6315/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6803/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6803/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6803/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7098/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7098/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7098/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3612/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3612/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3612/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2547/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2547/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2547/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15393/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15393/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15393/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2491/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2491/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2491/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9755/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9755/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9755/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6991/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6991/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6991/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9297/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9297/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9297/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15116/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15116/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15116/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7889/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7889/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7889/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13866/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13866/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13866/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14760/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14760/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14760/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3913/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3913/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3913/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3416/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3416/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3416/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17094/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17094/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17094/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11100/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11100/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11100/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1982/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1982/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1982/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9118/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9118/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9118/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1269/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1269/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1269/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16305/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16305/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16305/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8698/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8698/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8698/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4032/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4032/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4032/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8094/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8094/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8094/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6093/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6093/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6093/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5881/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5881/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5881/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4026/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4026/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4026/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14436/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14436/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14436/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7604/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7604/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7604/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14794/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14794/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14794/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7380/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7380/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7380/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5671/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5671/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5671/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG17522/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17522/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17522/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6860/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6860/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6860/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15734/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15734/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15734/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1995/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1995/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1995/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4217/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4217/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4217/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10313/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10313/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10313/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2568/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2568/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2568/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5292/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5292/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5292/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5254/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5254/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5254/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8371/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8371/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8371/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7952/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7952/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7952/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15407/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15407/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15407/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10524/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10524/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10524/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11473/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11473/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11473/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2441/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2441/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4782/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4782/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4782/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9737/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9737/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9737/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12188/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12188/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12188/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2021/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2021/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2021/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7522/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7522/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7522/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1373/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1373/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1373/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9920/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9920/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9920/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12158/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12158/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12158/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4703/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4703/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4703/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2270/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2270/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2270/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15433/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15433/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15433/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14472/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14472/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14472/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10522/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10522/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10522/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13562/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13562/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13562/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12701/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12701/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12701/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3775/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3775/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3775/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16123/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16123/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16123/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16713/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16713/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16713/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14189/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14189/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14189/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8635/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8635/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8635/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17284/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17284/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17284/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4912/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4912/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4912/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2052/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2052/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2052/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15001/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15001/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15001/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3703/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3703/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3703/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG16050/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16050/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16050/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3909/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3909/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3909/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2033/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2033/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2033/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1593/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1593/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1593/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10928/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10928/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10928/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4395/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4395/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4395/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9357/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9357/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9357/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6865/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6865/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6865/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4953/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4953/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4953/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11944/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11944/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11944/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17642/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17642/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17642/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9518/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9518/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9518/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15154/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15154/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15154/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4007/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4007/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4007/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2323/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2323/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2323/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14696/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14696/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14696/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11270/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11270/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11270/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2688/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2688/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2688/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1855/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1855/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1855/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11664/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11664/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11664/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14047/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14047/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14047/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3215/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3215/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3215/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2004/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2004/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2004/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2092/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2092/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2092/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5180/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5180/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5180/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5324/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5324/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5324/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1953/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1953/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1953/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2604/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2604/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2604/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15209/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15209/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15209/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8502/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8502/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8502/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12932/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12932/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12932/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17492/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17492/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17492/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7457/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7457/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7457/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3164/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3164/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3164/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11842/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11842/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11842/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14071/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14071/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14071/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6075/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6075/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6075/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7533/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7533/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7533/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10309/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10309/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10309/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1830/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1830/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1830/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG13806/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13806/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13806/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8213/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8213/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8213/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18547/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18547/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18547/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14303/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14303/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14303/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6690/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6690/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6690/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5929/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5929/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5929/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4898/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4898/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4898/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7141/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7141/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7141/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6909/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6909/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6909/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12641/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12641/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12641/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3208/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3208/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3208/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6893/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6893/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6893/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9938/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9938/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9938/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5313/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5313/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5313/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15593/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15593/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15593/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9221/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9221/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9221/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7275/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7275/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7275/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13225/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13225/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13225/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10539/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10539/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10539/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4251/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4251/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4251/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8825/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8825/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8825/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3098/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3098/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3098/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12681/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12681/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12681/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11025/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11025/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11025/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7757/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7757/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7757/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4466/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4466/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4466/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8992/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8992/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8992/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18707/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18707/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18707/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8941/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8941/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8941/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13877/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13877/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13877/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17537/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17537/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17537/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13167/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13167/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13167/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18575/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18575/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18575/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14753/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14753/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14753/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7440/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7440/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7440/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2970/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2970/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2970/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1487/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1487/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1487/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13939/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13939/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13939/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11079/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11079/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11079/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3604/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3604/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3604/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4155/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4155/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4155/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16066/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16066/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16066/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10707/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10707/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10707/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3974/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3974/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3974/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10957/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10957/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10957/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10602/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10602/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10602/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11698/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11698/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11698/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13859/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13859/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13859/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13996/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13996/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13996/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6702/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6702/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6702/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5479/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5479/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5479/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8576/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8576/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8576/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6572/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6572/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6572/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7742/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7742/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7742/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3701/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3701/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3701/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10721/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10721/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10721/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6499/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6499/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6499/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8277/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8277/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8277/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13172/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13172/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13172/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2039/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2039/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2039/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1804/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1804/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1804/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4356/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4356/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4356/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9997/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9997/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9997/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4359/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4359/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4359/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7578/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7578/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7578/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12042/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12042/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12042/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3023/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3023/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3023/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15424/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15424/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15424/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15712/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15712/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15712/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4113/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4113/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4113/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2484/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2484/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2484/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12964/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12964/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12964/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10120/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10120/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10120/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16302/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16302/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16302/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3436/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3436/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3436/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5689/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5689/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5689/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7189/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7189/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7189/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3103/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3103/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3103/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4235/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4235/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4235/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3606/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3606/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3606/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG6961/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6961/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6961/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7781/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7781/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7781/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4565/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4565/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4565/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10206/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10206/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10206/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11848/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11848/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11848/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6082/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6082/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6082/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17466/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17466/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17466/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11163/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11163/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11163/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17525/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17525/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17525/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1215/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1215/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1215/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17233/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17233/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17233/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9905/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9905/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9905/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16496/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16496/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16496/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13576/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13576/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13576/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6933/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6933/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6933/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2675/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2675/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2675/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10831/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10831/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10831/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11730/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11730/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11730/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3255/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3255/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3255/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6426/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6426/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6426/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14874/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14874/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14874/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9808/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9808/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9808/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16099/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16099/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16099/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8255/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8255/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8255/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11611/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11611/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11611/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1321/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1321/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1321/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9817/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9817/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9817/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8807/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8807/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8807/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6736/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6736/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6736/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12016/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12016/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12016/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13718/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13718/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13718/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4886/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4886/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4886/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14146/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14146/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14146/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10487/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10487/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10487/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10959/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10959/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10959/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7449/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7449/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7449/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3386/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3386/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3386/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13803/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13803/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13803/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4379/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4379/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4379/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15618/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15618/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15618/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3593/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3593/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3593/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3080/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3080/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3080/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6424/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6424/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6424/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8600/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8600/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8600/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3483/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3483/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3483/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18142/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18142/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18142/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5442/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5442/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5442/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4875/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4875/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4875/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4094/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4094/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4094/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17083/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17083/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17083/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8787/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8787/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8787/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9230/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9230/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9230/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4064/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4064/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4064/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14684/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14684/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14684/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2036/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2036/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2036/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2961/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2961/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2961/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14914/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14914/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14914/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7070/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7070/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7070/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16783/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16783/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16783/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17393/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17393/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17393/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15404/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15404/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15404/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3562/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3562/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3562/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13964/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13964/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13964/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6775/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6775/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6775/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7045/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7045/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7045/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6979/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6979/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6979/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17593/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17593/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17593/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1438/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1438/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1438/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13568/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13568/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13568/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1395/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1395/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1395/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14772/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14772/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14772/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11342/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11342/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11342/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4033/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4033/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4033/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3457/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3457/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3457/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11373/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11373/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11373/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11082/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11082/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11082/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9444/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9444/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9444/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3962/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3962/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3962/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8723/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8723/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8723/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14713/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14713/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14713/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3565/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3565/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3565/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16209/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16209/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16209/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1993/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1993/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1993/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15377/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15377/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15377/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8346/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8346/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8346/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1677/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1677/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1677/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4615/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4615/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4615/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5712/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5712/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5712/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16981/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16981/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16981/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14796/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14796/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14796/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11522/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11522/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11522/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4950/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4950/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4950/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2977/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2977/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2977/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5207/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5207/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5207/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11719/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11719/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11719/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1589/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1589/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1589/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8615/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8615/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8615/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9993/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9993/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9993/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9564/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9564/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9564/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3864/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3864/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3864/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14510/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14510/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14510/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10905/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10905/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10905/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9207/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9207/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9207/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5973/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5973/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5973/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2181/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2181/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2181/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3967/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3967/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3967/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9641/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9641/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9641/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15619/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15619/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15619/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5028/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5028/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5028/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1662/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1662/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1662/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6022/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6022/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6022/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4222/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4222/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4222/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4661/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4661/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4661/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9954/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9954/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9954/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10662/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10662/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10662/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1232/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1232/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1232/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15389/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15389/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15389/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14568/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14568/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14568/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8888/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8888/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8888/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5000/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5000/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5000/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14069/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14069/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14069/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3047/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3047/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3047/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10365/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10365/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10365/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14356/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14356/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14356/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1451/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1451/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1451/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7087/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7087/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7087/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2034/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2034/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2034/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6563/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6563/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6563/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16536/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16536/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16536/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9777/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9777/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9777/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14394/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14394/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14394/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2163/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2163/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2163/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12662/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12662/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12662/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15522/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15522/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15522/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7644/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7644/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7644/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5624/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5624/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5624/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10703/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10703/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10703/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10432/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10432/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10432/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3314/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3314/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3314/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10881/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10881/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10881/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG13553/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13553/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13553/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14722/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14722/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14722/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6698/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6698/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6698/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4571/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4571/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4571/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3696/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3696/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3696/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10476/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10476/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10476/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2453/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2453/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2453/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6794/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6794/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6794/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1670/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1670/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1670/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1973/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1973/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1973/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16349/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16349/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16349/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7716/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7716/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7716/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4062/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4062/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4062/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11291/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11291/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11291/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15160/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15160/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15160/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10010/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10010/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10010/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2937/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2937/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2937/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9394/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9394/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9394/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7686/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7686/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7686/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9558/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9558/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9558/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3389/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3389/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3389/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12883/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12883/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12883/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6372/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6372/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6372/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12734/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12734/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12734/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5891/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5891/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5891/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12229/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12229/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12229/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6255/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6255/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6255/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4183/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4183/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4183/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10421/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10421/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10421/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1480/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1480/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1480/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8070/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8070/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8070/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7666/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7666/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7666/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5589/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5589/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5589/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3519/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3519/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3519/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11036/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11036/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11036/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11110/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11110/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11110/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8611/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8611/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8611/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16068/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16068/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16068/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2560/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2560/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2560/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5585/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5585/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5585/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7820/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7820/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7820/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17212/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17212/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17212/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6998/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6998/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6998/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9839/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9839/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9839/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1268/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1268/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1268/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10096/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10096/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10096/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6988/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6988/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6988/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16143/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16143/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16143/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18541/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18541/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18541/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12260/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12260/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12260/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9926/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9926/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9926/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3530/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3530/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3530/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6351/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6351/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6351/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9379/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9379/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9379/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14629/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14629/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14629/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2104/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2104/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2104/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9573/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9573/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9573/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7863/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7863/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7863/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8973/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8973/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8973/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17236/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17236/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17236/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10043/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10043/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10043/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2788/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2788/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2788/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8642/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8642/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8642/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1909/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1909/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1909/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2333/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2333/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2333/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16669/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16669/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16669/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5989/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5989/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5989/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14134/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14134/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14134/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11394/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11394/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11394/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14675/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14675/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14675/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2590/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2590/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2590/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6910/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6910/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6910/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15137/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15137/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15137/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4566/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4566/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4566/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8227/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8227/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8227/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13637/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13637/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13637/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1492/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1492/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1492/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1961/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1961/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1961/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10804/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10804/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10804/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17651/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17651/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17651/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3756/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3756/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3756/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15203/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15203/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15203/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2758/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2758/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2758/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4952/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4952/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4952/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16192/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16192/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16192/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17188/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17188/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17188/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1633/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1633/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1633/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2000/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2000/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2000/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7874/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7874/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7874/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5976/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5976/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5976/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7603/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7603/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7603/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9364/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9364/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9364/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4868/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4868/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4868/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11705/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11705/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11705/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10259/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10259/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10259/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14890/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14890/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14890/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3113/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3113/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3113/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15569/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15569/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15569/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15153/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15153/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15153/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16433/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16433/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16433/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10676/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10676/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10676/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14440/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14440/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14440/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17736/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17736/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17736/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9182/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9182/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9182/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5759/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5759/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5759/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8513/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8513/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8513/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11285/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11285/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11285/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12727/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12727/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12727/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8867/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8867/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8867/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9070/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9070/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9070/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10227/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10227/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10227/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2057/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2057/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2057/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9548/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9548/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9548/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8680/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8680/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8680/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9675/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9675/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9675/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10519/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10519/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10519/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8931/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8931/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8931/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12348/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12348/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12348/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8758/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8758/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8758/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8770/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8770/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8770/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10556/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10556/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10556/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12027/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12027/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12027/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11068/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11068/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11068/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4579/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4579/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4579/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16631/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16631/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16631/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10274/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10274/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10274/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12390/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12390/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12390/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12763/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12763/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12763/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1793/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1793/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1793/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3740/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3740/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3740/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16717/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16717/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16717/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5847/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5847/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5847/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16698/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16698/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16698/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15411/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15411/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15411/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10892/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10892/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10892/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12410/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12410/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12410/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9956/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9956/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9956/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7633/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7633/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7633/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5386/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5386/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5386/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16738/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16738/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16738/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG17880/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17880/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17880/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2566/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2566/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2566/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4075/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4075/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4075/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6539/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6539/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6539/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15194/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15194/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15194/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9023/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9023/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9023/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3819/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3819/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3819/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1195/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1195/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1195/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1801/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1801/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1801/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10628/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10628/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10628/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4100/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4100/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4100/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11360/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11360/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11360/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10896/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10896/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10896/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13884/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13884/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13884/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3160/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3160/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3160/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16668/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16668/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16668/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2824/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2824/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2824/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13268/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13268/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13268/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16253/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16253/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6766/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6766/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6766/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9962/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9962/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9962/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15412/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15412/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15412/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4372/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4372/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4372/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1230/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1230/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1230/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2118/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2118/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2118/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11646/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11646/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11646/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9928/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9928/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9928/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3328/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3328/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3328/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11265/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11265/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11265/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2174/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2174/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2174/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9034/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9034/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9034/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15082/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15082/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15082/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9576/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9576/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9576/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12010/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12010/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12010/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4354/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4354/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4354/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3104/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3104/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3104/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10505/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10505/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10505/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9401/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9401/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9401/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18389/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18389/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18389/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12138/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12138/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12138/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG12571/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12571/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12571/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6555/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6555/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6555/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3064/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3064/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3064/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13720/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13720/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13720/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3773/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3773/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3773/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8516/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8516/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8516/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6004/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6004/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6004/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9599/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9599/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9599/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5358/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5358/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5358/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2125/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2125/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2125/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15465/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15465/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15465/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12000/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12000/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12000/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1497/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1497/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1497/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16348/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16348/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16348/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2988/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2988/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2988/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6011/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6011/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6011/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3563/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3563/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3563/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12213/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12213/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12213/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3710/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3710/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3710/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11482/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11482/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11482/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9651/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9651/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9651/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6625/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6625/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6625/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14222/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14222/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14222/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2769/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2769/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2769/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2016/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2016/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2016/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1345/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1345/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1345/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5474/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5474/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5474/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5844/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5844/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5844/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11457/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11457/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11457/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11684/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11684/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11684/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4371/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4371/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4371/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6353/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6353/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6353/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7109/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7109/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7109/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1634/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1634/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1634/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7843/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7843/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7843/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11171/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11171/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11171/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18305/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18305/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18305/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16428/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16428/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16428/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14710/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14710/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14710/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9410/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9410/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9410/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4171/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4171/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4171/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14608/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14608/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14608/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11544/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11544/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11544/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3249/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3249/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3249/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3291/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3291/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3291/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5682/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5682/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5682/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4229/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4229/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4229/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12368/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12368/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12368/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6824/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6824/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6824/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11925/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11925/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11925/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16966/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16966/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16966/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11635/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11635/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11635/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17973/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17973/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17973/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6691/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6691/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6691/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8449/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8449/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8449/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8664/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8664/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8664/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15597/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15597/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15597/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10341/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10341/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10341/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4812/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4812/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4812/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2520/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2520/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2520/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10049/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10049/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10049/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4594/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4594/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4594/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8960/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8960/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8960/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1821/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1821/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1821/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14235/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14235/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14235/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2143/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2143/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2143/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8045/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8045/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8045/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3206/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3206/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3206/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9861/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9861/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9861/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14103/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14103/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14103/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13093/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13093/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13093/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8151/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8151/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8151/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3490/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3490/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3490/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5817/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5817/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5817/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7075/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7075/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7075/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16541/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16541/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16541/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10243/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10243/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10243/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8920/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8920/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8920/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10134/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10134/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10134/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15109/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15109/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15109/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15769/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15769/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15769/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5996/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5996/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5996/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4976/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4976/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4976/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12668/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12668/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12668/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9463/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9463/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9463/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4019/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4019/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4019/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15905/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15905/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15905/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9915/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9915/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9915/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6333/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6333/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6333/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2911/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2911/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2911/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2279/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2279/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2279/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4619/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4619/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4619/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18358/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18358/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18358/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18466/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18466/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18466/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5892/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5892/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5892/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5577/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5577/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5577/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6769/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6769/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6769/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9193/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9193/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9193/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9114/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9114/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9114/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15814/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15814/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15814/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15457/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15457/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15457/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9679/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9679/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9679/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10053/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10053/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10053/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13287/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13287/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13287/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6586/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6586/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6586/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12864/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12864/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12864/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14885/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14885/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14885/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4484/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4484/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4484/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8682/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8682/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8682/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3843/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3843/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3843/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3163/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3163/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3163/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16853/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16853/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16853/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1595/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1595/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1595/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8970/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8970/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8970/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3544/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3544/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3544/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17519/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17519/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17519/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14068/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14068/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14068/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15187/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15187/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15187/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13498/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13498/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13498/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9858/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9858/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9858/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9304/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9304/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9304/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16177/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16177/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16177/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3646/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3646/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3646/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5158/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5158/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5158/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2657/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2657/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2657/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4074/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4074/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4074/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10292/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10292/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10292/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5138/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5138/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5138/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17118/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17118/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17118/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13495/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13495/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13495/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3932/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3932/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3932/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5023/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5023/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5023/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3476/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3476/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3476/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11976/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11976/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11976/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14809/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14809/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14809/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13741/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13741/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13741/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1905/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1905/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1905/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4687/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4687/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4687/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7152/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7152/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7152/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16196/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16196/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16196/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG11768/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11768/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11768/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3369/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3369/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3369/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2112/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2112/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2112/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4735/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4735/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4735/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17657/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17657/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17657/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5050/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5050/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5050/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13075/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13075/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13075/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9212/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9212/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9212/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1192/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1192/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1192/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2234/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2234/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2234/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9563/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9563/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9563/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5902/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5902/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5902/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4748/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4748/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4748/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3499/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3499/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3499/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3807/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3807/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3807/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2019/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2019/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2019/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10468/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10468/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10468/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5630/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5630/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5630/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14982/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14982/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14982/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12289/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12289/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12289/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15285/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15285/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15285/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2324/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2324/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2324/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11788/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11788/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11788/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15759/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15759/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15759/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14974/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14974/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14974/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16145/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16145/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16145/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12463/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12463/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12463/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4149/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4149/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4149/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7505/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7505/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7505/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11447/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11447/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11447/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6511/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6511/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6511/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6981/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6981/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6981/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13963/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13963/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13963/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4296/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4296/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4296/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9165/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9165/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9165/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11141/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11141/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11141/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16400/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16400/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16400/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5785/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5785/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5785/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2599/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2599/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2599/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2713/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2713/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2713/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9521/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9521/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9521/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1249/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1249/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1249/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15625/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15625/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15625/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6954/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6954/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6954/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1423/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1423/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1423/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8369/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8369/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8369/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2488/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2488/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2488/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11094/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11094/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11094/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12214/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12214/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12214/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5923/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5923/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5923/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18242/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18242/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18242/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14671/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14671/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14671/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14011/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14011/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14011/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2609/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2609/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2609/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4843/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4843/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4843/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7652/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7652/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7652/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8201/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8201/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8201/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1466/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1466/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1466/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1158/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1158/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1158/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4817/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4817/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4817/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7902/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7902/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7902/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6313/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6313/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6313/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10758/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10758/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10758/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17474/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17474/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17474/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2557/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2557/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2557/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11590/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11590/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11590/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6647/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6647/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6647/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3510/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3510/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3510/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1266/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1266/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1266/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16441/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16441/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14190/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14190/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14190/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2617/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2617/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2617/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11479/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11479/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11479/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5215/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5215/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5215/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11072/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11072/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11072/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9884/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9884/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9884/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12373/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12373/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12373/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3655/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3655/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3655/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9856/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9856/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9856/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1948/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1948/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1948/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG6374/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6374/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6374/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13159/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13159/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13159/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18169/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18169/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18169/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6481/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6481/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6481/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14920/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14920/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14920/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3332/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3332/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3332/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15048/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15048/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15048/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8940/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8940/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8940/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3894/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3894/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3894/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6115/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6115/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6115/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2238/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2238/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2238/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18162/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18162/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18162/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10685/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10685/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10685/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1272/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1272/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1272/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15570/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15570/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15570/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17445/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17445/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17445/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7720/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7720/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7720/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4807/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4807/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4807/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3032/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3032/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3032/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4291/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4291/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4291/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG13442/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13442/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13442/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11816/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11816/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11816/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6638/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6638/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6638/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1477/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1477/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1477/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12597/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12597/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12597/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9663/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9663/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9663/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15118/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15118/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15118/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4535/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4535/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4535/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18153/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18153/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18153/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3876/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3876/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3876/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8552/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8552/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8552/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4429/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4429/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4429/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11835/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11835/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11835/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2927/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2927/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2927/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15642/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15642/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15642/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13357/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13357/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13357/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7892/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7892/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7892/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5174/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5174/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5174/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17575/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17575/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17575/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8667/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8667/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8667/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG13277/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13277/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13277/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14480/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14480/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14480/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5341/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5341/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5341/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3680/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3680/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3680/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9977/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9977/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9977/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7753/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7753/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7753/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10655/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10655/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10655/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3738/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3738/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3738/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14646/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14646/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14646/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15349/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15349/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15349/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17563/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17563/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17563/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2879/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2879/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2879/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3595/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3595/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3595/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5919/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5919/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5919/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6253/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6253/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16320/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16320/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16320/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18427/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18427/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18427/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7005/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7005/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7005/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10456/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10456/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10456/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2067/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2067/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2067/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10419/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10419/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10419/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8886/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8886/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8886/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6665/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6665/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6665/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3636/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3636/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3636/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3942/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3942/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3942/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6620/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6620/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6620/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3614/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3614/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3614/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6907/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6907/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6907/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17645/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17645/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17645/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3787/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3787/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3787/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7735/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7735/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7735/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11343/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11343/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11343/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11148/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11148/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11148/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4396/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4396/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4396/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17864/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17864/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17864/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2699/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2699/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2699/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9658/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9658/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9658/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6784/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6784/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6784/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5861/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5861/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5861/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11433/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11433/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11433/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15359/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15359/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15359/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8533/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8533/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8533/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16487/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16487/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16487/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7042/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7042/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7042/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5673/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5673/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5673/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6959/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6959/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6959/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9623/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9623/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9623/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5997/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5997/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5997/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5663/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5663/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5663/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13218/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13218/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13218/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14184/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14184/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14184/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1424/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1424/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1424/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12002/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12002/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12002/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2527/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2527/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2527/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13282/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13282/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13282/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4473/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4473/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4473/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1441/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1441/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7769/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7769/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7769/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10613/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10613/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10613/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8894/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8894/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8894/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9321/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9321/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9321/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1951/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1951/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1951/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16157/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16157/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16157/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7743/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7743/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7743/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1632/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1632/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1632/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11135/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11135/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11135/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5148/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5148/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5148/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16416/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16416/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16416/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14687/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14687/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14687/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1474/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1474/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1474/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16032/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16032/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16032/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5858/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5858/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5858/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8233/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8233/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8233/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18051/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18051/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18051/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13270/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13270/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13270/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14174/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14174/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14174/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10504/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10504/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10504/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4857/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4857/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4857/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8412/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8412/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8412/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11293/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11293/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11293/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1377/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1377/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1377/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4146/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4146/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4146/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3143/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3143/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3143/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10808/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10808/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10808/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10035/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10035/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10035/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5427/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5427/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5427/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7007/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7007/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7007/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13012/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13012/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13012/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3286/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3286/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3286/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2573/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2573/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2573/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9922/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9922/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9922/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4188/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4188/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4188/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5545/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5545/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5545/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12203/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12203/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12203/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18443/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18443/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18443/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1516/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1516/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1516/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18059/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18059/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18059/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11223/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11223/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11223/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8005/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8005/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8005/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1785/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1785/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1785/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8763/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8763/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8763/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6600/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6600/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6600/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9531/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9531/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9531/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6528/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6528/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6528/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14176/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14176/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14176/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9506/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9506/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9506/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14270/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14270/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14270/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3694/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3694/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3694/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4657/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4657/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4657/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1217/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1217/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1217/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6406/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6406/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6406/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13972/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13972/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13972/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5786/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5786/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5786/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12756/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12756/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12756/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11199/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11199/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11199/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15417/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15417/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15417/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13631/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13631/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13631/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2045/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2045/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2045/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2244/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2244/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2244/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17370/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17370/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17370/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG18556/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18556/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18556/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5346/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5346/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5346/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6936/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6936/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6936/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5557/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5557/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5557/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14377/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14377/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14377/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15053/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15053/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15053/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10459/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10459/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10459/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14610/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14610/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14610/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10100/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10100/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10100/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2512/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2512/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2512/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10369/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10369/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10369/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1971/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1971/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1971/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15418/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15418/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15418/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7904/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7904/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7904/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5328/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5328/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5328/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17095/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17095/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17095/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10251/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10251/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10251/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5199/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5199/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5199/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11080/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11080/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11080/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4830/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4830/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4830/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG17637/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17637/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17637/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16647/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16647/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16647/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10625/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10625/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10625/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1729/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1729/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1729/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7172/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7172/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7172/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14841/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14841/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14841/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5943/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5943/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5943/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2739/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2739/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2739/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5265/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5265/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5265/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15826/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15826/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15826/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5005/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5005/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5005/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10373/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10373/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10373/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2973/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2973/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2973/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5955/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5955/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5955/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12118/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12118/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12118/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16932/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16932/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16932/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9789/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9789/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9789/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9352/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9352/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9352/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8076/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8076/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8076/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8091/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8091/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8091/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG16734/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16734/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16734/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9005/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9005/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9005/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1572/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1572/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1572/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6391/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6391/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6391/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8376/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8376/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8376/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1575/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1575/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1575/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16947/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16947/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16947/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11060/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11060/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11060/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8709/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8709/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8709/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3007/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3007/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3007/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4148/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4148/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4148/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11909/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11909/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11909/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6738/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6738/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6738/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10163/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10163/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10163/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2750/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2750/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2750/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7840/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7840/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7840/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16797/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16797/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16797/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5224/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5224/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5224/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10106/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10106/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10106/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14828/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14828/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14828/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2565/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2565/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2565/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13762/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13762/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13762/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5382/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5382/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5382/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9186/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9186/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9186/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10339/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10339/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10339/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11753/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11753/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11753/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18178/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18178/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18178/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3372/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3372/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3372/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1676/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1676/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1676/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8202/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8202/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8202/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5622/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5622/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5622/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1998/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1998/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1998/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7352/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7352/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7352/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9342/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9342/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9342/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13555/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13555/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13555/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9863/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9863/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9863/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3721/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3721/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3721/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1864/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1864/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1864/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9022/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9022/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9022/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1099/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1099/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1099/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG10220/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10220/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10220/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1201/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1201/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1201/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3550/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3550/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3550/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9413/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9413/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9413/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7080/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7080/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7080/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16097/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16097/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16097/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2552/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2552/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2552/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2038/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2038/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2038/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10838/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10838/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10838/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10747/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10747/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10747/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16337/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16337/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16337/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9874/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9874/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9874/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16739/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16739/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16739/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9491/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9491/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9491/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9640/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9640/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9640/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15301/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15301/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15301/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5661/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5661/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5661/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3859/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3859/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3859/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7920/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7920/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7920/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9209/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9209/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9209/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15868/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15868/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15868/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3484/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3484/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3484/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8217/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8217/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8217/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5521/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5521/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5521/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12125/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12125/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12125/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18662/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18662/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18662/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12446/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12446/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12446/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13104/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13104/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13104/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17433/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17433/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17433/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9100/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9100/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9100/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8568/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8568/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8568/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4689/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4689/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4689/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13930/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13930/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13930/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9533/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9533/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9533/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18017/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18017/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18017/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15401/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15401/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15401/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8226/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8226/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8226/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6433/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6433/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6433/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5529/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5529/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5529/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9445/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9445/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9445/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9080/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9080/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9080/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13840/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13840/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13840/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16040/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16040/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16040/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14632/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14632/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14632/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2637/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2637/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2637/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10671/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10671/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10671/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5142/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5142/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5142/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1550/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1550/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1550/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6804/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6804/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6804/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5753/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5753/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5753/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15148/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15148/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15148/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4142/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4142/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4142/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13344/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13344/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13344/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16464/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16464/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16464/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1501/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1501/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1501/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13290/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13290/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13290/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14883/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14883/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14883/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4114/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4114/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4114/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14406/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14406/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14406/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8818/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8818/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8818/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3943/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3943/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3943/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7318/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7318/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7318/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8902/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8902/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8902/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14697/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14697/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14697/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16526/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16526/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16526/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15243/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15243/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15243/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11981/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11981/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11981/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8544/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8544/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8544/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6081/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6081/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6081/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10056/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10056/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10056/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5262/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5262/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5262/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14909/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14909/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14909/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4243/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4243/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4243/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15839/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15839/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15839/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6428/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6428/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6428/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18236/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18236/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18236/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6651/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6651/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6651/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4799/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4799/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4799/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7838/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7838/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7838/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1238/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1238/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1238/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1320/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1320/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1320/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10463/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10463/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10463/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6160/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6160/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6160/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16767/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16767/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16767/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7608/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7608/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7608/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13119/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13119/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13119/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7206/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7206/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7206/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5609/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5609/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5609/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6399/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6399/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6399/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16124/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16124/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16124/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3144/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3144/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3144/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16010/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16010/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16010/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2301/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2301/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2301/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7362/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7362/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7362/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11456/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11456/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11456/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16915/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16915/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16915/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15325/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15325/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15325/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15456/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15456/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15456/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6146/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6146/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6146/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4389/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4389/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4389/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG6388/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6388/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6388/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9728/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9728/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9728/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6236/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6236/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6236/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4881/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4881/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4881/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9063/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9063/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9063/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11995/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11995/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11995/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4225/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4225/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4225/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7907/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7907/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7907/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10601/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10601/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10601/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6505/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6505/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6505/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8065/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8065/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8065/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9534/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9534/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9534/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9580/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9580/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9580/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7618/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7618/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7618/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1271/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1271/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1271/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9659/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9659/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9659/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2419/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2419/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2419/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4820/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4820/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4820/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4208/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4208/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4208/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13612/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13612/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13612/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4629/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4629/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4629/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6745/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6745/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6745/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13787/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13787/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13787/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11924/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11924/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11924/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18101/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18101/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18101/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7234/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7234/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7234/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14497/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14497/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14497/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14388/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14388/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14388/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7142/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7142/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7142/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9060/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9060/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9060/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6721/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6721/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6721/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17953/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17953/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17953/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2099/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2099/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2099/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12143/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12143/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12143/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4309/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4309/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4309/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3537/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3537/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3537/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4249/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4249/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4249/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7638/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7638/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7638/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2627/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2627/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2627/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6056/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6056/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6056/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7637/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7637/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7637/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5581/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5581/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5581/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8809/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8809/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8809/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4265/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4265/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4265/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14703/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14703/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14703/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8905/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8905/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8905/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17936/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17936/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17936/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4960/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4960/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4960/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17511/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17511/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17511/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12501/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12501/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12501/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8840/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8840/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8840/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7479/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7479/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7479/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14649/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14649/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14649/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6831/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6831/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6831/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1742/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1742/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1742/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6561/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6561/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6561/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10997/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10997/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10997/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16791/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16791/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16791/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3882/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3882/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3882/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4093/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4093/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4093/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4982/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4982/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4982/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1988/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1988/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1988/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5733/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5733/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5733/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3273/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3273/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3273/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6411/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6411/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6411/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2910/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2910/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2910/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3345/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3345/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3345/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2281/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2281/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2281/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14894/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14894/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14894/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6378/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6378/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6378/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7685/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7685/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7685/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12290/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12290/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12290/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6354/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6354/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6354/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7406/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7406/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7406/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7531/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7531/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7531/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14503/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14503/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14503/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17644/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17644/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17644/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3559/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3559/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3559/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16644/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16644/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16644/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3748/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3748/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3748/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2397/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2397/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2397/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15329/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15329/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15329/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4043/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4043/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4043/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3769/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3769/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3769/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11712/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11712/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11712/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12225/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12225/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12225/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11266/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11266/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11266/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8418/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8418/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8418/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9071/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9071/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9071/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7303/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7303/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7303/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8042/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8042/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8042/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4723/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4723/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4723/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2721/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2721/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2721/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8720/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8720/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8720/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17618/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17618/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17618/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5957/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5957/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5957/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4121/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4121/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4121/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7279/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7279/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7279/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3754/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3754/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3754/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1402/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1402/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1402/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7418/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7418/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7418/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6327/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6327/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6327/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9482/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9482/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9482/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6485/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6485/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6485/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3167/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3167/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3167/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8610/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8610/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8610/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1618/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1618/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1618/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5717/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5717/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5717/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7903/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7903/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7903/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15399/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15399/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15399/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3802/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3802/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3802/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3226/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3226/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3226/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7196/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7196/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7196/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2653/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2653/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2653/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15645/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15645/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15645/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1851/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1851/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1851/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2297/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2297/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2297/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5247/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5247/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5247/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16375/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16375/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16375/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2998/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2998/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2998/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8848/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8848/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8848/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15824/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15824/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15824/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3980/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3980/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3980/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11599/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11599/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11599/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12950/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12950/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12950/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8626/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8626/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8626/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2200/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2200/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2200/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2164/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2164/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2164/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14815/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14815/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14815/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7496/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7496/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7496/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4223/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4223/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4223/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4079/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4079/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4079/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13581/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13581/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13581/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3847/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3847/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3847/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13543/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13543/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13543/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18216/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18216/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18216/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7250/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7250/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7250/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12149/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12149/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12149/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7150/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7150/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7150/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8074/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8074/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8074/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG7002/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7002/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7002/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4593/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4593/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4593/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16977/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16977/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16977/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7614/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7614/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7614/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4122/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4122/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4122/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8708/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8708/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8708/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18391/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18391/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18391/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13044/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13044/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13044/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7775/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7775/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7775/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1429/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1429/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1429/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2705/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2705/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2705/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1387/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1387/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1387/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3075/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3075/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3075/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6319/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6319/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6319/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6786/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6786/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6786/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5879/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5879/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5879/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5876/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5876/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5876/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3362/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3362/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3362/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9095/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9095/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9095/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9248/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9248/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9248/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1824/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1824/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1824/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11200/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11200/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11200/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11393/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11393/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11393/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4767/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4767/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4767/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6892/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6892/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6892/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16936/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16936/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16936/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8882/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8882/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8882/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1958/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1958/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1958/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4164/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4164/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4164/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5784/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5784/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5784/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12926/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12926/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12926/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8318/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8318/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8318/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16749/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16749/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16749/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5643/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5643/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5643/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12139/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12139/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12139/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14616/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14616/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14616/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15299/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15299/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15299/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15654/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15654/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15654/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8620/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8620/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8620/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3354/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3354/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3354/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG6944/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6944/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6944/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11668/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11668/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11668/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18560/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18560/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18560/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8476/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8476/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8476/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12623/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12623/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12623/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7554/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7554/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7554/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8239/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8239/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8239/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16044/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16044/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16044/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2643/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2643/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2643/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4004/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4004/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4004/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10438/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10438/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10438/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14676/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14676/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14676/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5925/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5925/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5925/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1650/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1650/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1650/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11190/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11190/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11190/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13916/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13916/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13916/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4645/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4645/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4645/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14768/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14768/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14768/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11119/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11119/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11119/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7766/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7766/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7766/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG11604/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11604/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11604/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10965/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10965/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10965/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15728/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15728/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15728/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7611/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7611/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7611/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7137/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7137/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7137/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17108/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17108/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17108/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9738/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9738/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9738/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12176/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12176/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12176/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9085/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9085/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9085/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17229/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17229/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17229/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9336/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9336/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9336/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8382/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8382/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8382/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4056/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4056/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4056/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12735/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12735/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12735/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15326/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15326/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15326/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6080/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6080/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6080/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14612/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14612/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14612/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7484/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7484/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7484/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8265/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8265/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8265/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7354/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7354/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7354/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1989/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1989/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1989/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17335/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17335/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17335/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5115/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5115/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5115/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13071/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13071/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13071/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2496/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2496/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2496/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8119/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8119/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8119/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5775/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5775/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5775/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6034/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6034/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6034/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16747/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16747/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16747/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1777/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1777/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1777/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13579/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13579/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13579/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1940/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1940/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1940/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3770/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3770/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3770/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4853/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4853/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4853/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8187/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8187/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8187/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11529/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11529/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11529/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6515/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6515/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6515/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1833/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1833/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1833/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14615/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14615/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14615/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3029/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3029/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3029/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG9355/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9355/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9355/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4157/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4157/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4157/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6240/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6240/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6240/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6102/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6102/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6102/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15428/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15428/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15428/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5103/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5103/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5103/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1927/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1927/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1927/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16634/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16634/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16634/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1708/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1708/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1708/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7063/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7063/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7063/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14579/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14579/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14579/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2478/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2478/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2478/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11832/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11832/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11832/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3380/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3380/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3380/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6960/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6960/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6960/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9169/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9169/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9169/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5596/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5596/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5596/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1199/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1199/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1199/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5366/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5366/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5366/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1407/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1407/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1407/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3458/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3458/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3458/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1561/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1561/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1561/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9790/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9790/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9790/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6152/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6152/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6152/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4834/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4834/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4834/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1908/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1908/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1908/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13696/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13696/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13696/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13818/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13818/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13818/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6652/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6652/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6652/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4111/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4111/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4111/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13583/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13583/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13583/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2204/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2204/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2204/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9010/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9010/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9010/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9282/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9282/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9282/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12699/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12699/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12699/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2651/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2651/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2651/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13626/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13626/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13626/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6298/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6298/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6298/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3347/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3347/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3347/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13887/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13887/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13887/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG17068/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17068/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17068/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1669/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1669/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1669/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2660/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2660/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2660/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3687/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3687/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3687/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5010/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5010/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5010/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3761/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3761/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3761/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6438/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6438/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6438/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8710/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8710/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8710/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6139/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6139/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6139/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13828/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13828/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13828/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12248/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12248/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12248/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11855/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11855/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11855/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3264/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3264/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3264/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2296/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2296/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2296/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7102/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7102/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7102/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13208/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13208/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13208/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4760/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4760/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4760/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11045/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11045/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11045/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16687/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16687/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16687/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17096/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17096/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17096/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG6844/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6844/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6844/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14144/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14144/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14144/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6972/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6972/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6972/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11279/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11279/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11279/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10580/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10580/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10580/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12423/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12423/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12423/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6245/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6245/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6245/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17610/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17610/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17610/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8645/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8645/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8645/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5119/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5119/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5119/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1838/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1838/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1838/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16203/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16203/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16203/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3107/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3107/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3107/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15554/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15554/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15554/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6898/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6898/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6898/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2640/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2640/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2640/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15382/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15382/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15382/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3116/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3116/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3116/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7161/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7161/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7161/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3477/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3477/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3477/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2777/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2777/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2777/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3982/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3982/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3982/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3984/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3984/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3984/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14021/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14021/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14021/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12230/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12230/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12230/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7387/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7387/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7387/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4617/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4617/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4617/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10794/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10794/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10794/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5108/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5108/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5108/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7245/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7245/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7245/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9381/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9381/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9381/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2382/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2382/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2382/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7991/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7991/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7991/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14739/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14739/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14739/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13123/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13123/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13123/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13717/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13717/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13717/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14680/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14680/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14680/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10112/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10112/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10112/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10217/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10217/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10217/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15961/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15961/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15961/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14238/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14238/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14238/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15431/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15431/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15431/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11652/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11652/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11652/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11978/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11978/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11978/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1845/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1845/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1845/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18090/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18090/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18090/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3948/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3948/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3948/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2020/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2020/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2020/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6911/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6911/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6911/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11282/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11282/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11282/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4274/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4274/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4274/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12540/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12540/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12540/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15011/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15011/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15011/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5749/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5749/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5749/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5625/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5625/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5625/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6658/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6658/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6658/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2822/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2822/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2822/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2641/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2641/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2641/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14999/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14999/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14999/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7428/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7428/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7428/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3205/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3205/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3205/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10370/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10370/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10370/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9685/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9685/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9685/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6213/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6213/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6213/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1621/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1621/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1621/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8044/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8044/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8044/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6876/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6876/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6876/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5415/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5415/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5415/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2121/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2121/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2121/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3318/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3318/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3318/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15336/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15336/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15336/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2753/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2753/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2753/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8289/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8289/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8289/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4860/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4860/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4860/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7244/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7244/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7244/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6184/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6184/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6184/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16373/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16373/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16373/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12642/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12642/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12642/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18482/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18482/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18482/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4089/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4089/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4089/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG14046/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14046/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14046/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15440/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15440/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15440/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13943/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13943/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13943/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7831/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7831/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7831/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5400/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5400/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5400/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12664/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12664/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12664/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13016/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13016/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13016/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2600/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2600/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2600/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2182/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2182/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2182/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2326/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2326/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2326/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4210/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4210/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4210/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8589/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8589/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8589/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15436/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15436/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15436/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14808/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14808/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14808/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5463/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5463/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5463/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5856/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5856/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5856/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11701/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11701/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11701/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5043/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5043/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5043/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2742/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2742/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2742/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16100/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16100/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16100/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG12026/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12026/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12026/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2559/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2559/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2559/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15857/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15857/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15857/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5111/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5111/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5111/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3251/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3251/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3251/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5741/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5741/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5741/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13134/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13134/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13134/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13145/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13145/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13145/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4597/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4597/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4597/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12521/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12521/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12521/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2836/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2836/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2836/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11721/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11721/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11721/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3533/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3533/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3533/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16795/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16795/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16795/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5225/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5225/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5225/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9538/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9538/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9538/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12309/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12309/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12309/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10675/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10675/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10675/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8435/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8435/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8435/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5595/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5595/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5595/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG13294/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13294/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13294/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11521/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11521/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11521/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1336/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1336/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1336/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3975/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3975/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3975/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3589/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3589/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3589/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3209/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3209/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3209/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16223/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16223/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16223/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5523/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5523/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5523/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10548/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10548/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10548/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17664/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17664/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17664/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3218/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3218/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3218/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4489/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4489/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4489/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14801/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14801/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14801/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3279/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3279/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3279/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9951/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9951/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9951/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14499/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14499/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14499/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2798/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2798/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2798/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17182/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17182/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17182/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14024/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14024/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14024/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3147/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3147/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3147/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG11949/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11949/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11949/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3619/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3619/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3619/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4840/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4840/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4840/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4156/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4156/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4156/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10883/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10883/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10883/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2344/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2344/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2344/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1975/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1975/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1975/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13265/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13265/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13265/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14929/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14929/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14929/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8501/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8501/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8501/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15806/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15806/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15806/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8348/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8348/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8348/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16041/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16041/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16041/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9585/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9585/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9585/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7980/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7980/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7980/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5300/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5300/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5300/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3234/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3234/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3234/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17376/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17376/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17376/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15442/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15442/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15442/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13713/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13713/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13713/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG5375/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5375/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5375/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17861/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17861/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17861/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13073/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13073/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13073/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18001/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18001/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18001/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6771/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6771/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6771/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7961/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7961/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7961/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14419/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14419/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14419/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7481/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7481/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7481/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12280/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12280/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12280/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3766/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3766/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3766/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11830/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11830/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11830/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11609/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11609/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11609/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9700/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9700/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9700/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5370/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5370/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5370/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1557/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1557/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1557/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8663/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8663/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8663/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4469/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4469/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4469/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17341/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17341/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17341/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12268/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12268/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12268/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8647/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8647/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8647/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2131/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2131/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2131/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3246/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3246/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3246/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9471/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9471/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9471/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10813/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10813/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10813/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9831/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9831/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9831/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13885/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13885/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13885/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3872/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3872/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3872/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10909/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10909/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10909/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17982/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17982/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17982/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11111/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11111/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11111/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2008/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2008/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2008/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2621/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2621/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2621/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15117/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15117/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15117/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7878/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7878/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7878/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16382/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16382/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16382/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18259/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18259/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18259/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17542/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17542/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17542/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7910/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7910/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7910/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11513/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11513/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11513/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1481/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1481/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1481/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4872/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4872/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4872/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11303/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11303/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11303/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5432/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5432/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5432/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9990/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9990/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9990/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6790/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6790/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6790/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11115/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11115/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11115/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14994/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14994/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14994/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7872/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7872/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7872/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3292/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3292/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3292/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5695/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5695/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5695/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8300/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8300/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8300/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13607/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13607/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13607/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14347/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14347/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14347/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4436/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4436/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4436/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9798/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9798/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9798/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1084/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1084/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1084/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2253/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2253/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4078/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4078/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4078/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1893/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1893/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1893/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5079/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5079/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5079/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG16017/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16017/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16017/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12301/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12301/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12301/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14906/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14906/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14906/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3302/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3302/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3302/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15691/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15691/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15691/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4174/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4174/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4174/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3033/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3033/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3033/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8388/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8388/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8388/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7485/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7485/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7485/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12092/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12092/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12092/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1885/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1885/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1885/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15274/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15274/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15274/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9618/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9618/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9618/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7893/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7893/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7893/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15918/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15918/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15918/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1529/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1529/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1529/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5666/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5666/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5666/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11496/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11496/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11496/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15960/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15960/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15960/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13523/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13523/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13523/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1736/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1736/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1736/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8185/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8185/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8185/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15873/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15873/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15873/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3359/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3359/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3359/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17665/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17665/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17665/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1879/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1879/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1879/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11736/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11736/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11736/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15019/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15019/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15019/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2530/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2530/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2530/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6069/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6069/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6069/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8191/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8191/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8191/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15342/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15342/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15342/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6157/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6157/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6157/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11945/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11945/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11945/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14295/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14295/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14295/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15951/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15951/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15951/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11112/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11112/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11112/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1328/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1328/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1328/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9318/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9318/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9318/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8790/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8790/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8790/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG15838/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15838/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15838/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5701/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5701/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5701/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2868/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2868/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2868/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4456/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4456/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4456/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4020/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4020/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4020/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1434/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1434/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1434/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5453/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5453/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5453/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4675/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4675/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4675/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5971/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5971/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5971/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8597/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8597/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8597/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2531/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2531/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2531/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4713/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4713/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4713/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6695/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6695/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6695/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4729/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4729/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4729/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6263/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6263/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6263/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17978/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17978/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17978/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1921/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1921/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1921/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12011/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12011/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12011/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9455/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9455/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9455/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12255/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12255/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12255/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2856/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2856/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2856/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9601/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9601/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9601/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6589/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6589/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6589/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14339/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14339/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14339/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1260/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1260/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1260/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8856/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8856/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8856/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10107/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10107/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10107/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4654/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4654/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4654/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8125/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8125/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8125/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9918/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9918/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9918/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1241/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1241/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1241/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3527/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3527/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3527/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1701/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1701/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1701/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7090/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7090/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7090/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5664/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5664/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5664/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4790/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4790/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4790/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5824/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5824/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5824/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9327/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9327/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9327/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4937/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4937/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4937/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3652/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3652/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3652/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG2692/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2692/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2692/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3169/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3169/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3169/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1858/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1858/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1858/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2295/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2295/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2295/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7883/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7883/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7883/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9994/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9994/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9994/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13826/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13826/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13826/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8046/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8046/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8046/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7871/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7871/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7871/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5660/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5660/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5660/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1408/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1408/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1408/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16596/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16596/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16596/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6648/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6648/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6648/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2775/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2775/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2775/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8772/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8772/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8772/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9526/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9526/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9526/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13698/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13698/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13698/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7687/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7687/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7687/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6975/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6975/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6975/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2935/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2935/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2935/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG6299/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6299/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6299/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6142/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6142/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6142/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1938/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1938/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1938/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9285/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9285/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9285/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10849/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10849/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10849/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3921/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3921/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3921/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4540/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4540/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4540/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2901/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2901/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2901/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13875/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13875/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13875/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4862/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4862/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4862/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5309/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5309/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5309/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7738/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7738/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7738/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7734/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7734/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7734/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2197/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2197/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2197/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3232/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3232/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3232/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5276/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5276/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5276/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2157/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2157/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2157/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10692/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10692/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10692/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5094/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5094/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5094/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15952/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15952/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15952/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG4671/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4671/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4671/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2776/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2776/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2776/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3853/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3853/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3853/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10933/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10933/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10933/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13860/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13860/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13860/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13546/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13546/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13546/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9110/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9110/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9110/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2950/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2950/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2950/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5106/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5106/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5106/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13632/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13632/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13632/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2720/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2720/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2720/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8172/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8172/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8172/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8293/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8293/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8293/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12552/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12552/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12552/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12510/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12510/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12510/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17324/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17324/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17324/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1521/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1521/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1521/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5448/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5448/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5448/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1449/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1449/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1449/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12441/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12441/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12441/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG1519/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1519/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1519/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5543/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5543/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5543/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1251/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1251/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1251/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1762/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1762/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1762/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14598/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14598/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14598/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13263/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13263/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13263/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3195/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3195/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3195/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3396/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3396/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3396/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5178/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5178/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5178/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1847/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1847/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1847/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9749/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9749/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9749/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2975/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2975/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2975/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5536/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5536/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5536/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2514/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2514/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2514/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13839/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13839/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13839/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14902/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14902/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14902/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10242/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10242/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10242/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3953/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3953/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3953/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7241/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7241/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7241/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6071/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6071/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6071/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG3177/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3177/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3177/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2230/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2230/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2230/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4107/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4107/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4107/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13793/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13793/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13793/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10029/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10029/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10029/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15978/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15978/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15978/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2387/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2387/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2387/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9706/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9706/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9706/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4662/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4662/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4662/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12992/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12992/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12992/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12069/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12069/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12069/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11202/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11202/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11202/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10632/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10632/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10632/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6074/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6074/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6074/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15055/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15055/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15055/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15766/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15766/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15766/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9042/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9042/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9042/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15762/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15762/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15762/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2315/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2315/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2315/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9108/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9108/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9108/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG17442/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17442/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17442/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4946/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4946/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4946/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2101/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2101/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2101/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3253/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3253/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3253/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17577/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17577/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17577/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12350/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12350/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12350/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6072/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6072/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6072/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17797/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17797/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17797/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6726/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6726/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6726/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9899/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9899/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9899/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7730/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7730/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7730/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5266/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5266/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5266/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2902/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2902/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2902/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG11198/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11198/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG11198/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6090/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6090/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6090/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9842/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9842/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9842/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5588/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5588/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5588/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10868/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10868/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10868/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9026/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9026/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9026/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3587/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3587/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3587/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG13658/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13658/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13658/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9147/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9147/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9147/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8251/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8251/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8251/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3069/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3069/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3069/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14690/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14690/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14690/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8247/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8247/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8247/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8957/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8957/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8957/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18446/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18446/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18446/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13905/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13905/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13905/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6606/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6606/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6606/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14186/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14186/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14186/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14865/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14865/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14865/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5834/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5834/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5834/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2280/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2280/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2280/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15025/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15025/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15025/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4221/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4221/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4221/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7691/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7691/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7691/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1743/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1743/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1743/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG12531/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12531/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG12531/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13345/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13345/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13345/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG17024/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17024/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17024/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18413/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18413/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18413/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8630/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8630/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8630/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16473/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16473/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16473/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16937/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16937/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16937/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6744/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6744/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6744/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2770/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2770/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2770/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18346/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18346/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18346/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8096/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8096/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8096/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6487/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6487/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6487/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2368/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2368/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2368/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1432/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1432/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1432/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG4532/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4532/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG4532/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14493/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14493/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14493/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16141/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16141/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16141/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9606/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9606/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9606/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14935/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14935/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14935/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6484/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6484/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6484/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2899/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2899/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2899/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9559/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9559/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9559/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG8891/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8891/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8891/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16098/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16098/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16098/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG9809/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9809/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG9809/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8582/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8582/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8582/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5597/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5597/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5597/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3408/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3408/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3408/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3203/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3203/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3203/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7115/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7115/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7115/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7113/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7113/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7113/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1673/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1673/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1673/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6181/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6181/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6181/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17954/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17954/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17954/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5672/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5672/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5672/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG14474/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14474/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG14474/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7900/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7900/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7900/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG3667/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3667/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG3667/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG6286/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6286/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG6286/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18278/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18278/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18278/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8452/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8452/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8452/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG18265/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18265/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG18265/M8a/codeml_test.ctl & 
wait
codeml /c3se/NOBACKUP/users/luho/site_model/OG16240/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16240/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16240/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2731/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2731/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2731/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8428/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8428/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8428/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1401/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1401/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1401/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2276/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2276/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2276/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG7717/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7717/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG7717/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10581/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10581/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10581/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG16742/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16742/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG16742/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG17851/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17851/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG17851/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2751/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2751/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2751/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8595/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8595/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8595/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8583/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8583/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8583/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG5970/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5970/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG5970/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG10437/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10437/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG10437/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG1907/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1907/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG1907/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15831/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15831/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15831/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG15097/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15097/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG15097/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG2049/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2049/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG2049/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG13235/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13235/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG13235/M8a/codeml_test.ctl & 
codeml /c3se/NOBACKUP/users/luho/site_model/OG8078/M7/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8078/M8/codeml_test.ctl
codeml /c3se/NOBACKUP/users/luho/site_model/OG8078/M8a/codeml_test.ctl & 
wait
