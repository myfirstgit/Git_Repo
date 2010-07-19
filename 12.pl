$file='D:\Git\Git_Repo\README1';
$dir='D:\Git\Git_Repo';
#open(INFO,"$file")||die "Cannotopen$file!\n";
opendir(TD,"$dir")||die "Cannotopen$dir!\n";
while($file1=readdir TD){
open(FILEH,">>$dir/$file1");
print FILEH "add success";
close(FILEH);
}
closedir(TD);
@source=<INFO>;
 
print DEST "copy ok";
$_="copy success";
if(/success/)
{print "\"$_\" contains success";
s/success/ok/;
@words=map{split '',$_} @source;
print @words;
&yesno;

}

sub yesno{
print "Are you sure (Y|S)?";
$answer=<STDIN>;
}

close(INFO);
close(DEST);

  