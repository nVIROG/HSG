uses crt;
type
	arr = array[1..35] of integer;
var
	n, k : int64;
	i, p: int64;
	a : arr;

procedure xuat(f : arr);
var
	j : integer;
begin	for j := 1 to i do
		begin
			write(f[j], ' ');
		end;
end;

procedure htb(var f : arr; x : int64);
var
	j : integer;
	x2 : int64;
begin
	for j := 1 to i do f[j] := 0;

	x2 := x;
	j := i;
	while x2 > 0 do 
	begin
		f[j] := x2 mod 2;
		dec(j);
		x2 := x2 div 2;
	end;
	
end;


begin
	clrscr;

	readln(k);

	{if (k = 2) then 
		begin
			write(7);
			readln;
			exit;
		end;}


	p := 2;
	i := 1;
	while k - p >= 0 do 
	begin
		k := k - p;
		p := p * 2;
		i := i + 1;
	end;

	//writeln(i, ' ', k);

	htb(a,k-1);
	xuat(a);

	readln;
end.