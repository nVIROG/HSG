uses crt;
type
	arr = array[0..50] of integer;

var
	s : string;
	i : integer;
	a : arr;


begin
	clrscr;
	readln(s);


	for i := 1 to length(s) do 
	begin
		inc( a[ord(s[i]) - 48] );
	end;

	//writeln(chr(a[0] + 48));

	for i := 0 to 50 do
	begin
		if (a[i] > 0) then writeln( chr(i+48), ' ',a[i]);

	end;

	readln;
end.