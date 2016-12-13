use Time::HiRes;

# check exist command
$result = system("banner is_exsits >& /dev/null");
if($result != 0){
    print "banner command not found\n";
    print "Please install banner becouse surely fun\n";
    exit -1;
}

$name = "mute100";
$color = 0;

for(my $i = 0;$i <= 9;$i++){
    exec("tput","setaf",$color)unless(fork());
    system("banner",$name.$i);

    if($i == 9){$i = 0}
    if($color == 8){$color = 0}

    $color++;
    Time::HiRes::sleep(0.1);
}
