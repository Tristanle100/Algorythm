program carre;

uses crt;

CONST TAILLECARRE = 5;

VAR i,j,k: integer;
        care : array[1..TAILLECARRE,1..TAILLECARRE] of integer;


BEGIN
        clrscr;
        for i := 1 to TAILLECARRE do
        BEGIN
                for j := 1 to TAILLECARRE do
                BEGIN
                        care[i,j]:= 0;
                END;
        END;
//premiere case le numéro 1
        i:= TAILLECARRE DIV 2 + 1;
        j:= TAILLECARRE DIV 2;
                care[i,j]:=1;


//boucle pour faire 24 fois chaque étape jusqu'a remplir le tableau entierement
        for k:=2 TO (TAILLECARRE*TAILLECARRE) do
        BEGIN
                j:=j-1;
                i:=i+1;
                //si j dépasse la taille minimal du carré il revient à la taille max du carré
                 if j=0 then
                 BEGIN

                 j:= TAILLECARRE;
                 END;
                 if i=TAILLECARRE+1 then
                 BEGIN
                 i:=1
                 END;
//si la case est vide alors on va en haut à droite
                if (care[i,j]=0) then
                BEGIN
                //si i dépasse la taille du carré il revient à 1
                 if i = TAILLECARRE+1 then
                 BEGIN
                 i:=1;
                 END;
                 care[i,j]:=k;

                //si j dépasse la taille minimal du carré il revient à la taille max du carré
                 if j=0 then
                 BEGIN

                 j:= TAILLECARRE;
                 END;


                 END
////////////////////////////////////////////////////////////////////////////////////////////
//si la case est utilisé alors on va en haut à gauche
                else
                BEGIN
                i:=i-1;
                j:=j-1;

                //si i dépasse la taille du carré il revient à 1

//si j dépasse la taille minimal du carré il revient à la taille max du carré
                 if j=0 then
                 BEGIN

                 j:= TAILLECARRE;
                 END;

                //si j dépasse la taille minimal du carré il revient à la taille max du carré
                if i=0 then
                BEGIN
                i:= TAILLECARRE;
                END;
                if i=-1 then
                BEGIN
                i:= TAILLECARRE;
                END;
                //si i dépasse la taille du carré il revient à 1
                 if i = TAILLECARRE+1 then
                 BEGIN
                 i:=1;
                 END;

                care[i,j]:=k;
                 //si i dépasse la taille du carré il revient à 1
                 if i = TAILLECARRE+1 then
                 BEGIN
                 i:=1;
                 END;

                //si j dépasse la taille minimal du carré il revient à la taille max du carré
                 if j=0 then
                 BEGIN

                 j:= TAILLECARRE;
                 END;

                care[i,j]:=k;

        
                END;
        END;

////////////////////////////////////////////////////////////////////////////////////////////
        for i:=1 to TAILLECARRE do
        BEGIN
                for j:=1 to TAILLECARRE do
                BEGIN
                        write('|');
                        write(care[j,i]:2);
                END;
                write('|');
                writeln();
        END;
        Readln;









END.
