#!/usr/bin/bash

data1='CuZrglass'
data2='CuZrglass2'
data3='CuZrglass2_modified'

awk '{if (NR==1) print $0}' data.${data1} > data.${data3}
echo " ">> data.${data3}

awk '{if (NR>=3 && NR<=4) print $0}' data.${data1} >> data.${data3}
echo " ">> data.${data3}

awk '{if (NR>=6 && NR<=8) print $0}' data.${data1} >> data.${data3}
echo " ">> data.${data3}
echo 'Masses' >> data.${data3}
echo " ">> data.${data3}
awk '{if (NR>=12 && NR<=13) print $0}' data.${data1} >> data.${data3}
echo " ">> data.${data3}
echo 'Atoms' >> data.${data3}
echo " ">> data.${data3}

awk '{if (NR>=10 && NR<=9+4148928) print NR-9,$2,$4,£¨-1£©*$3,$5}' data.${data2} >> data.${data3}


