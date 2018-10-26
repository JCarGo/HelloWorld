# buen codigo :v

# Lectura de datos
elect=c(
 589,493,531,355,469,432,415,468,617,426,
 300,439,464,430,403,525,478,392,432,459,
 398,372,488,481,620,484,509,522,488,502,
 596,567,466,477,580,555,520,525,425,650,
 384,497,438,501,521,452,508,462,457,577)

#Histograma
hist(elect)

#Histograma 6 intervalos
k=6
A=diff(range(elect))
c = ceiling(A/k)

b=seq(min(elect),max(elect)+c,by = c)

hist(elect,breaks=b)

#########################
# tabla de frecuencias

helect = hist(elect)

k=length(helect$counts)

L.inf=helect$breaks[-(k+1)]
L.sup=helect$breaks[-1]

n.j=helect$counts

n=sum(n.j)

f.j=n.j/n

p.j=100*f.j

N.j=cumsum(n.j)
F.j=cumsum(f.j)
P.j=cumsum(p.j)

tab=cbind(L.inf,L.sup,n.j,f.j,p.j,N.j,F.j,P.j)
tab

# Ojiva

plot(helect$breaks,c(0,F.j),xlab="Consumos en kWh",ylab="Porcentaje acumulado de hogares")
lines(helect$breaks,c(0,F.j),col="red")
title("Ojiva para la distribucion de electricidad en los hogares")



















