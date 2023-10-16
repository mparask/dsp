% Example 4.5 - Δημιουργία σχήματος 4.10

t=0:0.1:10; x=exp(-0.2*t);
xx=[x,x,x,x];
tt=0:1:length(xx)-1;
ws=4*pi/(length(xx)-1);
ttp=-pi:ws:3*pi;

plot(ttp,xx);grid; ylim([-0,1.2]);