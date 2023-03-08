uses crt;
var    
	n : int64;

	fi , fo : text;

function process() : int64;
var
	s : int64;
	i : int64;
begin
	s := 0;
	i := 1;

	while i <= n do
	begin
		s := s + (n-i+1);
		i := i*10;
	end;

	exit(s);
end;

begin
	clrscr;

	assign(fi, 'cutword.inp');
	assign(fo, 'cutword.out');

	reset(fi);
	rewrite(fo);

    readln(fi, n);
    writeln(fo, process);;

    close(fi);
    close(fo);
end.