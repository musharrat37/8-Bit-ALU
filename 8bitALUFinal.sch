DSCH 2.7a
VERSION 4/9/2019 1:44:28 PM
BB(-174,-60,720,1185)
SYM  #ALULYoutput
BB(0,70,40,130)
TITLE 10 68  #ALULYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(5,75,30,50,r)
VIS 5
PIN(0,110,0.000,0.000)A
PIN(0,120,0.000,0.000)B
PIN(0,100,0.000,0.000)S2
PIN(0,90,0.000,0.000)S1
PIN(0,80,0.000,0.000)S0
PIN(40,80,0.060,0.140)YLout
LIG(0,110,5,110)
LIG(0,120,5,120)
LIG(0,100,5,100)
LIG(0,90,5,90)
LIG(0,80,5,80)
LIG(35,80,40,80)
LIG(5,75,5,125)
LIG(5,75,35,75)
LIG(35,75,35,125)
LIG(35,125,5,125)
VLG     module ALULYoutput( A,B,S2,S1,S0,YLout);
VLG      input A,B,S2,S1,S0;
VLG      output YLout;
VLG      not #(3) inv(w6,A);
VLG      not #(10) inv(w7,S2);
VLG      not #(10) inv(w8,B);
VLG      not #(10) inv(w9,S1);
VLG      not #(10) inv(w10,S0);
VLG      and #(16) and2(w11,S1,B);
VLG      and #(16) and3(w12,w8,w7,w9);
VLG      and #(16) and2(w13,S2,B);
VLG      or #(16) or2(w14,w12,w13);
VLG      and #(16) and2(w15,w10,w14);
VLG      or #(16) or2(YLout,w11,w15);
VLG     endmodule
FSYM
SYM  #ALULXoutput
BB(0,-5,40,55)
TITLE 10 -7  #ALULXoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(5,0,30,50,r)
VIS 5
PIN(0,35,0.000,0.000)A
PIN(0,45,0.000,0.000)B
PIN(0,25,0.000,0.000)S2
PIN(0,15,0.000,0.000)S1
PIN(0,5,0.000,0.000)S0
PIN(40,5,0.060,0.140)XLout
LIG(0,35,5,35)
LIG(0,45,5,45)
LIG(0,25,5,25)
LIG(0,15,5,15)
LIG(0,5,5,5)
LIG(35,5,40,5)
LIG(5,0,5,50)
LIG(5,0,35,0)
LIG(35,0,35,50)
LIG(35,50,5,50)
VLG     module ALULXoutput( A,B,S2,S1,S0,XLout);
VLG      input A,B,S2,S1,S0;
VLG      output XLout;
VLG      not #(10) inv(w6,B);
VLG      not #(10) inv(w7,A);
VLG      not #(17) inv(w8,S2);
VLG      not #(17) inv(w9,S1);
VLG      and #(16) and3(w11,w10,w9,w8);
VLG      and #(16) and3(w12,w7,S2,w9);
VLG      or #(16) or2(w13,S1,w8);
VLG      and #(16) and2(w14,A,w13);
VLG      and #(16) and3(w15,w6,S2,S0);
VLG      and #(16) and3(w16,B,S2,S1);
VLG      xnor #(16) xnor2(w10,S0,B);
VLG      or #(19) or3(w17,w12,w14,w15);
VLG      or #(16) or2(w18,w16,w11);
VLG      or #(16) or2(XLout,w17,w18);
VLG     endmodule
FSYM
SYM  #sym17
BB(275,25,315,65)
TITLE 285 23  #FA
MODEL 6000
PROP                                                                                                                                                                                                            
REC(280,30,30,30,r)
VIS 5
PIN(275,35,0.000,0.000)A
PIN(275,45,0.000,0.000)B
PIN(275,55,0.000,0.000)Cin
PIN(315,45,0.060,0.140)S
PIN(315,35,0.060,0.210)Cout
LIG(275,35,280,35)
LIG(275,45,280,45)
LIG(275,55,280,55)
LIG(310,45,315,45)
LIG(310,35,315,35)
LIG(280,30,280,60)
LIG(280,30,310,30)
LIG(310,30,310,60)
LIG(310,60,280,60)
VLG     module sym17( A,B,Cin,S,Cout);
VLG      input A,B,Cin;
VLG      output S,Cout;
VLG      xor #(23) xor2(w3,A,B);
VLG      xor #(16) xor2(S,w3,Cin);
VLG      and #(16) and2(w6,w3,Cin);
VLG      and #(16) and2(w7,B,A);
VLG      or #(16) or2(Cout,w6,w7);
VLG     endmodule
FSYM
SYM  #button1
BB(-104,-44,-96,-35)
TITLE -100 -40  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-103,-43,6,6,r)
VIS 1
PIN(-100,-35,0.000,0.000)S2
LIG(-100,-36,-100,-35)
LIG(-104,-44,-96,-44)
LIG(-104,-36,-104,-44)
LIG(-96,-36,-104,-36)
LIG(-96,-44,-96,-36)
LIG(-103,-43,-97,-43)
LIG(-103,-37,-103,-43)
LIG(-97,-37,-103,-37)
LIG(-97,-43,-97,-37)
FSYM
SYM  #button2
BB(-84,-44,-76,-35)
TITLE -80 -40  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-83,-43,6,6,r)
VIS 1
PIN(-80,-35,0.000,0.000)S1
LIG(-80,-36,-80,-35)
LIG(-84,-44,-76,-44)
LIG(-84,-36,-84,-44)
LIG(-76,-36,-84,-36)
LIG(-76,-44,-76,-36)
LIG(-83,-43,-77,-43)
LIG(-83,-37,-83,-43)
LIG(-77,-37,-83,-37)
LIG(-77,-43,-77,-37)
FSYM
SYM  #button3
BB(-64,-44,-56,-35)
TITLE -60 -40  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-63,-43,6,6,r)
VIS 1
PIN(-60,-35,0.000,0.000)S0
LIG(-60,-36,-60,-35)
LIG(-64,-44,-56,-44)
LIG(-64,-36,-64,-44)
LIG(-56,-36,-64,-36)
LIG(-56,-44,-56,-36)
LIG(-63,-43,-57,-43)
LIG(-63,-37,-63,-43)
LIG(-57,-37,-63,-37)
LIG(-57,-43,-57,-37)
FSYM
SYM  #button4
BB(-174,31,-165,39)
TITLE -170 35  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-173,32,6,6,r)
VIS 1
PIN(-165,35,0.000,0.000)A0
LIG(-166,35,-165,35)
LIG(-174,39,-174,31)
LIG(-166,39,-174,39)
LIG(-166,31,-166,39)
LIG(-174,31,-166,31)
LIG(-173,38,-173,32)
LIG(-167,38,-173,38)
LIG(-167,32,-167,38)
LIG(-173,32,-167,32)
FSYM
SYM  #button5
BB(-174,51,-165,59)
TITLE -170 55  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-173,52,6,6,r)
VIS 1
PIN(-165,55,0.000,0.000)B0
LIG(-166,55,-165,55)
LIG(-174,59,-174,51)
LIG(-166,59,-174,59)
LIG(-166,51,-166,59)
LIG(-174,51,-166,51)
LIG(-173,58,-173,52)
LIG(-167,58,-173,58)
LIG(-167,52,-167,58)
LIG(-173,52,-167,52)
FSYM
SYM  #light2
BB(373,20,379,34)
TITLE 375 34  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(374,21,4,4,r)
VIS 1
PIN(375,35,0.000,0.000)Sum0
LIG(378,26,378,21)
LIG(378,21,377,20)
LIG(374,21,374,26)
LIG(377,31,377,28)
LIG(376,31,379,31)
LIG(376,33,378,31)
LIG(377,33,379,31)
LIG(373,28,379,28)
LIG(375,28,375,35)
LIG(373,26,373,28)
LIG(379,26,373,26)
LIG(379,28,379,26)
LIG(375,20,374,21)
LIG(377,20,375,20)
FSYM
SYM  #light1
BB(343,20,349,34)
TITLE 345 34  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(344,21,4,4,r)
VIS 1
PIN(345,35,0.000,0.000)Cout0
LIG(348,26,348,21)
LIG(348,21,347,20)
LIG(344,21,344,26)
LIG(347,31,347,28)
LIG(346,31,349,31)
LIG(346,33,348,31)
LIG(347,33,349,31)
LIG(343,28,349,28)
LIG(345,28,345,35)
LIG(343,26,343,28)
LIG(349,26,343,26)
LIG(349,28,349,26)
LIG(345,20,344,21)
LIG(347,20,345,20)
FSYM
SYM  #button6
BB(-44,-44,-36,-35)
TITLE -40 -40  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-43,-43,6,6,r)
VIS 1
PIN(-40,-35,0.000,0.000)Cin
LIG(-40,-36,-40,-35)
LIG(-44,-44,-36,-44)
LIG(-44,-36,-44,-44)
LIG(-36,-36,-44,-36)
LIG(-36,-44,-36,-36)
LIG(-43,-43,-37,-43)
LIG(-43,-37,-43,-43)
LIG(-37,-37,-43,-37)
LIG(-37,-43,-37,-37)
FSYM
SYM  #ALULYoutput
BB(-5,470,35,530)
TITLE 5 468  #ALULYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,475,30,50,r)
VIS 5
PIN(-5,510,0.000,0.000)A
PIN(-5,520,0.000,0.000)B
PIN(-5,500,0.000,0.000)S2
PIN(-5,490,0.000,0.000)S1
PIN(-5,480,0.000,0.000)S0
PIN(35,480,0.060,0.140)YLout
LIG(-5,510,0,510)
LIG(-5,520,0,520)
LIG(-5,500,0,500)
LIG(-5,490,0,490)
LIG(-5,480,0,480)
LIG(30,480,35,480)
LIG(0,475,0,525)
LIG(0,475,30,475)
LIG(30,475,30,525)
LIG(30,525,0,525)
VLG     module ALULYoutput( A,B,S2,S1,S0,YLout);
VLG      input A,B,S2,S1,S0;
VLG      output YLout;
VLG      not #(3) inv(w6,A);
VLG      not #(10) inv(w7,S2);
VLG      not #(10) inv(w8,B);
VLG      not #(10) inv(w9,S1);
VLG      not #(10) inv(w10,S0);
VLG      and #(16) and2(w11,S1,B);
VLG      and #(16) and3(w12,w8,w7,w9);
VLG      and #(16) and2(w13,S2,B);
VLG      or #(16) or2(w14,w12,w13);
VLG      and #(16) and2(w15,w10,w14);
VLG      or #(16) or2(YLout,w11,w15);
VLG     endmodule
FSYM
SYM  #ALULXoutput
BB(-5,405,35,465)
TITLE 5 403  #ALULXoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,410,30,50,r)
VIS 5
PIN(-5,445,0.000,0.000)A
PIN(-5,455,0.000,0.000)B
PIN(-5,435,0.000,0.000)S2
PIN(-5,425,0.000,0.000)S1
PIN(-5,415,0.000,0.000)S0
PIN(35,415,0.060,0.140)XLout
LIG(-5,445,0,445)
LIG(-5,455,0,455)
LIG(-5,435,0,435)
LIG(-5,425,0,425)
LIG(-5,415,0,415)
LIG(30,415,35,415)
LIG(0,410,0,460)
LIG(0,410,30,410)
LIG(30,410,30,460)
LIG(30,460,0,460)
VLG     module ALULXoutput( A,B,S2,S1,S0,XLout);
VLG      input A,B,S2,S1,S0;
VLG      output XLout;
VLG      not #(10) inv(w6,B);
VLG      not #(10) inv(w7,A);
VLG      not #(17) inv(w8,S2);
VLG      not #(17) inv(w9,S1);
VLG      and #(16) and3(w11,w10,w9,w8);
VLG      and #(16) and3(w12,w7,S2,w9);
VLG      or #(16) or2(w13,S1,w8);
VLG      and #(16) and2(w14,A,w13);
VLG      and #(16) and3(w15,w6,S2,S0);
VLG      and #(16) and3(w16,B,S2,S1);
VLG      xnor #(16) xnor2(w10,S0,B);
VLG      or #(19) or3(w17,w12,w14,w15);
VLG      or #(16) or2(w18,w16,w11);
VLG      or #(16) or2(XLout,w17,w18);
VLG     endmodule
FSYM
SYM  #ALULYoutput
BB(-5,335,35,395)
TITLE 5 333  #ALULYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,340,30,50,r)
VIS 5
PIN(-5,375,0.000,0.000)A
PIN(-5,385,0.000,0.000)B
PIN(-5,365,0.000,0.000)S2
PIN(-5,355,0.000,0.000)S1
PIN(-5,345,0.000,0.000)S0
PIN(35,345,0.060,0.140)YLout
LIG(-5,375,0,375)
LIG(-5,385,0,385)
LIG(-5,365,0,365)
LIG(-5,355,0,355)
LIG(-5,345,0,345)
LIG(30,345,35,345)
LIG(0,340,0,390)
LIG(0,340,30,340)
LIG(30,340,30,390)
LIG(30,390,0,390)
VLG     module ALULYoutput( A,B,S2,S1,S0,YLout);
VLG      input A,B,S2,S1,S0;
VLG      output YLout;
VLG      not #(3) inv(w6,A);
VLG      not #(10) inv(w7,S2);
VLG      not #(10) inv(w8,B);
VLG      not #(10) inv(w9,S1);
VLG      not #(10) inv(w10,S0);
VLG      and #(16) and2(w11,S1,B);
VLG      and #(16) and3(w12,w8,w7,w9);
VLG      and #(16) and2(w13,S2,B);
VLG      or #(16) or2(w14,w12,w13);
VLG      and #(16) and2(w15,w10,w14);
VLG      or #(16) or2(YLout,w11,w15);
VLG     endmodule
FSYM
SYM  #ALULXoutput
BB(-5,275,35,335)
TITLE 5 273  #ALULXoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,280,30,50,r)
VIS 5
PIN(-5,315,0.000,0.000)A
PIN(-5,325,0.000,0.000)B
PIN(-5,305,0.000,0.000)S2
PIN(-5,295,0.000,0.000)S1
PIN(-5,285,0.000,0.000)S0
PIN(35,285,0.060,0.140)XLout
LIG(-5,315,0,315)
LIG(-5,325,0,325)
LIG(-5,305,0,305)
LIG(-5,295,0,295)
LIG(-5,285,0,285)
LIG(30,285,35,285)
LIG(0,280,0,330)
LIG(0,280,30,280)
LIG(30,280,30,330)
LIG(30,330,0,330)
VLG     module ALULXoutput( A,B,S2,S1,S0,XLout);
VLG      input A,B,S2,S1,S0;
VLG      output XLout;
VLG      not #(10) inv(w6,B);
VLG      not #(10) inv(w7,A);
VLG      not #(17) inv(w8,S2);
VLG      not #(17) inv(w9,S1);
VLG      and #(16) and3(w11,w10,w9,w8);
VLG      and #(16) and3(w12,w7,S2,w9);
VLG      or #(16) or2(w13,S1,w8);
VLG      and #(16) and2(w14,A,w13);
VLG      and #(16) and3(w15,w6,S2,S0);
VLG      and #(16) and3(w16,B,S2,S1);
VLG      xnor #(16) xnor2(w10,S0,B);
VLG      or #(19) or3(w17,w12,w14,w15);
VLG      or #(16) or2(w18,w16,w11);
VLG      or #(16) or2(XLout,w17,w18);
VLG     endmodule
FSYM
SYM  #ALULXoutput
BB(0,145,40,205)
TITLE 10 143  #ALULXoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(5,150,30,50,r)
VIS 5
PIN(0,185,0.000,0.000)A
PIN(0,195,0.000,0.000)B
PIN(0,175,0.000,0.000)S2
PIN(0,165,0.000,0.000)S1
PIN(0,155,0.000,0.000)S0
PIN(40,155,0.060,0.140)XLout
LIG(0,185,5,185)
LIG(0,195,5,195)
LIG(0,175,5,175)
LIG(0,165,5,165)
LIG(0,155,5,155)
LIG(35,155,40,155)
LIG(5,150,5,200)
LIG(5,150,35,150)
LIG(35,150,35,200)
LIG(35,200,5,200)
VLG     module ALULXoutput( A,B,S2,S1,S0,XLout);
VLG      input A,B,S2,S1,S0;
VLG      output XLout;
VLG      not #(10) inv(w6,B);
VLG      not #(10) inv(w7,A);
VLG      not #(17) inv(w8,S2);
VLG      not #(17) inv(w9,S1);
VLG      and #(16) and3(w11,w10,w9,w8);
VLG      and #(16) and3(w12,w7,S2,w9);
VLG      or #(16) or2(w13,S1,w8);
VLG      and #(16) and2(w14,A,w13);
VLG      and #(16) and3(w15,w6,S2,S0);
VLG      and #(16) and3(w16,B,S2,S1);
VLG      xnor #(16) xnor2(w10,S0,B);
VLG      or #(19) or3(w17,w12,w14,w15);
VLG      or #(16) or2(w18,w16,w11);
VLG      or #(16) or2(XLout,w17,w18);
VLG     endmodule
FSYM
SYM  #ALULYoutput
BB(0,205,40,265)
TITLE 10 203  #ALULYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(5,210,30,50,r)
VIS 5
PIN(0,245,0.000,0.000)A
PIN(0,255,0.000,0.000)B
PIN(0,235,0.000,0.000)S2
PIN(0,225,0.000,0.000)S1
PIN(0,215,0.000,0.000)S0
PIN(40,215,0.060,0.140)YLout
LIG(0,245,5,245)
LIG(0,255,5,255)
LIG(0,235,5,235)
LIG(0,225,5,225)
LIG(0,215,5,215)
LIG(35,215,40,215)
LIG(5,210,5,260)
LIG(5,210,35,210)
LIG(35,210,35,260)
LIG(35,260,5,260)
VLG     module ALULYoutput( A,B,S2,S1,S0,YLout);
VLG      input A,B,S2,S1,S0;
VLG      output YLout;
VLG      not #(3) inv(w6,A);
VLG      not #(10) inv(w7,S2);
VLG      not #(10) inv(w8,B);
VLG      not #(10) inv(w9,S1);
VLG      not #(10) inv(w10,S0);
VLG      and #(16) and2(w11,S1,B);
VLG      and #(16) and3(w12,w8,w7,w9);
VLG      and #(16) and2(w13,S2,B);
VLG      or #(16) or2(w14,w12,w13);
VLG      and #(16) and2(w15,w10,w14);
VLG      or #(16) or2(YLout,w11,w15);
VLG     endmodule
FSYM
SYM  #sym17
BB(290,405,330,445)
TITLE 300 403  #FA
MODEL 6000
PROP                                                                                                                                                                                                            
REC(295,410,30,30,r)
VIS 5
PIN(290,415,0.000,0.000)A
PIN(290,425,0.000,0.000)B
PIN(290,435,0.000,0.000)Cin
PIN(330,425,0.060,0.140)S
PIN(330,415,0.060,0.210)Cout
LIG(290,415,295,415)
LIG(290,425,295,425)
LIG(290,435,295,435)
LIG(325,425,330,425)
LIG(325,415,330,415)
LIG(295,410,295,440)
LIG(295,410,325,410)
LIG(325,410,325,440)
LIG(325,440,295,440)
VLG     module sym17( A,B,Cin,S,Cout);
VLG      input A,B,Cin;
VLG      output S,Cout;
VLG      xor #(23) xor2(w3,A,B);
VLG      xor #(16) xor2(S,w3,Cin);
VLG      and #(16) and2(w6,w3,Cin);
VLG      and #(16) and2(w7,B,A);
VLG      or #(16) or2(Cout,w6,w7);
VLG     endmodule
FSYM
SYM  #sym17
BB(285,275,325,315)
TITLE 295 273  #FA
MODEL 6000
PROP                                                                                                                                                                                                            
REC(290,280,30,30,r)
VIS 5
PIN(285,285,0.000,0.000)A
PIN(285,295,0.000,0.000)B
PIN(285,305,0.000,0.000)Cin
PIN(325,295,0.060,0.140)S
PIN(325,285,0.060,0.210)Cout
LIG(285,285,290,285)
LIG(285,295,290,295)
LIG(285,305,290,305)
LIG(320,295,325,295)
LIG(320,285,325,285)
LIG(290,280,290,310)
LIG(290,280,320,280)
LIG(320,280,320,310)
LIG(320,310,290,310)
VLG     module sym17( A,B,Cin,S,Cout);
VLG      input A,B,Cin;
VLG      output S,Cout;
VLG      xor #(23) xor2(w3,A,B);
VLG      xor #(16) xor2(S,w3,Cin);
VLG      and #(16) and2(w6,w3,Cin);
VLG      and #(16) and2(w7,B,A);
VLG      or #(16) or2(Cout,w6,w7);
VLG     endmodule
FSYM
SYM  #sym17
BB(280,135,320,175)
TITLE 290 133  #FA
MODEL 6000
PROP                                                                                                                                                                                                            
REC(285,140,30,30,r)
VIS 5
PIN(280,145,0.000,0.000)A
PIN(280,155,0.000,0.000)B
PIN(280,165,0.000,0.000)Cin
PIN(320,155,0.060,0.140)S
PIN(320,145,0.060,0.210)Cout
LIG(280,145,285,145)
LIG(280,155,285,155)
LIG(280,165,285,165)
LIG(315,155,320,155)
LIG(315,145,320,145)
LIG(285,140,285,170)
LIG(285,140,315,140)
LIG(315,140,315,170)
LIG(315,170,285,170)
VLG     module sym17( A,B,Cin,S,Cout);
VLG      input A,B,Cin;
VLG      output S,Cout;
VLG      xor #(23) xor2(w3,A,B);
VLG      xor #(16) xor2(S,w3,Cin);
VLG      and #(16) and2(w6,w3,Cin);
VLG      and #(16) and2(w7,B,A);
VLG      or #(16) or2(Cout,w6,w7);
VLG     endmodule
FSYM
SYM  #button7
BB(-169,446,-160,454)
TITLE -165 450  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-168,447,6,6,r)
VIS 1
PIN(-160,450,0.000,0.000)A3
LIG(-161,450,-160,450)
LIG(-169,454,-169,446)
LIG(-161,454,-169,454)
LIG(-161,446,-161,454)
LIG(-169,446,-161,446)
LIG(-168,453,-168,447)
LIG(-162,453,-168,453)
LIG(-162,447,-162,453)
LIG(-168,447,-162,447)
FSYM
SYM  #button8
BB(-169,466,-160,474)
TITLE -165 470  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-168,467,6,6,r)
VIS 1
PIN(-160,470,0.000,0.000)B3
LIG(-161,470,-160,470)
LIG(-169,474,-169,466)
LIG(-161,474,-169,474)
LIG(-161,466,-161,474)
LIG(-169,466,-161,466)
LIG(-168,473,-168,467)
LIG(-162,473,-168,473)
LIG(-162,467,-162,473)
LIG(-168,467,-162,467)
FSYM
SYM  #button9
BB(-169,311,-160,319)
TITLE -165 315  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-168,312,6,6,r)
VIS 1
PIN(-160,315,0.000,0.000)A2
LIG(-161,315,-160,315)
LIG(-169,319,-169,311)
LIG(-161,319,-169,319)
LIG(-161,311,-161,319)
LIG(-169,311,-161,311)
LIG(-168,318,-168,312)
LIG(-162,318,-168,318)
LIG(-162,312,-162,318)
LIG(-168,312,-162,312)
FSYM
SYM  #button10
BB(-169,331,-160,339)
TITLE -165 335  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-168,332,6,6,r)
VIS 1
PIN(-160,335,0.000,0.000)B2
LIG(-161,335,-160,335)
LIG(-169,339,-169,331)
LIG(-161,339,-169,339)
LIG(-161,331,-161,339)
LIG(-169,331,-161,331)
LIG(-168,338,-168,332)
LIG(-162,338,-168,338)
LIG(-162,332,-162,338)
LIG(-168,332,-162,332)
FSYM
SYM  #light3
BB(363,400,369,414)
TITLE 365 414  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(364,401,4,4,r)
VIS 1
PIN(365,415,0.000,0.000)Cout3
LIG(368,406,368,401)
LIG(368,401,367,400)
LIG(364,401,364,406)
LIG(367,411,367,408)
LIG(366,411,369,411)
LIG(366,413,368,411)
LIG(367,413,369,411)
LIG(363,408,369,408)
LIG(365,408,365,415)
LIG(363,406,363,408)
LIG(369,406,363,406)
LIG(369,408,369,406)
LIG(365,400,364,401)
LIG(367,400,365,400)
FSYM
SYM  #light4
BB(393,400,399,414)
TITLE 395 414  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(394,401,4,4,r)
VIS 1
PIN(395,415,0.000,0.000)Sum3
LIG(398,406,398,401)
LIG(398,401,397,400)
LIG(394,401,394,406)
LIG(397,411,397,408)
LIG(396,411,399,411)
LIG(396,413,398,411)
LIG(397,413,399,411)
LIG(393,408,399,408)
LIG(395,408,395,415)
LIG(393,406,393,408)
LIG(399,406,393,406)
LIG(399,408,399,406)
LIG(395,400,394,401)
LIG(397,400,395,400)
FSYM
SYM  #light5
BB(353,270,359,284)
TITLE 355 284  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(354,271,4,4,r)
VIS 1
PIN(355,285,0.000,0.000)Cout2
LIG(358,276,358,271)
LIG(358,271,357,270)
LIG(354,271,354,276)
LIG(357,281,357,278)
LIG(356,281,359,281)
LIG(356,283,358,281)
LIG(357,283,359,281)
LIG(353,278,359,278)
LIG(355,278,355,285)
LIG(353,276,353,278)
LIG(359,276,353,276)
LIG(359,278,359,276)
LIG(355,270,354,271)
LIG(357,270,355,270)
FSYM
SYM  #light6
BB(378,270,384,284)
TITLE 380 284  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(379,271,4,4,r)
VIS 1
PIN(380,285,0.000,0.000)Sum2
LIG(383,276,383,271)
LIG(383,271,382,270)
LIG(379,271,379,276)
LIG(382,281,382,278)
LIG(381,281,384,281)
LIG(381,283,383,281)
LIG(382,283,384,281)
LIG(378,278,384,278)
LIG(380,278,380,285)
LIG(378,276,378,278)
LIG(384,276,378,276)
LIG(384,278,384,276)
LIG(380,270,379,271)
LIG(382,270,380,270)
FSYM
SYM  #light8
BB(378,130,384,144)
TITLE 380 144  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(379,131,4,4,r)
VIS 1
PIN(380,145,0.000,0.000)Sum1
LIG(383,136,383,131)
LIG(383,131,382,130)
LIG(379,131,379,136)
LIG(382,141,382,138)
LIG(381,141,384,141)
LIG(381,143,383,141)
LIG(382,143,384,141)
LIG(378,138,384,138)
LIG(380,138,380,145)
LIG(378,136,378,138)
LIG(384,136,378,136)
LIG(384,138,384,136)
LIG(380,130,379,131)
LIG(382,130,380,130)
FSYM
SYM  #light7
BB(348,130,354,144)
TITLE 350 144  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(349,131,4,4,r)
VIS 1
PIN(350,145,0.000,0.000)Cout1
LIG(353,136,353,131)
LIG(353,131,352,130)
LIG(349,131,349,136)
LIG(352,141,352,138)
LIG(351,141,354,141)
LIG(351,143,353,141)
LIG(352,143,354,141)
LIG(348,138,354,138)
LIG(350,138,350,145)
LIG(348,136,348,138)
LIG(354,136,348,136)
LIG(354,138,354,136)
LIG(350,130,349,131)
LIG(352,130,350,130)
FSYM
SYM  #button12
BB(-164,201,-155,209)
TITLE -160 205  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-163,202,6,6,r)
VIS 1
PIN(-155,205,0.000,0.000)B1
LIG(-156,205,-155,205)
LIG(-164,209,-164,201)
LIG(-156,209,-164,209)
LIG(-156,201,-156,209)
LIG(-164,201,-156,201)
LIG(-163,208,-163,202)
LIG(-157,208,-163,208)
LIG(-157,202,-157,208)
LIG(-163,202,-157,202)
FSYM
SYM  #button11
BB(-164,181,-155,189)
TITLE -160 185  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-163,182,6,6,r)
VIS 1
PIN(-155,185,0.000,0.000)A1
LIG(-156,185,-155,185)
LIG(-164,189,-164,181)
LIG(-156,189,-164,189)
LIG(-156,181,-156,189)
LIG(-164,181,-156,181)
LIG(-163,188,-163,182)
LIG(-157,188,-163,188)
LIG(-157,182,-157,188)
LIG(-163,182,-157,182)
FSYM
SYM  #ALUAYoutput
BB(80,70,120,130)
TITLE 90 68  #ALUAYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(85,75,30,50,r)
VIS 5
PIN(80,110,0.000,0.000)A
PIN(80,100,0.000,0.000)S2
PIN(80,90,0.000,0.000)S1
PIN(80,80,0.000,0.000)S0
PIN(80,120,0.000,0.000)B
PIN(120,80,0.060,0.140)Y
LIG(80,110,85,110)
LIG(80,100,85,100)
LIG(80,90,85,90)
LIG(80,80,85,80)
LIG(80,120,85,120)
LIG(115,80,120,80)
LIG(85,75,85,125)
LIG(85,75,115,75)
LIG(115,75,115,125)
LIG(115,125,85,125)
VLG     module ALUAYoutput( A,S2,S1,S0,B,Y);
VLG      input A,S2,S1,S0,B;
VLG      output Y;
VLG      xnor #(16) xnor2(w6,S0,S2);
VLG      and #(16) and2(w7,B,w6);
VLG      or #(19) or3(w10,w7,w8,w9);
VLG      or #(16) or2(Y,w10,w11);
VLG      not #(10) inv(w13,B);
VLG      not #(10) inv(w14,S2);
VLG      not #(10) inv(w15,S1);
VLG      and #(16) and2(w8,w16,S0);
VLG      and #(16) and3(w16,w15,w14,w13);
VLG      and #(16) and3(w9,B,S1,w17);
VLG      not #(10) inv(w17,S0);
VLG      and #(16) and3(w11,S2,S1,B);
VLG     endmodule
FSYM
SYM  #ALUAYoutput
BB(80,205,120,265)
TITLE 90 203  #ALUAYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(85,210,30,50,r)
VIS 5
PIN(80,245,0.000,0.000)A
PIN(80,235,0.000,0.000)S2
PIN(80,225,0.000,0.000)S1
PIN(80,215,0.000,0.000)S0
PIN(80,255,0.000,0.000)B
PIN(120,215,0.060,0.140)Y
LIG(80,245,85,245)
LIG(80,235,85,235)
LIG(80,225,85,225)
LIG(80,215,85,215)
LIG(80,255,85,255)
LIG(115,215,120,215)
LIG(85,210,85,260)
LIG(85,210,115,210)
LIG(115,210,115,260)
LIG(115,260,85,260)
VLG     module ALUAYoutput( A,S2,S1,S0,B,Y);
VLG      input A,S2,S1,S0,B;
VLG      output Y;
VLG      xnor #(16) xnor2(w6,S0,S2);
VLG      and #(16) and2(w7,B,w6);
VLG      or #(19) or3(w10,w7,w8,w9);
VLG      or #(16) or2(Y,w10,w11);
VLG      not #(10) inv(w13,B);
VLG      not #(10) inv(w14,S2);
VLG      not #(10) inv(w15,S1);
VLG      and #(16) and2(w8,w16,S0);
VLG      and #(16) and3(w16,w15,w14,w13);
VLG      and #(16) and3(w9,B,S1,w17);
VLG      not #(10) inv(w17,S0);
VLG      and #(16) and3(w11,S2,S1,B);
VLG     endmodule
FSYM
SYM  #ALUAYoutput
BB(80,330,120,390)
TITLE 90 328  #ALUAYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(85,335,30,50,r)
VIS 5
PIN(80,370,0.000,0.000)A
PIN(80,360,0.000,0.000)S2
PIN(80,350,0.000,0.000)S1
PIN(80,340,0.000,0.000)S0
PIN(80,380,0.000,0.000)B
PIN(120,340,0.060,0.140)Y
LIG(80,370,85,370)
LIG(80,360,85,360)
LIG(80,350,85,350)
LIG(80,340,85,340)
LIG(80,380,85,380)
LIG(115,340,120,340)
LIG(85,335,85,385)
LIG(85,335,115,335)
LIG(115,335,115,385)
LIG(115,385,85,385)
VLG     module ALUAYoutput( A,S2,S1,S0,B,Y);
VLG      input A,S2,S1,S0,B;
VLG      output Y;
VLG      xnor #(16) xnor2(w6,S0,S2);
VLG      and #(16) and2(w7,B,w6);
VLG      or #(19) or3(w10,w7,w8,w9);
VLG      or #(16) or2(Y,w10,w11);
VLG      not #(10) inv(w13,B);
VLG      not #(10) inv(w14,S2);
VLG      not #(10) inv(w15,S1);
VLG      and #(16) and2(w8,w16,S0);
VLG      and #(16) and3(w16,w15,w14,w13);
VLG      and #(16) and3(w9,B,S1,w17);
VLG      not #(10) inv(w17,S0);
VLG      and #(16) and3(w11,S2,S1,B);
VLG     endmodule
FSYM
SYM  #ALUAYoutput
BB(80,465,120,525)
TITLE 90 463  #ALUAYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(85,470,30,50,r)
VIS 5
PIN(80,505,0.000,0.000)A
PIN(80,495,0.000,0.000)S2
PIN(80,485,0.000,0.000)S1
PIN(80,475,0.000,0.000)S0
PIN(80,515,0.000,0.000)B
PIN(120,475,0.060,0.140)Y
LIG(80,505,85,505)
LIG(80,495,85,495)
LIG(80,485,85,485)
LIG(80,475,85,475)
LIG(80,515,85,515)
LIG(115,475,120,475)
LIG(85,470,85,520)
LIG(85,470,115,470)
LIG(115,470,115,520)
LIG(115,520,85,520)
VLG     module ALUAYoutput( A,S2,S1,S0,B,Y);
VLG      input A,S2,S1,S0,B;
VLG      output Y;
VLG      xnor #(16) xnor2(w6,S0,S2);
VLG      and #(16) and2(w7,B,w6);
VLG      or #(19) or3(w10,w7,w8,w9);
VLG      or #(16) or2(Y,w10,w11);
VLG      not #(10) inv(w13,B);
VLG      not #(10) inv(w14,S2);
VLG      not #(10) inv(w15,S1);
VLG      and #(16) and2(w8,w16,S0);
VLG      and #(16) and3(w16,w15,w14,w13);
VLG      and #(16) and3(w9,B,S1,w17);
VLG      not #(10) inv(w17,S0);
VLG      and #(16) and3(w11,S2,S1,B);
VLG     endmodule
FSYM
SYM  #mux
BB(165,470,185,495)
TITLE 172 477  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(-90,125,0,0,)
VIS 3
PIN(165,475,0.000,0.000)i0
PIN(165,485,0.000,0.000)i1
PIN(175,495,0.000,0.000)sel
PIN(185,480,0.030,0.420)f
LIG(165,475,170,475)
LIG(170,470,170,475)
LIG(170,475,170,485)
LIG(165,485,170,485)
LIG(170,485,170,490)
LIG(180,475,180,480)
LIG(180,480,185,480)
LIG(180,480,180,485)
LIG(170,470,180,475)
LIG(170,490,180,485)
LIG(175,495,175,487)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(160,415,180,440)
TITLE 167 422  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 3
PIN(160,420,0.000,0.000)i0
PIN(160,430,0.000,0.000)i1
PIN(170,440,0.000,0.000)sel
PIN(180,425,0.030,0.420)f
LIG(160,420,165,420)
LIG(165,415,165,420)
LIG(165,420,165,430)
LIG(160,430,165,430)
LIG(165,430,165,435)
LIG(175,420,175,425)
LIG(175,425,180,425)
LIG(175,425,175,430)
LIG(165,415,175,420)
LIG(165,435,175,430)
LIG(170,440,170,432)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(160,340,180,365)
TITLE 167 347  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 3
PIN(160,345,0.000,0.000)i0
PIN(160,355,0.000,0.000)i1
PIN(170,365,0.000,0.000)sel
PIN(180,350,0.030,0.420)f
LIG(160,345,165,345)
LIG(165,340,165,345)
LIG(165,345,165,355)
LIG(160,355,165,355)
LIG(165,355,165,360)
LIG(175,345,175,350)
LIG(175,350,180,350)
LIG(175,350,175,355)
LIG(165,340,175,345)
LIG(165,360,175,355)
LIG(170,365,170,357)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(155,290,175,315)
TITLE 162 297  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 3
PIN(155,295,0.000,0.000)i0
PIN(155,305,0.000,0.000)i1
PIN(165,315,0.000,0.000)sel
PIN(175,300,0.030,0.420)f
LIG(155,295,160,295)
LIG(160,290,160,295)
LIG(160,295,160,305)
LIG(155,305,160,305)
LIG(160,305,160,310)
LIG(170,295,170,300)
LIG(170,300,175,300)
LIG(170,300,170,305)
LIG(160,290,170,295)
LIG(160,310,170,305)
LIG(165,315,165,307)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(155,210,175,235)
TITLE 162 217  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 3
PIN(155,215,0.000,0.000)i0
PIN(155,225,0.000,0.000)i1
PIN(165,235,0.000,0.000)sel
PIN(175,220,0.030,0.420)f
LIG(155,215,160,215)
LIG(160,210,160,215)
LIG(160,215,160,225)
LIG(155,225,160,225)
LIG(160,225,160,230)
LIG(170,215,170,220)
LIG(170,220,175,220)
LIG(170,220,170,225)
LIG(160,210,170,215)
LIG(160,230,170,225)
LIG(165,235,165,227)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(150,160,170,185)
TITLE 157 167  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 3
PIN(150,165,0.000,0.000)i0
PIN(150,175,0.000,0.000)i1
PIN(160,185,0.000,0.000)sel
PIN(170,170,0.030,0.420)f
LIG(150,165,155,165)
LIG(155,160,155,165)
LIG(155,165,155,175)
LIG(150,175,155,175)
LIG(155,175,155,180)
LIG(165,165,165,170)
LIG(165,170,170,170)
LIG(165,170,165,175)
LIG(155,160,165,165)
LIG(155,180,165,175)
LIG(160,185,160,177)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(155,75,175,100)
TITLE 162 82  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 3
PIN(155,80,0.000,0.000)i0
PIN(155,90,0.000,0.000)i1
PIN(165,100,0.000,0.000)sel
PIN(175,85,0.030,0.420)f
LIG(155,80,160,80)
LIG(160,75,160,80)
LIG(160,80,160,90)
LIG(155,90,160,90)
LIG(160,90,160,95)
LIG(170,80,170,85)
LIG(170,85,175,85)
LIG(170,85,170,90)
LIG(160,75,170,80)
LIG(160,95,170,90)
LIG(165,100,165,92)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(145,15,165,40)
TITLE 152 22  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 3
PIN(145,20,0.000,0.000)i0
PIN(145,30,0.000,0.000)i1
PIN(155,40,0.000,0.000)sel
PIN(165,25,0.030,0.420)f
LIG(145,20,150,20)
LIG(150,15,150,20)
LIG(150,20,150,30)
LIG(145,30,150,30)
LIG(150,30,150,35)
LIG(160,20,160,25)
LIG(160,25,165,25)
LIG(160,25,160,30)
LIG(150,15,160,20)
LIG(150,35,160,30)
LIG(155,40,155,32)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(130,-60,150,-35)
TITLE 137 -53  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 3
PIN(130,-55,0.000,0.000)i0
PIN(130,-45,0.000,0.000)i1
PIN(140,-35,0.000,0.000)sel
PIN(150,-50,0.030,0.140)f
LIG(130,-55,135,-55)
LIG(135,-60,135,-55)
LIG(135,-55,135,-45)
LIG(130,-45,135,-45)
LIG(135,-45,135,-40)
LIG(145,-55,145,-50)
LIG(145,-50,150,-50)
LIG(145,-50,145,-45)
LIG(135,-60,145,-55)
LIG(135,-40,145,-45)
LIG(140,-35,140,-43)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(290,85,310,110)
TITLE 303 92  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(600,0,0,0,)
VIS 3
PIN(310,90,0.000,0.000)i0
PIN(310,100,0.000,0.000)i1
PIN(300,110,0.000,0.000)sel
PIN(290,95,0.030,0.140)f
LIG(310,90,305,90)
LIG(305,85,305,90)
LIG(305,90,305,100)
LIG(310,100,305,100)
LIG(305,100,305,105)
LIG(295,90,295,95)
LIG(295,95,290,95)
LIG(295,95,295,100)
LIG(305,85,295,90)
LIG(305,105,295,100)
LIG(300,110,300,102)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(295,210,315,235)
TITLE 308 217  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(610,0,0,0,)
VIS 3
PIN(315,215,0.000,0.000)i0
PIN(315,225,0.000,0.000)i1
PIN(305,235,0.000,0.000)sel
PIN(295,220,0.030,0.140)f
LIG(315,215,310,215)
LIG(310,210,310,215)
LIG(310,215,310,225)
LIG(315,225,310,225)
LIG(310,225,310,230)
LIG(300,215,300,220)
LIG(300,220,295,220)
LIG(300,220,300,225)
LIG(310,210,300,215)
LIG(310,230,300,225)
LIG(305,235,305,227)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(285,340,305,365)
TITLE 298 347  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(600,0,0,0,)
VIS 3
PIN(305,345,0.000,0.000)i0
PIN(305,355,0.000,0.000)i1
PIN(295,365,0.000,0.000)sel
PIN(285,350,0.030,0.140)f
LIG(305,345,300,345)
LIG(300,340,300,345)
LIG(300,345,300,355)
LIG(305,355,300,355)
LIG(300,355,300,360)
LIG(290,345,290,350)
LIG(290,350,285,350)
LIG(290,350,290,355)
LIG(300,340,290,345)
LIG(300,360,290,355)
LIG(295,365,295,357)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(305,475,325,500)
TITLE 318 482  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(630,5,0,0,)
VIS 3
PIN(325,480,0.000,0.000)i0
PIN(325,490,0.000,0.000)i1
PIN(315,500,0.000,0.000)sel
PIN(305,485,0.030,0.140)f
LIG(325,480,320,480)
LIG(320,475,320,480)
LIG(320,480,320,490)
LIG(325,490,320,490)
LIG(320,490,320,495)
LIG(310,480,310,485)
LIG(310,485,305,485)
LIG(310,485,310,490)
LIG(320,475,310,480)
LIG(320,495,310,490)
LIG(315,500,315,492)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #ALULXoutput
BB(-5,550,35,610)
TITLE 5 548  #ALULXoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,555,30,50,r)
VIS 5
PIN(-5,590,0.000,0.000)A
PIN(-5,600,0.000,0.000)B
PIN(-5,580,0.000,0.000)S2
PIN(-5,570,0.000,0.000)S1
PIN(-5,560,0.000,0.000)S0
PIN(35,560,0.060,0.140)XLout
LIG(-5,590,0,590)
LIG(-5,600,0,600)
LIG(-5,580,0,580)
LIG(-5,570,0,570)
LIG(-5,560,0,560)
LIG(30,560,35,560)
LIG(0,555,0,605)
LIG(0,555,30,555)
LIG(30,555,30,605)
LIG(30,605,0,605)
VLG     module ALULXoutput( A,B,S2,S1,S0,XLout);
VLG      input A,B,S2,S1,S0;
VLG      output XLout;
VLG      not #(10) inv(w6,B);
VLG      not #(10) inv(w7,A);
VLG      not #(17) inv(w8,S2);
VLG      not #(17) inv(w9,S1);
VLG      and #(16) and3(w11,w10,w9,w8);
VLG      and #(16) and3(w12,w7,S2,w9);
VLG      or #(16) or2(w13,S1,w8);
VLG      and #(16) and2(w14,A,w13);
VLG      and #(16) and3(w15,w6,S2,S0);
VLG      and #(16) and3(w16,B,S2,S1);
VLG      xnor #(16) xnor2(w10,S0,B);
VLG      or #(19) or3(w17,w12,w14,w15);
VLG      or #(16) or2(w18,w16,w11);
VLG      or #(16) or2(XLout,w17,w18);
VLG     endmodule
FSYM
SYM  #ALULYoutput
BB(-5,635,35,695)
TITLE 5 633  #ALULYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,640,30,50,r)
VIS 5
PIN(-5,675,0.000,0.000)A
PIN(-5,685,0.000,0.000)B
PIN(-5,665,0.000,0.000)S2
PIN(-5,655,0.000,0.000)S1
PIN(-5,645,0.000,0.000)S0
PIN(35,645,0.060,0.140)YLout
LIG(-5,675,0,675)
LIG(-5,685,0,685)
LIG(-5,665,0,665)
LIG(-5,655,0,655)
LIG(-5,645,0,645)
LIG(30,645,35,645)
LIG(0,640,0,690)
LIG(0,640,30,640)
LIG(30,640,30,690)
LIG(30,690,0,690)
VLG     module ALULYoutput( A,B,S2,S1,S0,YLout);
VLG      input A,B,S2,S1,S0;
VLG      output YLout;
VLG      not #(3) inv(w6,A);
VLG      not #(10) inv(w7,S2);
VLG      not #(10) inv(w8,B);
VLG      not #(10) inv(w9,S1);
VLG      not #(10) inv(w10,S0);
VLG      and #(16) and2(w11,S1,B);
VLG      and #(16) and3(w12,w8,w7,w9);
VLG      and #(16) and2(w13,S2,B);
VLG      or #(16) or2(w14,w12,w13);
VLG      and #(16) and2(w15,w10,w14);
VLG      or #(16) or2(YLout,w11,w15);
VLG     endmodule
FSYM
SYM  #ALULXoutput
BB(-5,720,35,780)
TITLE 5 718  #ALULXoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,725,30,50,r)
VIS 5
PIN(-5,760,0.000,0.000)A
PIN(-5,770,0.000,0.000)B
PIN(-5,750,0.000,0.000)S2
PIN(-5,740,0.000,0.000)S1
PIN(-5,730,0.000,0.000)S0
PIN(35,730,0.060,0.140)XLout
LIG(-5,760,0,760)
LIG(-5,770,0,770)
LIG(-5,750,0,750)
LIG(-5,740,0,740)
LIG(-5,730,0,730)
LIG(30,730,35,730)
LIG(0,725,0,775)
LIG(0,725,30,725)
LIG(30,725,30,775)
LIG(30,775,0,775)
VLG     module ALULXoutput( A,B,S2,S1,S0,XLout);
VLG      input A,B,S2,S1,S0;
VLG      output XLout;
VLG      not #(10) inv(w6,B);
VLG      not #(10) inv(w7,A);
VLG      not #(17) inv(w8,S2);
VLG      not #(17) inv(w9,S1);
VLG      and #(16) and3(w11,w10,w9,w8);
VLG      and #(16) and3(w12,w7,S2,w9);
VLG      or #(16) or2(w13,S1,w8);
VLG      and #(16) and2(w14,A,w13);
VLG      and #(16) and3(w15,w6,S2,S0);
VLG      and #(16) and3(w16,B,S2,S1);
VLG      xnor #(16) xnor2(w10,S0,B);
VLG      or #(19) or3(w17,w12,w14,w15);
VLG      or #(16) or2(w18,w16,w11);
VLG      or #(16) or2(XLout,w17,w18);
VLG     endmodule
FSYM
SYM  #ALULYoutput
BB(-5,805,35,865)
TITLE 5 803  #ALULYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,810,30,50,r)
VIS 5
PIN(-5,845,0.000,0.000)A
PIN(-5,855,0.000,0.000)B
PIN(-5,835,0.000,0.000)S2
PIN(-5,825,0.000,0.000)S1
PIN(-5,815,0.000,0.000)S0
PIN(35,815,0.060,0.140)YLout
LIG(-5,845,0,845)
LIG(-5,855,0,855)
LIG(-5,835,0,835)
LIG(-5,825,0,825)
LIG(-5,815,0,815)
LIG(30,815,35,815)
LIG(0,810,0,860)
LIG(0,810,30,810)
LIG(30,810,30,860)
LIG(30,860,0,860)
VLG     module ALULYoutput( A,B,S2,S1,S0,YLout);
VLG      input A,B,S2,S1,S0;
VLG      output YLout;
VLG      not #(3) inv(w6,A);
VLG      not #(10) inv(w7,S2);
VLG      not #(10) inv(w8,B);
VLG      not #(10) inv(w9,S1);
VLG      not #(10) inv(w10,S0);
VLG      and #(16) and2(w11,S1,B);
VLG      and #(16) and3(w12,w8,w7,w9);
VLG      and #(16) and2(w13,S2,B);
VLG      or #(16) or2(w14,w12,w13);
VLG      and #(16) and2(w15,w10,w14);
VLG      or #(16) or2(YLout,w11,w15);
VLG     endmodule
FSYM
SYM  #ALULXoutput
BB(-5,885,35,945)
TITLE 5 883  #ALULXoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,890,30,50,r)
VIS 5
PIN(-5,925,0.000,0.000)A
PIN(-5,935,0.000,0.000)B
PIN(-5,915,0.000,0.000)S2
PIN(-5,905,0.000,0.000)S1
PIN(-5,895,0.000,0.000)S0
PIN(35,895,0.060,0.140)XLout
LIG(-5,925,0,925)
LIG(-5,935,0,935)
LIG(-5,915,0,915)
LIG(-5,905,0,905)
LIG(-5,895,0,895)
LIG(30,895,35,895)
LIG(0,890,0,940)
LIG(0,890,30,890)
LIG(30,890,30,940)
LIG(30,940,0,940)
VLG     module ALULXoutput( A,B,S2,S1,S0,XLout);
VLG      input A,B,S2,S1,S0;
VLG      output XLout;
VLG      not #(10) inv(w6,B);
VLG      not #(10) inv(w7,A);
VLG      not #(17) inv(w8,S2);
VLG      not #(17) inv(w9,S1);
VLG      and #(16) and3(w11,w10,w9,w8);
VLG      and #(16) and3(w12,w7,S2,w9);
VLG      or #(16) or2(w13,S1,w8);
VLG      and #(16) and2(w14,A,w13);
VLG      and #(16) and3(w15,w6,S2,S0);
VLG      and #(16) and3(w16,B,S2,S1);
VLG      xnor #(16) xnor2(w10,S0,B);
VLG      or #(19) or3(w17,w12,w14,w15);
VLG      or #(16) or2(w18,w16,w11);
VLG      or #(16) or2(XLout,w17,w18);
VLG     endmodule
FSYM
SYM  #ALULYoutput
BB(-5,965,35,1025)
TITLE 5 963  #ALULYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,970,30,50,r)
VIS 5
PIN(-5,1005,0.000,0.000)A
PIN(-5,1015,0.000,0.000)B
PIN(-5,995,0.000,0.000)S2
PIN(-5,985,0.000,0.000)S1
PIN(-5,975,0.000,0.000)S0
PIN(35,975,0.060,0.140)YLout
LIG(-5,1005,0,1005)
LIG(-5,1015,0,1015)
LIG(-5,995,0,995)
LIG(-5,985,0,985)
LIG(-5,975,0,975)
LIG(30,975,35,975)
LIG(0,970,0,1020)
LIG(0,970,30,970)
LIG(30,970,30,1020)
LIG(30,1020,0,1020)
VLG     module ALULYoutput( A,B,S2,S1,S0,YLout);
VLG      input A,B,S2,S1,S0;
VLG      output YLout;
VLG      not #(3) inv(w6,A);
VLG      not #(10) inv(w7,S2);
VLG      not #(10) inv(w8,B);
VLG      not #(10) inv(w9,S1);
VLG      not #(10) inv(w10,S0);
VLG      and #(16) and2(w11,S1,B);
VLG      and #(16) and3(w12,w8,w7,w9);
VLG      and #(16) and2(w13,S2,B);
VLG      or #(16) or2(w14,w12,w13);
VLG      and #(16) and2(w15,w10,w14);
VLG      or #(16) or2(YLout,w11,w15);
VLG     endmodule
FSYM
SYM  #ALULXoutput
BB(-5,1045,35,1105)
TITLE 5 1043  #ALULXoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,1050,30,50,r)
VIS 5
PIN(-5,1085,0.000,0.000)A
PIN(-5,1095,0.000,0.000)B
PIN(-5,1075,0.000,0.000)S2
PIN(-5,1065,0.000,0.000)S1
PIN(-5,1055,0.000,0.000)S0
PIN(35,1055,0.060,0.140)XLout
LIG(-5,1085,0,1085)
LIG(-5,1095,0,1095)
LIG(-5,1075,0,1075)
LIG(-5,1065,0,1065)
LIG(-5,1055,0,1055)
LIG(30,1055,35,1055)
LIG(0,1050,0,1100)
LIG(0,1050,30,1050)
LIG(30,1050,30,1100)
LIG(30,1100,0,1100)
VLG     module ALULXoutput( A,B,S2,S1,S0,XLout);
VLG      input A,B,S2,S1,S0;
VLG      output XLout;
VLG      not #(10) inv(w6,B);
VLG      not #(10) inv(w7,A);
VLG      not #(17) inv(w8,S2);
VLG      not #(17) inv(w9,S1);
VLG      and #(16) and3(w11,w10,w9,w8);
VLG      and #(16) and3(w12,w7,S2,w9);
VLG      or #(16) or2(w13,S1,w8);
VLG      and #(16) and2(w14,A,w13);
VLG      and #(16) and3(w15,w6,S2,S0);
VLG      and #(16) and3(w16,B,S2,S1);
VLG      xnor #(16) xnor2(w10,S0,B);
VLG      or #(19) or3(w17,w12,w14,w15);
VLG      or #(16) or2(w18,w16,w11);
VLG      or #(16) or2(XLout,w17,w18);
VLG     endmodule
FSYM
SYM  #ALULYoutput
BB(-5,1125,35,1185)
TITLE 5 1123  #ALULYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(0,1130,30,50,r)
VIS 5
PIN(-5,1165,0.000,0.000)A
PIN(-5,1175,0.000,0.000)B
PIN(-5,1155,0.000,0.000)S2
PIN(-5,1145,0.000,0.000)S1
PIN(-5,1135,0.000,0.000)S0
PIN(35,1135,0.060,0.140)YLout
LIG(-5,1165,0,1165)
LIG(-5,1175,0,1175)
LIG(-5,1155,0,1155)
LIG(-5,1145,0,1145)
LIG(-5,1135,0,1135)
LIG(30,1135,35,1135)
LIG(0,1130,0,1180)
LIG(0,1130,30,1130)
LIG(30,1130,30,1180)
LIG(30,1180,0,1180)
VLG     module ALULYoutput( A,B,S2,S1,S0,YLout);
VLG      input A,B,S2,S1,S0;
VLG      output YLout;
VLG      not #(3) inv(w6,A);
VLG      not #(10) inv(w7,S2);
VLG      not #(10) inv(w8,B);
VLG      not #(10) inv(w9,S1);
VLG      not #(10) inv(w10,S0);
VLG      and #(16) and2(w11,S1,B);
VLG      and #(16) and3(w12,w8,w7,w9);
VLG      and #(16) and2(w13,S2,B);
VLG      or #(16) or2(w14,w12,w13);
VLG      and #(16) and2(w15,w10,w14);
VLG      or #(16) or2(YLout,w11,w15);
VLG     endmodule
FSYM
SYM  #ALUAYoutput
BB(80,1125,120,1185)
TITLE 90 1123  #ALUAYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(85,1130,30,50,r)
VIS 5
PIN(80,1165,0.000,0.000)A
PIN(80,1155,0.000,0.000)S2
PIN(80,1145,0.000,0.000)S1
PIN(80,1135,0.000,0.000)S0
PIN(80,1175,0.000,0.000)B
PIN(120,1135,0.060,0.140)Y
LIG(80,1165,85,1165)
LIG(80,1155,85,1155)
LIG(80,1145,85,1145)
LIG(80,1135,85,1135)
LIG(80,1175,85,1175)
LIG(115,1135,120,1135)
LIG(85,1130,85,1180)
LIG(85,1130,115,1130)
LIG(115,1130,115,1180)
LIG(115,1180,85,1180)
VLG     module ALUAYoutput( A,S2,S1,S0,B,Y);
VLG      input A,S2,S1,S0,B;
VLG      output Y;
VLG      xnor #(16) xnor2(w6,S0,S2);
VLG      and #(16) and2(w7,B,w6);
VLG      or #(19) or3(w10,w7,w8,w9);
VLG      or #(16) or2(Y,w10,w11);
VLG      not #(10) inv(w13,B);
VLG      not #(10) inv(w14,S2);
VLG      not #(10) inv(w15,S1);
VLG      and #(16) and2(w8,w16,S0);
VLG      and #(16) and3(w16,w15,w14,w13);
VLG      and #(16) and3(w9,B,S1,w17);
VLG      not #(10) inv(w17,S0);
VLG      and #(16) and3(w11,S2,S1,B);
VLG     endmodule
FSYM
SYM  #ALUAYoutput
BB(80,965,120,1025)
TITLE 90 963  #ALUAYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(85,970,30,50,r)
VIS 5
PIN(80,1005,0.000,0.000)A
PIN(80,995,0.000,0.000)S2
PIN(80,985,0.000,0.000)S1
PIN(80,975,0.000,0.000)S0
PIN(80,1015,0.000,0.000)B
PIN(120,975,0.060,0.140)Y
LIG(80,1005,85,1005)
LIG(80,995,85,995)
LIG(80,985,85,985)
LIG(80,975,85,975)
LIG(80,1015,85,1015)
LIG(115,975,120,975)
LIG(85,970,85,1020)
LIG(85,970,115,970)
LIG(115,970,115,1020)
LIG(115,1020,85,1020)
VLG     module ALUAYoutput( A,S2,S1,S0,B,Y);
VLG      input A,S2,S1,S0,B;
VLG      output Y;
VLG      xnor #(16) xnor2(w6,S0,S2);
VLG      and #(16) and2(w7,B,w6);
VLG      or #(19) or3(w10,w7,w8,w9);
VLG      or #(16) or2(Y,w10,w11);
VLG      not #(10) inv(w13,B);
VLG      not #(10) inv(w14,S2);
VLG      not #(10) inv(w15,S1);
VLG      and #(16) and2(w8,w16,S0);
VLG      and #(16) and3(w16,w15,w14,w13);
VLG      and #(16) and3(w9,B,S1,w17);
VLG      not #(10) inv(w17,S0);
VLG      and #(16) and3(w11,S2,S1,B);
VLG     endmodule
FSYM
SYM  #ALUAYoutput
BB(75,805,115,865)
TITLE 85 803  #ALUAYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(80,810,30,50,r)
VIS 5
PIN(75,845,0.000,0.000)A
PIN(75,835,0.000,0.000)S2
PIN(75,825,0.000,0.000)S1
PIN(75,815,0.000,0.000)S0
PIN(75,855,0.000,0.000)B
PIN(115,815,0.060,0.140)Y
LIG(75,845,80,845)
LIG(75,835,80,835)
LIG(75,825,80,825)
LIG(75,815,80,815)
LIG(75,855,80,855)
LIG(110,815,115,815)
LIG(80,810,80,860)
LIG(80,810,110,810)
LIG(110,810,110,860)
LIG(110,860,80,860)
VLG     module ALUAYoutput( A,S2,S1,S0,B,Y);
VLG      input A,S2,S1,S0,B;
VLG      output Y;
VLG      xnor #(16) xnor2(w6,S0,S2);
VLG      and #(16) and2(w7,B,w6);
VLG      or #(19) or3(w10,w7,w8,w9);
VLG      or #(16) or2(Y,w10,w11);
VLG      not #(10) inv(w13,B);
VLG      not #(10) inv(w14,S2);
VLG      not #(10) inv(w15,S1);
VLG      and #(16) and2(w8,w16,S0);
VLG      and #(16) and3(w16,w15,w14,w13);
VLG      and #(16) and3(w9,B,S1,w17);
VLG      not #(10) inv(w17,S0);
VLG      and #(16) and3(w11,S2,S1,B);
VLG     endmodule
FSYM
SYM  #ALUAYoutput
BB(75,635,115,695)
TITLE 85 633  #ALUAYoutput
MODEL 6000
PROP                                                                                                                                                                                                            
REC(80,640,30,50,r)
VIS 5
PIN(75,675,0.000,0.000)A
PIN(75,665,0.000,0.000)S2
PIN(75,655,0.000,0.000)S1
PIN(75,645,0.000,0.000)S0
PIN(75,685,0.000,0.000)B
PIN(115,645,0.060,0.140)Y
LIG(75,675,80,675)
LIG(75,665,80,665)
LIG(75,655,80,655)
LIG(75,645,80,645)
LIG(75,685,80,685)
LIG(110,645,115,645)
LIG(80,640,80,690)
LIG(80,640,110,640)
LIG(110,640,110,690)
LIG(110,690,80,690)
VLG     module ALUAYoutput( A,S2,S1,S0,B,Y);
VLG      input A,S2,S1,S0,B;
VLG      output Y;
VLG      xnor #(16) xnor2(w6,S0,S2);
VLG      and #(16) and2(w7,B,w6);
VLG      or #(19) or3(w10,w7,w8,w9);
VLG      or #(16) or2(Y,w10,w11);
VLG      not #(10) inv(w13,B);
VLG      not #(10) inv(w14,S2);
VLG      not #(10) inv(w15,S1);
VLG      and #(16) and2(w8,w16,S0);
VLG      and #(16) and3(w16,w15,w14,w13);
VLG      and #(16) and3(w9,B,S1,w17);
VLG      not #(10) inv(w17,S0);
VLG      and #(16) and3(w11,S2,S1,B);
VLG     endmodule
FSYM
SYM  #button14
BB(-169,596,-160,604)
TITLE -165 600  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-168,597,6,6,r)
VIS 1
PIN(-160,600,0.000,0.000)A4
LIG(-161,600,-160,600)
LIG(-169,604,-169,596)
LIG(-161,604,-169,604)
LIG(-161,596,-161,604)
LIG(-169,596,-161,596)
LIG(-168,603,-168,597)
LIG(-162,603,-168,603)
LIG(-162,597,-162,603)
LIG(-168,597,-162,597)
FSYM
SYM  #button15
BB(-169,616,-160,624)
TITLE -165 620  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-168,617,6,6,r)
VIS 1
PIN(-160,620,0.000,0.000)B4
LIG(-161,620,-160,620)
LIG(-169,624,-169,616)
LIG(-161,624,-169,624)
LIG(-161,616,-161,624)
LIG(-169,616,-161,616)
LIG(-168,623,-168,617)
LIG(-162,623,-168,623)
LIG(-162,617,-162,623)
LIG(-168,617,-162,617)
FSYM
SYM  #button16
BB(-164,766,-155,774)
TITLE -160 770  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-163,767,6,6,r)
VIS 1
PIN(-155,770,0.000,0.000)A5
LIG(-156,770,-155,770)
LIG(-164,774,-164,766)
LIG(-156,774,-164,774)
LIG(-156,766,-156,774)
LIG(-164,766,-156,766)
LIG(-163,773,-163,767)
LIG(-157,773,-163,773)
LIG(-157,767,-157,773)
LIG(-163,767,-157,767)
FSYM
SYM  #button17
BB(-164,786,-155,794)
TITLE -160 790  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-163,787,6,6,r)
VIS 1
PIN(-155,790,0.000,0.000)B5
LIG(-156,790,-155,790)
LIG(-164,794,-164,786)
LIG(-156,794,-164,794)
LIG(-156,786,-156,794)
LIG(-164,786,-156,786)
LIG(-163,793,-163,787)
LIG(-157,793,-163,793)
LIG(-157,787,-157,793)
LIG(-163,787,-157,787)
FSYM
SYM  #button18
BB(-159,941,-150,949)
TITLE -155 945  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-158,942,6,6,r)
VIS 1
PIN(-150,945,0.000,0.000)A6
LIG(-151,945,-150,945)
LIG(-159,949,-159,941)
LIG(-151,949,-159,949)
LIG(-151,941,-151,949)
LIG(-159,941,-151,941)
LIG(-158,948,-158,942)
LIG(-152,948,-158,948)
LIG(-152,942,-152,948)
LIG(-158,942,-152,942)
FSYM
SYM  #button19
BB(-159,966,-150,974)
TITLE -155 970  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-158,967,6,6,r)
VIS 1
PIN(-150,970,0.000,0.000)B6
LIG(-151,970,-150,970)
LIG(-159,974,-159,966)
LIG(-151,974,-159,974)
LIG(-151,966,-151,974)
LIG(-159,966,-151,966)
LIG(-158,973,-158,967)
LIG(-152,973,-158,973)
LIG(-152,967,-152,973)
LIG(-158,967,-152,967)
FSYM
SYM  #button20
BB(-154,1096,-145,1104)
TITLE -150 1100  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-153,1097,6,6,r)
VIS 1
PIN(-145,1100,0.000,0.000)A7
LIG(-146,1100,-145,1100)
LIG(-154,1104,-154,1096)
LIG(-146,1104,-154,1104)
LIG(-146,1096,-146,1104)
LIG(-154,1096,-146,1096)
LIG(-153,1103,-153,1097)
LIG(-147,1103,-153,1103)
LIG(-147,1097,-147,1103)
LIG(-153,1097,-147,1097)
FSYM
SYM  #button21
BB(-154,1116,-145,1124)
TITLE -150 1120  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-153,1117,6,6,r)
VIS 1
PIN(-145,1120,0.000,0.000)B7
LIG(-146,1120,-145,1120)
LIG(-154,1124,-154,1116)
LIG(-146,1124,-154,1124)
LIG(-146,1116,-146,1124)
LIG(-154,1116,-146,1116)
LIG(-153,1123,-153,1117)
LIG(-147,1123,-153,1123)
LIG(-147,1117,-147,1123)
LIG(-153,1117,-147,1117)
FSYM
SYM  #sym17
BB(290,575,330,615)
TITLE 300 573  #FA
MODEL 6000
PROP                                                                                                                                                                                                            
REC(295,580,30,30,r)
VIS 5
PIN(290,585,0.000,0.000)A
PIN(290,595,0.000,0.000)B
PIN(290,605,0.000,0.000)Cin
PIN(330,595,0.060,0.140)S
PIN(330,585,0.060,0.210)Cout
LIG(290,585,295,585)
LIG(290,595,295,595)
LIG(290,605,295,605)
LIG(325,595,330,595)
LIG(325,585,330,585)
LIG(295,580,295,610)
LIG(295,580,325,580)
LIG(325,580,325,610)
LIG(325,610,295,610)
VLG     module sym17( A,B,Cin,S,Cout);
VLG      input A,B,Cin;
VLG      output S,Cout;
VLG      xor #(23) xor2(w3,A,B);
VLG      xor #(16) xor2(S,w3,Cin);
VLG      and #(16) and2(w6,w3,Cin);
VLG      and #(16) and2(w7,B,A);
VLG      or #(16) or2(Cout,w6,w7);
VLG     endmodule
FSYM
SYM  #sym17
BB(295,730,335,770)
TITLE 305 728  #FA
MODEL 6000
PROP                                                                                                                                                                                                            
REC(300,735,30,30,r)
VIS 5
PIN(295,740,0.000,0.000)A
PIN(295,750,0.000,0.000)B
PIN(295,760,0.000,0.000)Cin
PIN(335,750,0.060,0.140)S
PIN(335,740,0.060,0.210)Cout
LIG(295,740,300,740)
LIG(295,750,300,750)
LIG(295,760,300,760)
LIG(330,750,335,750)
LIG(330,740,335,740)
LIG(300,735,300,765)
LIG(300,735,330,735)
LIG(330,735,330,765)
LIG(330,765,300,765)
VLG     module sym17( A,B,Cin,S,Cout);
VLG      input A,B,Cin;
VLG      output S,Cout;
VLG      xor #(23) xor2(w3,A,B);
VLG      xor #(16) xor2(S,w3,Cin);
VLG      and #(16) and2(w6,w3,Cin);
VLG      and #(16) and2(w7,B,A);
VLG      or #(16) or2(Cout,w6,w7);
VLG     endmodule
FSYM
SYM  #sym17
BB(300,890,340,930)
TITLE 310 888  #FA
MODEL 6000
PROP                                                                                                                                                                                                            
REC(305,895,30,30,r)
VIS 5
PIN(300,900,0.000,0.000)A
PIN(300,910,0.000,0.000)B
PIN(300,920,0.000,0.000)Cin
PIN(340,910,0.060,0.140)S
PIN(340,900,0.060,0.210)Cout
LIG(300,900,305,900)
LIG(300,910,305,910)
LIG(300,920,305,920)
LIG(335,910,340,910)
LIG(335,900,340,900)
LIG(305,895,305,925)
LIG(305,895,335,895)
LIG(335,895,335,925)
LIG(335,925,305,925)
VLG     module sym17( A,B,Cin,S,Cout);
VLG      input A,B,Cin;
VLG      output S,Cout;
VLG      xor #(23) xor2(w3,A,B);
VLG      xor #(16) xor2(S,w3,Cin);
VLG      and #(16) and2(w6,w3,Cin);
VLG      and #(16) and2(w7,B,A);
VLG      or #(16) or2(Cout,w6,w7);
VLG     endmodule
FSYM
SYM  #sym17
BB(305,1060,345,1100)
TITLE 315 1058  #FA
MODEL 6000
PROP                                                                                                                                                                                                            
REC(310,1065,30,30,r)
VIS 5
PIN(305,1070,0.000,0.000)A
PIN(305,1080,0.000,0.000)B
PIN(305,1090,0.000,0.000)Cin
PIN(345,1080,0.060,0.140)S
PIN(345,1070,0.060,0.140)Cout
LIG(305,1070,310,1070)
LIG(305,1080,310,1080)
LIG(305,1090,310,1090)
LIG(340,1080,345,1080)
LIG(340,1070,345,1070)
LIG(310,1065,310,1095)
LIG(310,1065,340,1065)
LIG(340,1065,340,1095)
LIG(340,1095,310,1095)
VLG     module sym17( A,B,Cin,S,Cout);
VLG      input A,B,Cin;
VLG      output S,Cout;
VLG      xor #(23) xor2(w3,A,B);
VLG      xor #(16) xor2(S,w3,Cin);
VLG      and #(16) and2(w6,w3,Cin);
VLG      and #(16) and2(w7,B,A);
VLG      or #(16) or2(Cout,w6,w7);
VLG     endmodule
FSYM
SYM  #mux
BB(165,565,185,590)
TITLE 172 572  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0, )
VIS 3
PIN(165,570,0.000,0.000)i0
PIN(165,580,0.000,0.000)i1
PIN(175,590,0.000,0.000)sel
PIN(185,575,0.030,0.140)f
LIG(165,570,170,570)
LIG(170,565,170,570)
LIG(170,570,170,580)
LIG(165,580,170,580)
LIG(170,580,170,585)
LIG(180,570,180,575)
LIG(180,575,185,575)
LIG(180,575,180,580)
LIG(170,565,180,570)
LIG(170,585,180,580)
LIG(175,590,175,582)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(165,635,185,660)
TITLE 172 642  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(-5,5,0,0, )
VIS 3
PIN(165,640,0.000,0.000)i0
PIN(165,650,0.000,0.000)i1
PIN(175,660,0.000,0.000)sel
PIN(185,645,0.030,0.140)f
LIG(165,640,170,640)
LIG(170,635,170,640)
LIG(170,640,170,650)
LIG(165,650,170,650)
LIG(170,650,170,655)
LIG(180,640,180,645)
LIG(180,645,185,645)
LIG(180,645,180,650)
LIG(170,635,180,640)
LIG(170,655,180,650)
LIG(175,660,175,652)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(300,655,320,680)
TITLE 313 662  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(630,0,0,0, )
VIS 3
PIN(320,660,0.000,0.000)i0
PIN(320,670,0.000,0.000)i1
PIN(310,680,0.000,0.000)sel
PIN(300,665,0.030,0.140)f
LIG(320,660,315,660)
LIG(315,655,315,660)
LIG(315,660,315,670)
LIG(320,670,315,670)
LIG(315,670,315,675)
LIG(305,660,305,665)
LIG(305,665,300,665)
LIG(305,665,305,670)
LIG(315,655,305,660)
LIG(315,675,305,670)
LIG(310,680,310,672)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(160,740,180,765)
TITLE 167 747  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0, )
VIS 3
PIN(160,745,0.000,0.000)i0
PIN(160,755,0.000,0.000)i1
PIN(170,765,0.000,0.000)sel
PIN(180,750,0.030,0.140)f
LIG(160,745,165,745)
LIG(165,740,165,745)
LIG(165,745,165,755)
LIG(160,755,165,755)
LIG(165,755,165,760)
LIG(175,745,175,750)
LIG(175,750,180,750)
LIG(175,750,175,755)
LIG(165,740,175,745)
LIG(165,760,175,755)
LIG(170,765,170,757)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(165,815,185,840)
TITLE 172 822  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0, )
VIS 3
PIN(165,820,0.000,0.000)i0
PIN(165,830,0.000,0.000)i1
PIN(175,840,0.000,0.000)sel
PIN(185,825,0.030,0.140)f
LIG(165,820,170,820)
LIG(170,815,170,820)
LIG(170,820,170,830)
LIG(165,830,170,830)
LIG(170,830,170,835)
LIG(180,820,180,825)
LIG(180,825,185,825)
LIG(180,825,180,830)
LIG(170,815,180,820)
LIG(170,835,180,830)
LIG(175,840,175,832)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(305,820,325,845)
TITLE 318 827  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(630,0,0,0, )
VIS 3
PIN(325,825,0.000,0.000)i0
PIN(325,835,0.000,0.000)i1
PIN(315,845,0.000,0.000)sel
PIN(305,830,0.030,0.140)f
LIG(325,825,320,825)
LIG(320,820,320,825)
LIG(320,825,320,835)
LIG(325,835,320,835)
LIG(320,835,320,840)
LIG(310,825,310,830)
LIG(310,830,305,830)
LIG(310,830,310,835)
LIG(320,820,310,825)
LIG(320,840,310,835)
LIG(315,845,315,837)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(170,905,190,930)
TITLE 177 912  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0, )
VIS 3
PIN(170,910,0.000,0.000)i0
PIN(170,920,0.000,0.000)i1
PIN(180,930,0.000,0.000)sel
PIN(190,915,0.030,0.140)f
LIG(170,910,175,910)
LIG(175,905,175,910)
LIG(175,910,175,920)
LIG(170,920,175,920)
LIG(175,920,175,925)
LIG(185,910,185,915)
LIG(185,915,190,915)
LIG(185,915,185,920)
LIG(175,905,185,910)
LIG(175,925,185,920)
LIG(180,930,180,922)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(170,980,190,1005)
TITLE 177 987  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0, )
VIS 3
PIN(170,985,0.000,0.000)i0
PIN(170,995,0.000,0.000)i1
PIN(180,1005,0.000,0.000)sel
PIN(190,990,0.030,0.140)f
LIG(170,985,175,985)
LIG(175,980,175,985)
LIG(175,985,175,995)
LIG(170,995,175,995)
LIG(175,995,175,1000)
LIG(185,985,185,990)
LIG(185,990,190,990)
LIG(185,990,185,995)
LIG(175,980,185,985)
LIG(175,1000,185,995)
LIG(180,1005,180,997)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(315,980,335,1005)
TITLE 328 987  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(650,0,0,0, )
VIS 3
PIN(335,985,0.000,0.000)i0
PIN(335,995,0.000,0.000)i1
PIN(325,1005,0.000,0.000)sel
PIN(315,990,0.030,0.140)f
LIG(335,985,330,985)
LIG(330,980,330,985)
LIG(330,985,330,995)
LIG(335,995,330,995)
LIG(330,995,330,1000)
LIG(320,985,320,990)
LIG(320,990,315,990)
LIG(320,990,320,995)
LIG(330,980,320,985)
LIG(330,1000,320,995)
LIG(325,1005,325,997)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(175,1065,195,1090)
TITLE 182 1072  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0, )
VIS 3
PIN(175,1070,0.000,0.000)i0
PIN(175,1080,0.000,0.000)i1
PIN(185,1090,0.000,0.000)sel
PIN(195,1075,0.030,0.140)f
LIG(175,1070,180,1070)
LIG(180,1065,180,1070)
LIG(180,1070,180,1080)
LIG(175,1080,180,1080)
LIG(180,1080,180,1085)
LIG(190,1070,190,1075)
LIG(190,1075,195,1075)
LIG(190,1075,190,1080)
LIG(180,1065,190,1070)
LIG(180,1085,190,1080)
LIG(185,1090,185,1082)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(175,1130,195,1155)
TITLE 182 1137  #mux
MODEL 143
PROP                                                                                                                                                                                                            
REC(0,0,0,0, )
VIS 3
PIN(175,1135,0.000,0.000)i0
PIN(175,1145,0.000,0.000)i1
PIN(185,1155,0.000,0.000)sel
PIN(195,1140,0.030,0.140)f
LIG(175,1135,180,1135)
LIG(180,1130,180,1135)
LIG(180,1135,180,1145)
LIG(175,1145,180,1145)
LIG(180,1145,180,1150)
LIG(190,1135,190,1140)
LIG(190,1140,195,1140)
LIG(190,1140,190,1145)
LIG(180,1130,190,1135)
LIG(180,1150,190,1145)
LIG(185,1155,185,1147)
VLG     mux mux1(f,i0,i1,sel);
FSYM
SYM  #light9
BB(358,570,364,584)
TITLE 360 584  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(359,571,4,4,r)
VIS 1
PIN(360,585,0.000,0.000)Cout4
LIG(363,576,363,571)
LIG(363,571,362,570)
LIG(359,571,359,576)
LIG(362,581,362,578)
LIG(361,581,364,581)
LIG(361,583,363,581)
LIG(362,583,364,581)
LIG(358,578,364,578)
LIG(360,578,360,585)
LIG(358,576,358,578)
LIG(364,576,358,576)
LIG(364,578,364,576)
LIG(360,570,359,571)
LIG(362,570,360,570)
FSYM
SYM  #light10
BB(383,570,389,584)
TITLE 385 584  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(384,571,4,4,r)
VIS 1
PIN(385,585,0.000,0.000)Sum4
LIG(388,576,388,571)
LIG(388,571,387,570)
LIG(384,571,384,576)
LIG(387,581,387,578)
LIG(386,581,389,581)
LIG(386,583,388,581)
LIG(387,583,389,581)
LIG(383,578,389,578)
LIG(385,578,385,585)
LIG(383,576,383,578)
LIG(389,576,383,576)
LIG(389,578,389,576)
LIG(385,570,384,571)
LIG(387,570,385,570)
FSYM
SYM  #light11
BB(368,725,374,739)
TITLE 370 739  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(369,726,4,4,r)
VIS 1
PIN(370,740,0.000,0.000)Cout5
LIG(373,731,373,726)
LIG(373,726,372,725)
LIG(369,726,369,731)
LIG(372,736,372,733)
LIG(371,736,374,736)
LIG(371,738,373,736)
LIG(372,738,374,736)
LIG(368,733,374,733)
LIG(370,733,370,740)
LIG(368,731,368,733)
LIG(374,731,368,731)
LIG(374,733,374,731)
LIG(370,725,369,726)
LIG(372,725,370,725)
FSYM
SYM  #light12
BB(393,725,399,739)
TITLE 395 739  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(394,726,4,4,r)
VIS 1
PIN(395,740,0.000,0.000)Sum5
LIG(398,731,398,726)
LIG(398,726,397,725)
LIG(394,726,394,731)
LIG(397,736,397,733)
LIG(396,736,399,736)
LIG(396,738,398,736)
LIG(397,738,399,736)
LIG(393,733,399,733)
LIG(395,733,395,740)
LIG(393,731,393,733)
LIG(399,731,393,731)
LIG(399,733,399,731)
LIG(395,725,394,726)
LIG(397,725,395,725)
FSYM
SYM  #light13
BB(368,885,374,899)
TITLE 370 899  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(369,886,4,4,r)
VIS 1
PIN(370,900,0.000,0.000)Cout6
LIG(373,891,373,886)
LIG(373,886,372,885)
LIG(369,886,369,891)
LIG(372,896,372,893)
LIG(371,896,374,896)
LIG(371,898,373,896)
LIG(372,898,374,896)
LIG(368,893,374,893)
LIG(370,893,370,900)
LIG(368,891,368,893)
LIG(374,891,368,891)
LIG(374,893,374,891)
LIG(370,885,369,886)
LIG(372,885,370,885)
FSYM
SYM  #light14
BB(398,885,404,899)
TITLE 400 899  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(399,886,4,4,r)
VIS 1
PIN(400,900,0.000,0.000)Sum6
LIG(403,891,403,886)
LIG(403,886,402,885)
LIG(399,886,399,891)
LIG(402,896,402,893)
LIG(401,896,404,896)
LIG(401,898,403,896)
LIG(402,898,404,896)
LIG(398,893,404,893)
LIG(400,893,400,900)
LIG(398,891,398,893)
LIG(404,891,398,891)
LIG(404,893,404,891)
LIG(400,885,399,886)
LIG(402,885,400,885)
FSYM
SYM  #light15
BB(373,1055,379,1069)
TITLE 375 1069  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(374,1056,4,4,r)
VIS 1
PIN(375,1070,0.000,0.000)Cout7
LIG(378,1061,378,1056)
LIG(378,1056,377,1055)
LIG(374,1056,374,1061)
LIG(377,1066,377,1063)
LIG(376,1066,379,1066)
LIG(376,1068,378,1066)
LIG(377,1068,379,1066)
LIG(373,1063,379,1063)
LIG(375,1063,375,1070)
LIG(373,1061,373,1063)
LIG(379,1061,373,1061)
LIG(379,1063,379,1061)
LIG(375,1055,374,1056)
LIG(377,1055,375,1055)
FSYM
SYM  #light16
BB(398,1055,404,1069)
TITLE 400 1069  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(399,1056,4,4,r)
VIS 1
PIN(400,1070,0.000,0.000)Sum7
LIG(403,1061,403,1056)
LIG(403,1056,402,1055)
LIG(399,1056,399,1061)
LIG(402,1066,402,1063)
LIG(401,1066,404,1066)
LIG(401,1068,403,1066)
LIG(402,1068,404,1066)
LIG(398,1063,404,1063)
LIG(400,1063,400,1070)
LIG(398,1061,398,1063)
LIG(404,1061,398,1061)
LIG(404,1063,404,1061)
LIG(400,1055,399,1056)
LIG(402,1055,400,1055)
FSYM
SYM  #4bitmultiplier
BB(490,25,530,115)
TITLE 500 23  #4bitmultiplier
MODEL 6000
PROP                                                                                                                                                                                                            
REC(495,30,30,80,r)
VIS 5
PIN(490,35,0.000,0.000)A0
PIN(490,45,0.000,0.000)A1
PIN(490,55,0.000,0.000)A2
PIN(490,65,0.000,0.000)A3
PIN(490,75,0.000,0.000)B0
PIN(490,85,0.000,0.000)B1
PIN(490,95,0.000,0.000)B2
PIN(490,105,0.000,0.000)B3
PIN(530,35,0.060,0.140)out1
PIN(530,45,0.060,0.140)out2
PIN(530,55,0.060,0.140)out3
PIN(530,65,0.060,0.140)out4
PIN(530,75,0.060,0.140)out5
PIN(530,85,0.060,0.140)out6
PIN(530,95,0.060,0.140)out7
PIN(530,105,0.060,0.140)out8
LIG(490,35,495,35)
LIG(490,45,495,45)
LIG(490,55,495,55)
LIG(490,65,495,65)
LIG(490,75,495,75)
LIG(490,85,495,85)
LIG(490,95,495,95)
LIG(490,105,495,105)
LIG(525,35,530,35)
LIG(525,45,530,45)
LIG(525,55,530,55)
LIG(525,65,530,65)
LIG(525,75,530,75)
LIG(525,85,530,85)
LIG(525,95,530,95)
LIG(525,105,530,105)
LIG(495,30,495,110)
LIG(495,30,525,30)
LIG(525,30,525,110)
LIG(525,110,495,110)
VLG   module 4bitmultiplier( A0,A1,A2,A3,B0,B1,B2,B3,
VLG    out1,out2,out3,out4,out5,out6,out7,out8);
VLG    input A0,A1,A2,A3,B0,B1,B2,B3;
VLG    output out1,out2,out3,out4,out5,out6,out7,out8;
VLG    wire w49,w50,w51,w52,w53,w54,w55,w56;
VLG    wire w57,w58,w59,w60,w61,w62,w63,w64;
VLG    wire w65,w66,w67,w68,w69,w70,w71,w72;
VLG    and #(23) and2(w17,A1,B2);
VLG    and #(23) and2(w18,A0,B3);
VLG    and #(23) and2(w21,A2,B0);
VLG    and #(23) and2(w13,A1,B1);
VLG    and #(23) and2(w9,A0,B1);
VLG    and #(23) and2(w14,A0,B2);
VLG    and #(16) and2(out1,A0,B0);
VLG    and #(23) and2(w10,A1,B0);
VLG    and #(23) and2(w23,A3,B1);
VLG    and #(23) and2(w24,A2,B2);
VLG    and #(23) and2(w25,A1,B3);
VLG    and #(23) and2(w26,A3,B0);
VLG    and #(23) and2(w27,A2,B1);
VLG    and #(23) and2(w28,A3,B3);
VLG    and #(23) and2(w29,A3,B2);
VLG    and #(23) and2(w30,A2,B3);
VLG    xor #(13) xor2_ha1(out2,w10,w9);
VLG    and #(22) and2_ha2(w11,w9,w10);
VLG    xor #(20) xor2_ha3(w16,w14,w13);
VLG    and #(22) and2_ha4(w15,w13,w14);
VLG    xor #(20) xor2_ha5(w20,w18,w17);
VLG    and #(22) and2_ha6(w19,w17,w18);
VLG    xor #(26) xor2_FA7(w49,w16,w21);
VLG    xor #(15) xor2_FA8(out3,w49,w11);
VLG    and #(15) and2_FA9(w50,w49,w11);
VLG    and #(15) and2_FA10(w51,w21,w16);
VLG    or #(22) or2_FA11(w32,w50,w51);
VLG    xor #(26) xor2_FA12(w52,w20,w27);
VLG    xor #(22) xor2_FA13(w33,w52,w15);
VLG    and #(15) and2_FA14(w53,w52,w15);
VLG    and #(15) and2_FA15(w54,w27,w20);
VLG    or #(22) or2_FA16(w34,w53,w54);
VLG    xor #(13) xor2_ha17(out5,w36,w35);
VLG    and #(22) and2_ha18(w37,w35,w36);
VLG    xor #(26) xor2_FA19(w55,w39,w23);
VLG    xor #(22) xor2_FA20(w35,w55,w34);
VLG    and #(15) and2_FA21(w56,w55,w34);
VLG    and #(15) and2_FA22(w57,w23,w39);
VLG    or #(22) or2_FA23(w40,w56,w57);
VLG    xor #(26) xor2_FA24(w58,w25,w24);
VLG    xor #(22) xor2_FA25(w39,w58,w19);
VLG    and #(15) and2_FA26(w59,w58,w19);
VLG    and #(15) and2_FA27(w60,w24,w25);
VLG    or #(22) or2_FA28(w41,w59,w60);
VLG    xor #(26) xor2_FA29(w61,w40,w42);
VLG    xor #(15) xor2_FA30(out6,w61,w37);
VLG    and #(15) and2_FA31(w62,w61,w37);
VLG    and #(15) and2_FA32(w63,w42,w40);
VLG    or #(22) or2_FA33(w44,w62,w63);
VLG    xor #(26) xor2_FA34(w64,w45,w28);
VLG    xor #(15) xor2_FA35(out7,w64,w44);
VLG    and #(15) and2_FA36(w65,w64,w44);
VLG    and #(15) and2_FA37(w66,w28,w45);
VLG    or #(15) or2_FA38(out8,w65,w66);
VLG    xor #(26) xor2_FA39(w67,w30,w29);
VLG    xor #(22) xor2_FA40(w42,w67,w41);
VLG    and #(15) and2_FA41(w68,w67,w41);
VLG    and #(15) and2_FA42(w69,w29,w30);
VLG    or #(22) or2_FA43(w45,w68,w69);
VLG    xor #(26) xor2_FA44(w70,w33,w26);
VLG    xor #(15) xor2_FA45(out4,w70,w32);
VLG    and #(15) and2_FA46(w71,w70,w32);
VLG    and #(15) and2_FA47(w72,w26,w33);
VLG    or #(22) or2_FA48(w36,w71,w72);
VLG   endmodule
FSYM
SYM  #light17
BB(553,15,559,29)
TITLE 555 29  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(554,16,4,4,r)
VIS 1
PIN(555,30,0.000,0.000)out17
LIG(558,21,558,16)
LIG(558,16,557,15)
LIG(554,16,554,21)
LIG(557,26,557,23)
LIG(556,26,559,26)
LIG(556,28,558,26)
LIG(557,28,559,26)
LIG(553,23,559,23)
LIG(555,23,555,30)
LIG(553,21,553,23)
LIG(559,21,553,21)
LIG(559,23,559,21)
LIG(555,15,554,16)
LIG(557,15,555,15)
FSYM
SYM  #light18
BB(573,15,579,29)
TITLE 575 29  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(574,16,4,4,r)
VIS 1
PIN(575,30,0.000,0.000)out18
LIG(578,21,578,16)
LIG(578,16,577,15)
LIG(574,16,574,21)
LIG(577,26,577,23)
LIG(576,26,579,26)
LIG(576,28,578,26)
LIG(577,28,579,26)
LIG(573,23,579,23)
LIG(575,23,575,30)
LIG(573,21,573,23)
LIG(579,21,573,21)
LIG(579,23,579,21)
LIG(575,15,574,16)
LIG(577,15,575,15)
FSYM
SYM  #light19
BB(593,15,599,29)
TITLE 595 29  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(594,16,4,4,r)
VIS 1
PIN(595,30,0.000,0.000)out19
LIG(598,21,598,16)
LIG(598,16,597,15)
LIG(594,16,594,21)
LIG(597,26,597,23)
LIG(596,26,599,26)
LIG(596,28,598,26)
LIG(597,28,599,26)
LIG(593,23,599,23)
LIG(595,23,595,30)
LIG(593,21,593,23)
LIG(599,21,593,21)
LIG(599,23,599,21)
LIG(595,15,594,16)
LIG(597,15,595,15)
FSYM
SYM  #light20
BB(613,15,619,29)
TITLE 615 29  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(614,16,4,4,r)
VIS 1
PIN(615,30,0.000,0.000)out20
LIG(618,21,618,16)
LIG(618,16,617,15)
LIG(614,16,614,21)
LIG(617,26,617,23)
LIG(616,26,619,26)
LIG(616,28,618,26)
LIG(617,28,619,26)
LIG(613,23,619,23)
LIG(615,23,615,30)
LIG(613,21,613,23)
LIG(619,21,613,21)
LIG(619,23,619,21)
LIG(615,15,614,16)
LIG(617,15,615,15)
FSYM
SYM  #light21
BB(633,15,639,29)
TITLE 635 29  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(634,16,4,4,r)
VIS 1
PIN(635,30,0.000,0.000)out21
LIG(638,21,638,16)
LIG(638,16,637,15)
LIG(634,16,634,21)
LIG(637,26,637,23)
LIG(636,26,639,26)
LIG(636,28,638,26)
LIG(637,28,639,26)
LIG(633,23,639,23)
LIG(635,23,635,30)
LIG(633,21,633,23)
LIG(639,21,633,21)
LIG(639,23,639,21)
LIG(635,15,634,16)
LIG(637,15,635,15)
FSYM
SYM  #light22
BB(653,15,659,29)
TITLE 655 29  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(654,16,4,4,r)
VIS 1
PIN(655,30,0.000,0.000)out22
LIG(658,21,658,16)
LIG(658,16,657,15)
LIG(654,16,654,21)
LIG(657,26,657,23)
LIG(656,26,659,26)
LIG(656,28,658,26)
LIG(657,28,659,26)
LIG(653,23,659,23)
LIG(655,23,655,30)
LIG(653,21,653,23)
LIG(659,21,653,21)
LIG(659,23,659,21)
LIG(655,15,654,16)
LIG(657,15,655,15)
FSYM
SYM  #light23
BB(673,15,679,29)
TITLE 675 29  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(674,16,4,4,r)
VIS 1
PIN(675,30,0.000,0.000)out23
LIG(678,21,678,16)
LIG(678,16,677,15)
LIG(674,16,674,21)
LIG(677,26,677,23)
LIG(676,26,679,26)
LIG(676,28,678,26)
LIG(677,28,679,26)
LIG(673,23,679,23)
LIG(675,23,675,30)
LIG(673,21,673,23)
LIG(679,21,673,21)
LIG(679,23,679,21)
LIG(675,15,674,16)
LIG(677,15,675,15)
FSYM
SYM  #light24
BB(693,15,699,29)
TITLE 695 29  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(694,16,4,4,r)
VIS 1
PIN(695,30,0.000,0.000)out24
LIG(698,21,698,16)
LIG(698,16,697,15)
LIG(694,16,694,21)
LIG(697,26,697,23)
LIG(696,26,699,26)
LIG(696,28,698,26)
LIG(697,28,699,26)
LIG(693,23,699,23)
LIG(695,23,695,30)
LIG(693,21,693,23)
LIG(699,21,693,21)
LIG(699,23,699,21)
LIG(695,15,694,16)
LIG(697,15,695,15)
FSYM
CNC(-60 5)
CNC(-60 80)
CNC(-60 155)
CNC(-60 215)
CNC(-60 285)
CNC(-60 345)
CNC(-60 415)
CNC(-80 425)
CNC(-100 435)
CNC(-80 355)
CNC(-100 365)
CNC(-80 295)
CNC(-100 305)
CNC(-80 225)
CNC(-100 235)
CNC(-80 165)
CNC(-100 175)
CNC(-80 90)
CNC(-100 100)
CNC(-80 15)
CNC(-100 25)
CNC(-140 335)
CNC(-150 315)
CNC(-140 450)
CNC(-125 470)
CNC(-120 205)
CNC(-135 185)
CNC(-125 35)
CNC(-140 55)
CNC(-10 80)
CNC(-20 90)
CNC(-20 100)
CNC(-10 120)
CNC(-140 35)
CNC(340 480)
CNC(130 40)
CNC(130 100)
CNC(130 440)
CNC(130 365)
CNC(130 315)
CNC(130 235)
CNC(130 185)
CNC(110 -20)
CNC(130 -20)
CNC(-60 -25)
CNC(335 35)
CNC(-10 255)
CNC(220 325)
CNC(320 90)
CNC(320 90)
CNC(345 285)
CNC(330 215)
CNC(345 285)
CNC(350 415)
CNC(-10 215)
CNC(340 145)
CNC(310 345)
CNC(330 215)
CNC(140 -20)
CNC(220 75)
CNC(220 190)
CNC(220 325)
CNC(-60 480)
CNC(-80 490)
CNC(-100 500)
CNC(-80 490)
CNC(-100 500)
CNC(-80 740)
CNC(-60 730)
CNC(-100 1075)
CNC(-80 1065)
CNC(-60 1055)
CNC(-100 995)
CNC(-80 985)
CNC(-60 975)
CNC(-80 655)
CNC(-80 905)
CNC(-130 1085)
CNC(-100 835)
CNC(-80 825)
CNC(-60 815)
CNC(360 740)
CNC(-130 600)
CNC(-130 1100)
CNC(-115 1120)
CNC(-15 1135)
CNC(-60 895)
CNC(-100 665)
CNC(-125 760)
CNC(-100 580)
CNC(-80 570)
CNC(-60 560)
CNC(-60 560)
CNC(335 660)
CNC(130 500)
CNC(130 1090)
CNC(130 1005)
CNC(130 930)
CNC(130 840)
CNC(130 765)
CNC(130 660)
CNC(130 590)
CNC(235 450)
CNC(355 985)
CNC(345 825)
CNC(235 800)
CNC(235 640)
CNC(365 900)
CNC(350 585)
CNC(-100 750)
CNC(-130 590)
CNC(-115 620)
CNC(-125 770)
CNC(-115 790)
CNC(-60 645)
CNC(-100 915)
CNC(-15 815)
CNC(-10 975)
CNC(-120 945)
CNC(-115 970)
CNC(-120 925)
CNC(265 25)
CNC(260 45)
CNC(265 145)
CNC(275 155)
CNC(265 295)
CNC(275 285)
CNC(280 415)
CNC(270 425)
CNC(490 395)
LIG(-100,-35,-100,25)
LIG(-100,500,35,500)
LIG(-80,-35,-80,15)
LIG(-80,490,35,490)
LIG(-60,-35,-60,-25)
LIG(-5,480,-60,480)
LIG(0,5,-60,5)
LIG(-60,5,-60,80)
LIG(-60,80,-10,80)
LIG(-60,80,-60,155)
LIG(-60,155,0,155)
LIG(-60,155,-60,215)
LIG(0,215,-10,215)
LIG(-60,215,-60,285)
LIG(-5,285,-60,285)
LIG(-60,285,-60,345)
LIG(-5,345,-60,345)
LIG(-60,345,-60,415)
LIG(-140,55,-140,120)
LIG(-5,415,-60,415)
LIG(-60,415,-60,480)
LIG(-5,425,-80,425)
LIG(-80,425,-80,490)
LIG(-5,435,-100,435)
LIG(-100,435,-100,500)
LIG(-80,355,35,355)
LIG(-80,355,-80,425)
LIG(-100,365,35,365)
LIG(-100,365,-100,435)
LIG(-5,295,-80,295)
LIG(0,195,-120,195)
LIG(-5,305,-100,305)
LIG(-100,305,-100,365)
LIG(-80,225,80,225)
LIG(-80,225,-80,295)
LIG(-100,235,80,235)
LIG(-100,235,-100,305)
LIG(-80,165,-80,225)
LIG(0,165,-80,165)
LIG(0,175,-100,175)
LIG(-100,175,-100,235)
LIG(0,90,-20,90)
LIG(-80,90,-80,165)
LIG(0,100,-20,100)
LIG(-100,100,-100,175)
LIG(0,15,-80,15)
LIG(-80,15,-80,90)
LIG(0,25,-100,25)
LIG(-100,25,-100,100)
LIG(-120,205,-120,255)
LIG(-135,185,75,185)
LIG(-155,185,-135,185)
LIG(0,245,-135,245)
LIG(-135,245,-135,185)
LIG(-155,205,-120,205)
LIG(0,35,-125,35)
LIG(-40,-35,-40,-20)
LIG(-125,470,-125,520)
LIG(-165,55,-140,55)
LIG(-125,35,-125,110)
LIG(0,255,-10,255)
LIG(-140,45,-140,55)
LIG(0,120,-10,120)
LIG(0,45,-140,45)
LIG(-125,110,0,110)
LIG(-140,-10,-140,35)
LIG(-165,35,-140,35)
LIG(-160,470,-125,470)
LIG(-120,195,-120,205)
LIG(-5,455,-125,455)
LIG(-125,455,-125,470)
LIG(-125,520,35,520)
LIG(-160,315,-150,315)
LIG(-80,295,-80,355)
LIG(-5,325,-140,325)
LIG(-160,335,-140,335)
LIG(-140,325,-140,335)
LIG(-140,335,-140,385)
LIG(-140,385,35,385)
LIG(-5,375,-150,375)
LIG(-150,375,-150,315)
LIG(-150,315,75,315)
LIG(-140,445,110,445)
LIG(-5,510,-140,510)
LIG(-140,445,-140,450)
LIG(-160,450,-140,450)
LIG(-140,450,-140,510)
LIG(-10,80,-10,65)
LIG(-10,80,0,80)
LIG(-10,65,80,65)
LIG(80,80,80,65)
LIG(-20,90,-20,55)
LIG(-20,90,-80,90)
LIG(-20,55,70,55)
LIG(70,55,70,90)
LIG(80,90,70,90)
LIG(-20,100,-20,135)
LIG(-20,100,-100,100)
LIG(-20,135,50,135)
LIG(50,135,50,100)
LIG(80,100,50,100)
LIG(-10,120,-10,145)
LIG(-10,120,-140,120)
LIG(-10,145,80,145)
LIG(80,120,80,145)
LIG(40,80,40,45)
LIG(145,20,145,5)
LIG(-40,-20,110,-20)
LIG(85,65,155,65)
LIG(155,80,155,65)
LIG(120,80,120,90)
LIG(40,5,145,5)
LIG(120,90,155,90)
LIG(315,510,340,510)
LIG(-140,35,-125,35)
LIG(145,30,100,30)
LIG(100,-10,100,30)
LIG(-140,-10,100,-10)
LIG(40,45,85,45)
LIG(85,45,85,65)
LIG(130,-20,130,40)
LIG(130,100,165,100)
LIG(155,40,130,40)
LIG(130,40,130,100)
LIG(130,100,130,185)
LIG(200,85,200,45)
LIG(200,45,260,45)
LIG(130,500,175,500)
LIG(175,495,175,500)
LIG(170,440,130,440)
LIG(130,440,130,500)
LIG(170,365,130,365)
LIG(130,365,130,440)
LIG(165,315,130,315)
LIG(130,315,130,365)
LIG(165,235,130,235)
LIG(130,235,130,315)
LIG(130,185,160,185)
LIG(130,185,130,235)
LIG(175,85,200,85)
LIG(-60,-25,130,-25)
LIG(-60,-25,-60,5)
LIG(130,-45,130,-25)
LIG(130,-20,140,-20)
LIG(140,-35,140,-20)
LIG(150,-50,230,-50)
LIG(230,-50,230,55)
LIG(275,55,230,55)
LIG(130,-55,110,-55)
LIG(110,-20,110,-55)
LIG(110,-20,130,-20)
LIG(165,25,265,25)
LIG(275,35,275,25)
LIG(315,35,335,35)
LIG(315,45,375,45)
LIG(375,35,375,45)
LIG(335,35,335,100)
LIG(335,35,345,35)
LIG(310,100,335,100)
LIG(35,485,35,490)
LIG(220,75,320,75)
LIG(320,75,320,90)
LIG(310,90,320,90)
LIG(320,90,320,120)
LIG(320,120,300,120)
LIG(300,110,300,120)
LIG(290,95,230,95)
LIG(230,95,230,165)
LIG(280,165,230,165)
LIG(80,485,35,485)
LIG(320,145,340,145)
LIG(320,155,380,155)
LIG(380,145,380,155)
LIG(350,415,365,415)
LIG(315,500,315,510)
LIG(220,190,330,190)
LIG(80,205,80,215)
LIG(330,190,330,215)
LIG(330,215,315,215)
LIG(340,145,340,225)
LIG(340,145,350,145)
LIG(315,225,340,225)
LIG(330,215,330,250)
LIG(305,235,305,250)
LIG(330,250,305,250)
LIG(295,220,230,220)
LIG(230,220,230,305)
LIG(285,305,230,305)
LIG(325,285,345,285)
LIG(325,295,380,295)
LIG(380,285,380,295)
LIG(345,285,345,355)
LIG(345,285,355,285)
LIG(335,660,335,695)
LIG(305,355,345,355)
LIG(80,475,80,465)
LIG(220,325,310,325)
LIG(310,325,310,345)
LIG(310,680,310,695)
LIG(305,345,310,345)
LIG(310,345,310,380)
LIG(295,365,295,380)
LIG(295,380,310,380)
LIG(220,190,220,325)
LIG(220,395,235,395)
LIG(235,450,340,450)
LIG(335,660,335,640)
LIG(220,325,220,395)
LIG(290,435,255,435)
LIG(235,640,235,800)
LIG(330,415,350,415)
LIG(330,425,395,425)
LIG(395,415,395,425)
LIG(350,415,350,490)
LIG(120,215,120,225)
LIG(155,225,120,225)
LIG(280,155,275,155)
LIG(-10,255,-10,275)
LIG(-10,255,-120,255)
LIG(-10,205,80,205)
LIG(-10,275,80,275)
LIG(80,255,80,275)
LIG(-10,215,-10,205)
LIG(-10,215,-60,215)
LIG(40,215,40,195)
LIG(40,195,155,195)
LIG(155,215,155,195)
LIG(150,175,75,175)
LIG(75,175,75,185)
LIG(150,165,40,165)
LIG(40,155,40,165)
LIG(170,170,205,170)
LIG(205,170,205,145)
LIG(205,145,265,145)
LIG(75,305,155,305)
LIG(175,220,215,220)
LIG(215,220,215,155)
LIG(-5,345,-5,335)
LIG(-5,335,80,335)
LIG(80,340,80,335)
LIG(35,345,55,345)
LIG(55,345,55,325)
LIG(55,325,160,325)
LIG(160,325,160,345)
LIG(120,340,150,340)
LIG(75,315,75,305)
LIG(155,295,155,285)
LIG(150,340,150,355)
LIG(160,355,150,355)
LIG(35,285,155,285)
LIG(175,300,175,285)
LIG(285,285,275,285)
LIG(285,295,265,295)
LIG(80,350,35,350)
LIG(35,350,35,355)
LIG(195,350,195,295)
LIG(80,360,35,360)
LIG(35,360,35,365)
LIG(180,350,195,350)
LIG(35,380,80,380)
LIG(35,385,35,380)
LIG(35,495,80,495)
LIG(110,445,110,430)
LIG(160,430,110,430)
LIG(35,415,160,415)
LIG(160,420,160,415)
LIG(180,425,215,425)
LIG(215,425,215,415)
LIG(290,415,280,415)
LIG(35,480,35,455)
LIG(35,455,165,455)
LIG(165,475,165,455)
LIG(120,475,155,475)
LIG(165,485,155,485)
LIG(155,475,155,485)
LIG(185,480,225,480)
LIG(225,480,225,425)
LIG(290,425,270,425)
LIG(35,500,35,495)
LIG(35,520,35,515)
LIG(35,515,80,515)
LIG(-5,480,-5,465)
LIG(-5,465,80,465)
LIG(140,-20,220,-20)
LIG(220,-20,220,75)
LIG(220,75,220,190)
LIG(235,395,235,450)
LIG(285,350,255,350)
LIG(255,350,255,435)
LIG(-60,480,-60,560)
LIG(-80,490,-80,570)
LIG(-100,500,-100,580)
LIG(-100,1155,80,1155)
LIG(-80,1145,80,1145)
LIG(-80,740,-80,825)
LIG(-5,1135,-15,1135)
LIG(-5,740,-80,740)
LIG(-5,1075,-100,1075)
LIG(-100,1075,-100,1155)
LIG(-5,1065,-80,1065)
LIG(-80,1065,-80,1145)
LIG(-5,1055,-60,1055)
LIG(-60,1055,-60,1135)
LIG(-100,995,80,995)
LIG(-100,995,-100,1075)
LIG(-80,985,80,985)
LIG(-80,985,-80,1065)
LIG(-5,975,-10,975)
LIG(-60,975,-60,1055)
LIG(-80,655,-80,740)
LIG(-60,895,-60,975)
LIG(-5,905,-80,905)
LIG(-80,905,-80,985)
LIG(-5,730,-60,730)
LIG(-100,835,-100,915)
LIG(-100,835,75,835)
LIG(-80,655,75,655)
LIG(-80,825,75,825)
LIG(-80,825,-80,905)
LIG(-5,815,-15,815)
LIG(-60,815,-60,895)
LIG(-60,730,-60,815)
LIG(-115,600,-115,620)
LIG(-100,665,-100,750)
LIG(-115,685,75,685)
LIG(-5,600,-115,600)
LIG(-115,620,-115,685)
LIG(-160,620,-115,620)
LIG(80,1135,80,1120)
LIG(-5,895,-60,895)
LIG(-15,1120,80,1120)
LIG(-60,560,-60,645)
LIG(-100,665,75,665)
LIG(35,1110,175,1110)
LIG(160,755,75,755)
LIG(-60,645,-60,730)
LIG(-5,580,-100,580)
LIG(-100,580,-100,665)
LIG(-5,570,-80,570)
LIG(-80,570,-80,655)
LIG(-60,560,-5,560)
LIG(340,900,365,900)
LIG(400,1070,400,1080)
LIG(345,1080,400,1080)
LIG(310,695,335,695)
LIG(345,1070,375,1070)
LIG(340,910,400,910)
LIG(400,900,400,910)
LIG(335,740,360,740)
LIG(395,740,395,750)
LIG(335,750,395,750)
LIG(185,1155,130,1155)
LIG(330,585,350,585)
LIG(385,585,385,595)
LIG(330,595,385,595)
LIG(130,500,130,590)
LIG(185,1090,130,1090)
LIG(130,1090,130,1155)
LIG(180,1005,130,1005)
LIG(130,1005,130,1090)
LIG(180,930,130,930)
LIG(130,930,130,1005)
LIG(175,840,130,840)
LIG(130,840,130,930)
LIG(170,765,130,765)
LIG(130,765,130,840)
LIG(175,660,130,660)
LIG(130,660,130,765)
LIG(175,590,130,590)
LIG(130,590,130,660)
LIG(235,450,235,640)
LIG(345,825,345,860)
LIG(315,860,345,860)
LIG(315,845,315,860)
LIG(235,965,355,965)
LIG(355,965,355,985)
LIG(355,1020,325,1020)
LIG(325,1005,325,1020)
LIG(335,985,355,985)
LIG(355,985,355,1020)
LIG(325,825,345,825)
LIG(345,825,345,800)
LIG(235,800,345,800)
LIG(235,800,235,965)
LIG(320,660,335,660)
LIG(235,640,335,640)
LIG(340,480,340,510)
LIG(340,450,340,480)
LIG(325,480,340,480)
LIG(250,830,250,920)
LIG(325,490,350,490)
LIG(305,485,255,485)
LIG(255,485,255,605)
LIG(290,605,255,605)
LIG(300,665,245,665)
LIG(245,665,245,760)
LIG(295,760,245,760)
LIG(320,670,350,670)
LIG(350,585,350,670)
LIG(350,585,360,585)
LIG(360,740,360,835)
LIG(360,740,370,740)
LIG(325,835,360,835)
LIG(335,995,365,995)
LIG(365,900,365,995)
LIG(365,900,370,900)
LIG(315,990,250,990)
LIG(250,990,250,1090)
LIG(305,1090,250,1090)
LIG(300,920,250,920)
LIG(305,830,250,830)
LIG(185,575,290,575)
LIG(290,585,290,575)
LIG(185,645,185,595)
LIG(290,595,185,595)
LIG(180,750,180,740)
LIG(295,740,180,740)
LIG(185,825,210,825)
LIG(210,825,210,750)
LIG(295,750,210,750)
LIG(190,915,190,900)
LIG(300,900,190,900)
LIG(190,990,205,990)
LIG(205,990,205,910)
LIG(300,910,205,910)
LIG(195,1075,220,1075)
LIG(220,1080,305,1080)
LIG(305,1070,220,1070)
LIG(220,1070,220,1075)
LIG(195,1140,220,1140)
LIG(220,1140,220,1080)
LIG(-130,600,-130,675)
LIG(-5,590,-130,590)
LIG(-130,600,-130,590)
LIG(-160,600,-130,600)
LIG(-5,675,-130,675)
LIG(35,1135,35,1110)
LIG(-5,750,-100,750)
LIG(-100,750,-100,835)
LIG(-5,845,-125,845)
LIG(-5,760,-125,760)
LIG(-125,760,-125,770)
LIG(-155,770,-125,770)
LIG(-125,770,-125,845)
LIG(-5,770,-115,770)
LIG(-115,770,-115,790)
LIG(-115,855,75,855)
LIG(-155,790,-115,790)
LIG(-115,790,-115,855)
LIG(165,580,70,580)
LIG(-130,590,-130,540)
LIG(-130,540,70,540)
LIG(35,560,35,570)
LIG(70,540,70,580)
LIG(165,570,35,570)
LIG(-5,645,-60,645)
LIG(-5,645,-5,625)
LIG(-5,625,75,625)
LIG(-100,915,-100,995)
LIG(75,625,75,645)
LIG(35,645,35,615)
LIG(35,615,165,615)
LIG(165,640,165,615)
LIG(115,645,155,645)
LIG(155,645,155,650)
LIG(165,650,155,650)
LIG(-125,760,-125,705)
LIG(-125,705,75,705)
LIG(75,705,75,755)
LIG(35,730,160,730)
LIG(160,745,160,730)
LIG(75,815,75,790)
LIG(-15,815,-15,790)
LIG(-15,815,-60,815)
LIG(75,790,-15,790)
LIG(170,985,170,950)
LIG(-115,1015,80,1015)
LIG(-115,935,-115,970)
LIG(35,815,35,780)
LIG(35,780,165,780)
LIG(165,780,165,820)
LIG(115,815,150,815)
LIG(150,815,150,830)
LIG(165,830,150,830)
LIG(-5,925,-120,925)
LIG(-5,1005,-120,1005)
LIG(-120,925,-120,945)
LIG(-5,935,-115,935)
LIG(-150,945,-120,945)
LIG(-120,945,-120,1005)
LIG(-150,970,-115,970)
LIG(-115,970,-115,1015)
LIG(-120,925,-120,880)
LIG(-120,880,85,880)
LIG(85,880,85,920)
LIG(170,920,85,920)
LIG(35,895,170,895)
LIG(170,910,170,895)
LIG(160,975,160,995)
LIG(170,995,160,995)
LIG(120,975,160,975)
LIG(-10,975,-10,960)
LIG(-10,975,-60,975)
LIG(-10,960,80,960)
LIG(80,975,80,960)
LIG(35,975,35,950)
LIG(35,950,170,950)
LIG(-5,1085,-130,1085)
LIG(-130,1085,-130,1100)
LIG(-5,1165,-130,1165)
LIG(175,1135,175,1110)
LIG(-5,1095,-115,1095)
LIG(-115,1095,-115,1120)
LIG(-115,1175,80,1175)
LIG(-145,1100,-130,1100)
LIG(-130,1100,-130,1165)
LIG(-145,1120,-115,1120)
LIG(-115,1120,-115,1175)
LIG(-130,1085,-130,1035)
LIG(-130,1035,90,1035)
LIG(90,1035,90,1080)
LIG(175,1080,90,1080)
LIG(35,1055,175,1055)
LIG(175,1070,175,1055)
LIG(175,1145,160,1145)
LIG(160,1135,160,1145)
LIG(120,1135,160,1135)
LIG(-15,1135,-15,1120)
LIG(-15,1135,-60,1135)
LIG(-5,915,-100,915)
LIG(265,25,265,5)
LIG(265,25,275,25)
LIG(265,5,490,5)
LIG(490,35,490,5)
LIG(260,45,260,10)
LIG(260,45,275,45)
LIG(260,10,480,10)
LIG(480,10,480,75)
LIG(475,95,475,265)
LIG(490,75,480,75)
LIG(265,145,265,125)
LIG(265,145,280,145)
LIG(265,125,470,125)
LIG(470,125,470,45)
LIG(490,45,470,45)
LIG(275,155,275,130)
LIG(275,155,215,155)
LIG(275,130,345,130)
LIG(455,55,455,260)
LIG(345,85,345,130)
LIG(490,85,345,85)
LIG(490,55,455,55)
LIG(275,285,275,260)
LIG(275,285,175,285)
LIG(275,260,455,260)
LIG(265,295,265,265)
LIG(265,295,195,295)
LIG(265,265,475,265)
LIG(490,95,475,95)
LIG(280,415,280,395)
LIG(280,415,215,415)
LIG(280,395,490,395)
LIG(270,425,270,390)
LIG(270,425,225,425)
LIG(270,390,485,390)
LIG(490,65,485,65)
LIG(490,105,490,395)
LIG(490,395,495,395)
LIG(485,65,485,390)
LIG(530,35,530,0)
LIG(530,0,720,0)
LIG(720,0,720,30)
LIG(695,30,720,30)
LIG(530,45,675,45)
LIG(675,30,675,45)
LIG(530,105,555,105)
LIG(530,55,655,55)
LIG(655,30,655,55)
LIG(530,65,635,65)
LIG(635,30,635,65)
LIG(530,75,615,75)
LIG(615,30,615,75)
LIG(595,30,595,85)
LIG(530,85,595,85)
LIG(555,30,555,105)
LIG(575,30,575,95)
LIG(530,95,575,95)
FFIG C:\Users\User\Desktop\VLSI Project\8bitALUFinal.sch
