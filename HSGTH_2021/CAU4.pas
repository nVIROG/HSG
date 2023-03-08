uses crt;
type
	arr = array[0..1000007] of integer;
var
	nguyen, phu : arr;
	s : ansistring;
	fi, fo : text;

procedure nhap();
begin
	readln(fi, s);
end;


procedure ToiUu();
var
	i : integer;
begin
	for i := 1 to length(s) do
	begin
		nguyen[i] := nguyen[i-1];
		phu[i] := phu[i-1];

		if (s[i] = 'a') or (s[i] = 'i') or (s[i] = 'u') or (s[i] = 'e') or (s[i] = 'o') then inc(nguyen[i])
		else inc(phu[i]); 
	end;
end;

function process() : longint;
var
	cnt : longint;
	i : integer;
begin
	cnt := 0;

	for i := 1 to length(s) do
	begin
		if (s[i] = 'a') or (s[i] = 'i') or (s[i] = 'u') or (s[i] = 'e') or (s[i] = 'o') then
		begin
			cnt := cnt + (phu[length(s)] - phu[i]);
		end
		else cnt := cnt + (nguyen[length(s)] - nguyen[i]);
	end;

	exit(cnt);
end;

begin
	clrscr;

	assign(fi, 'CAU4.inp');
	assign(fo, 'CAU4.out');
	reset(fi);
	rewrite(fo);

	nhap();
	toiuu();
	writeln(fo, process);
	
	close(fi);
	close(fo);
end.