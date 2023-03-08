uses crt;
var
	n : int64;



begin
	clrscr;
	readln(n);

	if (n mod 2) = 0 then
	begin
		if ((n mod 2) mod 2) = 0 then write((n div 2) + 1, ' ', (n div 2) - 1)
		else write(n div 2, ' ', n div 2);
	end
	else write(-1);


	readln;
end.