uses crt;
type
	arr = array[1..2*1000000] of longint;
var
	n : longint;
	fibo, a : arr;
	k : integer;

procedure fi(n : longint); 
begin
	fibo[1] := 1;
	fibo[2] := 1;

	k := 2;
	while (fibo[k] <= n) do 
	begin
		inc(k);
		fibo[k] := fibo[k-1] + fibo[k-2];
	end;
end;

procedure Process();
var
	i,j : longint;
begin
	j := 0;
	for i := k downto 1 do 
	begin
		if (fibo[i] <= n) then 
		begin
			inc(j);
			a[j] := fibo[i];
			n := n - fibo[i];
		end;

	end;
		if (n = 0) then
		begin
			for i := 1 to j do write(a[i], ' ');
		end
		else write(-1);
end;

begin	
	clrscr;


	readln(n);

	fi(n);
	Process();

	readln;
end.