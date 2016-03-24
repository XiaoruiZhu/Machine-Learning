txt = ["a"; "b"; "c"; "d"; "a"];

s = "b";


counts = [2;2;2;2];

sum(s == txt(:,1))

temp = counts(s == txt(:,1) , 1);

counts(s == txt(:,1) , 1) = temp + 1;

unique(txt, "rows")