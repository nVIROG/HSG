uses crt;
var
	t : integer;
	a,b,c : integer;
	i : integer;

	fi, fo : text;

function check(a,b,c : integer) : boolean;
begin
	if (a+b+c) <> 180 then exit(false);
	if (a+b+c) = 0 then exit(false);
	if (a = 0) or (b = 0) or (c = 0) then exit(false);

	exit(true);
end;

function nhon(a,b,c : integer) : boolean;
begin
	if (a < 90) and (b < 90) and (c < 90) then exit(true)
	else exit(false);
end;

function vuong(a,b,c : integer) : boolean;
begin
	if (a = 90) or (b = 90) or (c = 90) then exit(true)
	else exit(false);
end;

function tu(a,b,c : integer) : boolean;
begin
	if (a > 90) or (b > 90) or (c > 90) then exit(true)
	else exit(false);
end;



begin
	clrscr;

	assign(fi, 'TAMGIAC.inp'); reset(fi);
	assign(fo, 'TAMGIAC.out'); rewrite(fo);

	readln(fi, t);

	for i := 1 to t do
	begin
		read(fi, a); read(fi, b); readln(fi, c);

		if (check(a,b,c) = true) then
		begin
			if (nhon(a,b,c) = true) then writeln(fo , 'NHON');
			if (vuong(a,b,c) = true) then writeln(fo, 'VUONG');
			if (tu(a,b,c) = true) then writeln(fo, 'TU');
		end
		else writeln(fo, '0');


	end;

	close(fi);
	close(fo);
end.