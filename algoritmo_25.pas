Program algoritmo_25;
var L,C,i,linha,coluna,playerO,playerX,vitoria:integer;
A:array [1..3,1..3] of string;

procedure Vencedor (playerO,playerX:integer);
	begin
		for L:=1 to 1 do
			begin
				playerX := 0;
				playerO := 0;
				for C:=1 to 3 do
					begin
						if A[L,C] = 'X' then
							playerX := playerX + 1
						else if A[L,C] = 'O' then
							playerO := playerO + 1
					end;

				if playerX = 3 then
					begin
						writeln('O jogador X venceu, parabéns!');
						vitoria := 1;
					end
				else if playerO = 3 then
					begin
						writeln('O jogador O venceu, parabéns!');
						vitoria := 1;
					end;
			end;

		for L:=2 to 2 do
			begin
				playerX := 0;
				playerO := 0;
				for C:=1 to 3 do
					begin
						if A[L,C] = 'X' then
							playerX := playerX + 1
						else if A[L,C] = 'O' then
							playerO := playerO + 1
					end;

				if playerX = 3 then
					begin
						writeln('O jogador X venceu, parabéns!');
						vitoria := 1;
					end
				else if playerO = 3 then
					begin
						writeln('O jogador O venceu, parabéns!');
						vitoria := 1;
					end;
			end;

		for L:=3 to 3 do
			begin
				playerX := 0;
				playerO := 0;
				for C:=1 to 3 do
					begin
						if A[L,C] = 'X' then
							playerX := playerX + 1
						else if A[L,C] = 'O' then
							playerO := playerO + 1
					end;

				if playerX = 3 then
					begin
						writeln('O jogador X venceu, parabéns!');
						vitoria := 1;
					end
				else if playerO = 3 then
					begin
						writeln('O jogador O venceu, parabéns!');
						vitoria := 1;
					end;
			end;
end;
		

Begin
	textcolor(black);
	textbackground(white);
	clrscr;
	for L:=1 to 3 do
		begin
			for C:=1 to 3 do
				A[L,C]:= '.';
		end;
		
//Escreve a matriz
	for L:=1 to 3 do
		begin 
			for C:=1 to 3 do
				write (A[L,C]:4);
			writeln;
		end;

//Bloco jogo da velha
		for i:=1 to 9 do
			begin
				writeln ('Escolha uma linha');
				readln (linha);
				writeln ('Escolha uma coluna');
				readln (coluna);
				for L:=linha to linha do
					begin
						for C:=coluna to coluna do
							begin
								if i mod 2 = 0 then
									A[L,C] := 'X'
								else
									A[L,C] := 'O'
							end;
					end;

				for L:=1 to 3 do
					begin
						for C:=1 to 3 do
							write (A[L,C]:4);
						writeln;
					end;
				Vencedor(playerO,playerX);
			end;
//Fim do bloco jogo da velha
			  
End.