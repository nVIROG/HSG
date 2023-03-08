uses crt;
var
	l,r : int64;

function Check_CP(x : int64) : boolean;
begin
	if round(sqrt(x)) = x / sqrt(x) then exit(true)
	else exit(false);
end;


function CP(r : int64) : int64;
var
	i,j : longint;
	cnt : int64;
begin
	cnt := 0;
	for i := 2 to r-1 do 
	begin
		for j := i+1 to r do 
		begin
			{if (Check_CP(i) = true) then 
						begin
							cnt := cnt + (r-i);
						end;
						if (Check_CP(i) = true) or ((i mod j) = 0) then 
						begin
							writeln(i,' ',j);
							inc(cnt);
						end;}

			write('Case ',i,' ',j,' : ');
			if (Check_CP(j) = true) or ((i mod j) = 0) then writeln('YES')
			else writeln('NO');
		end;
	end;

	exit(cnt);
end;

begin
	clrscr;
	read(l); readln(r);


	writeln(CP(l));

	readln;
end.