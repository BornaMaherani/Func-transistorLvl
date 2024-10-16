module fTranLevel (
    out , A , B , C , D , notA, notB, notC, notD
);
    input A , B , C , D , notA, notB, notC, notD;
    output out;
    wire u,y1,y2,r,t1,t2;
    wire q,k,l;
    supply1 pwr;
    supply0 gnd;
    //P-complex
    //D(f') = a'c' + a'b'c + b'd + acd
    //D(f') = u   +   y   +  r  +  t
    
        //u
    pmos(u,pwr,notA);
    pmos(out,u,notC);
        //y
    pmos(y1,pwr,notA);
    pmos(y2,y1,notB);
    pmos(out,y2,C);
        //r
    pmos(r,pwr,notB);
    pmos(out,r,D);
        //t
    pmos(t1,pwr,A);
    pmos(t2,t1,C);
    pmos(out,t2,D);
    //N-complex
    //f' = (a' + c')(a' + b' + c')(b' + d)(a + c + d)
    //f' = (   p   )(      q     )(   k  )(    l    )

        //l
    nmos(l,gnd,A);
    nmos(l,gnd,C);
    nmos(l,gnd,D);
        //k
    nmos(k,l,notB);
    nmos(k,l,D);
        //q
    nmos(q,k,notA);
    nmos(q,k,notB);
    nmos(q,k,C);
        //p
    nmos(out,q,notA);
    nmos(out,q,notC);    

endmodule
