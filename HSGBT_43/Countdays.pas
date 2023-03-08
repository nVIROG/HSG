uses crt;
type
	arr = array[1..13] of integer;
var
	a,b,c : integer;
	x,y : integer;
	thang : arr;

function check_nn(y : integer) : boolean;
begin
	if ((y mod 4) = 0) and (((y mod 100) <> 0) or ((y mod 400) = 0)) then exit(true)
	else exit(false);
end;

function cd(day, mon : integer) : integer;
var
	i : integer;
	d : integer;
begin
	d := 0;
	for i := 1 to mon-1 do d := d + thang[i];
	//writeln(d);
	d := d + day;

	if (check_nn(c) = true) and (mon > 2) then exit(d+1)
	else exit(d);

end;



procedure angian();
begin
	thang[1] := 31;
	thang[2] := 28;
	thang[3] := 31;
	thang[4] := 30;
	thang[5] := 31;
	thang[6] := 30;
	thang[7] := 31;
	thang[8] := 31;
	thang[9] := 30;
	thang[10] := 31;
	thang[11] := 30;
	thang[12] := 31;
end;

begin
	clrscr;

	angian;

	read(a); read(b); readln(c);
	read(x); read(y); readln(c);

	writeln(cd(x,y) - cd(a,b) + 1);

	readln;
end.