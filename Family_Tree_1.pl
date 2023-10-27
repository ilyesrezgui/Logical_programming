/* andre+augustine */
/* |__ bernard+becassine */
/* | |__ clement+chantal */
/* | | |__ dudulle */
/* | | |__ damien */
/* | | |__ daniela */
/* |__ babar */
/* | |__ celestine */
/* |__ brigitte+baptiste */
/* |__ cedric+charlotte */
/* | |__ didier */
/* | |__ dagobert */
/* | |__ dominique */
/* |__ caroline */




/* ========= */
/* les faits */
/* ========= */
/* les hommes */
homme(andre).
homme(bernard).
homme(babar).
homme(clement).
homme(dudulle).
homme(damien).
homme(baptiste).
homme(cedric).
homme(didier).
homme(dagobert).
/* les femmes */
femme(augustine).
femme(becassine).
femme(brigitte).
femme(chantal).
femme(celestine).
femme(caroline).
femme(charlotte).
femme(daniela).
femme(dominique).
/* les relations de parent� */
enfant(bernard,andre).
enfant(bernard,augustine).
enfant(babar,andre).
enfant(babar,augustine).
enfant(brigitte,andre).
enfant(brigitte,augustine).
enfant(clement,bernard).
enfant(clement,becassine).
enfant(celestine,babar).
enfant(caroline,brigitte).
enfant(caroline,baptiste).
enfant(cedric,brigitte).
enfant(cedric,baptiste).
enfant(dudulle,clement).
enfant(dudulle,chantal).
enfant(damien,clement).
enfant(damien,chantal).
enfant(daniela,clement).
enfant(daniela,chantal).
enfant(didier,cedric).
enfant(didier,charlotte).
enfant(dagobert,cedric).
enfant(dagobert,charlotte).
enfant(dominique,cedric).
enfant(dominique,charlotte).



/* les regles */
parent(X,Y):- enfant(Y,X).

pere(X,Y):- enfant(Y,X),homme(X).
mere(X,Y):- enfant(Y,X),femme(X).


fils(X,Y):- enfant(X,Y),homme(X).
fille(X,Y):- enfant(X,Y),femme(X).


grand_parent(X,Y):- parent(X,Z),parent(Z,Y).

grand_pere(X,Y):- homme(X),grand_parent(X,Y).
grande_mere(X,Y):- femme(X),parent(X,Z),parent(Z,Y).

petit_enfant(X,Y):- grand_parent(Y,X).
petit_fils(X,Y):- grand_parent(Y,X),homme(X).
petite_fille(X,Y):- grand_parent(Y,X),femme(X).

frere_ou_soeur(X,Y):- enfant(X,Z),enfant(Y,Z).
frere(X,Y):- frere_ou_soeur(X,Y), homme(X).
soeur(X,Y):- frere_ou_soeur(X,Y),femme(X).

oncle_ou_tante(X,Y):- frere_ou_soeur(X,Z),parent(Z,Y).
oncle(X,Y):- oncle_ou_tante(X,Y),homme(X).
tante(X,Y):- oncle_ou_tante(X,Y),femme(X).


ancetre(X,Y):- parent(X,Y).

ancetre(X,Y):- parent(X,Z),ancetre(Z,Y).





