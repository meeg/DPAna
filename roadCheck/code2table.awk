#!/usr/bin/awk -f

BEGIN {
    FPAT="[[:digit:]]+"
}
/if \(Y/{
    print $2, $5, $8
    y1=1.0099*($2+0.5) + 7.5
    y2=1.8999*($5+0.5) + 7.5
    z0=(1497*y1-797*y2)/(y1-y2)
    y4=y2+(2200-1497)*(y2-y1)/(1497-797)
    bar4=y4/23
    #print $2,$5,$8,y1,y2,z0,y4,bar4
    #print $2,$5
}
