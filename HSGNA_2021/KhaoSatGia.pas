uses crt;
type
	arr = array[1..30] of string;
var
	n : integer;
	a : arr;

procedure nhap();
var
	i : integer;
begin
	readln(n);
	for i := 1 to n do readln(a[i]);
end;


function Process() : longint;
var
	i,j : integer;
	cnt : longint;
	min : integer;

begin
	cnt := 0;
	for i := 1 to n do
	begin
		write(a[i][1]);

		min := 10;
		for j := 2 to length(a[i]) do
		begin
			if (ord(a[i][j]) - 48) < min then min := ord(a[i][j]) - 48;
		end; 
		cnt := cnt + min;

		writeln(min);
	end;

	exit(cnt);
end;


begin
	clrscr;

	nhap;
	writeln(process);

	readln;
end.
