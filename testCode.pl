#!/usr/bin/perl
#
#   This perl script is used to test Programming Exercises in CHEM 225.
#
#   
#   H. P. Hratchian
#   hhratchian@ucmerced.edu
#
#
#   Programming Exercise 1.
#
#   1-1.
    system("echo input_01_01.txt | ./prgm_01_01.exe >& .outfiles/out_01_01.out");

    system("echo Trying to run the program...");
    system("echo input_01_01.txt | ./prgm_01_01.exe");
    system("echo ls -a:");
    system("ls -a");
    system("echo ls .outfiles/:");
    system("ls .outfiles/");
    system("echo pwd:");
    system("pwd");


    $temp = `diff .outfiles/out_01_01.out .outfiles/out_01_01.txt`;
    if($temp){
      push(@scores,"**FAIL**");
    }else{
      push(@scores,"PASS");
    }

#hph+
##   1-2.
#    system("echo -e \"input_01_01.txt\ninput_01_02.txt\" | ./a.exe > .outfiles/out_01_02.out");
#    system("echo -e \"input_01_01.txt\ninput_01_02.txt\" | ./a.exe ");
#    $temp = `diff .outfiles/out_01_02.out .outfiles/out_01_02.txt`;
#    if($temp){
#      push(@scores,"**FAIL**");
#    }else{
#      push(@scores,"PASS");
#    }
##   1-2.
#    system("echo -e \"input_01_01.txt\ninput_01_02.txt\" | ./prgm_01_03.exe > .outfiles/out_01_03.out");
#    $temp = `diff .outfiles/out_01_03.out .outfiles/out_01_03.txt`;
#    if($temp){
#      push(@scores,"**FAIL**");
#    }else{
#      push(@scores,"PASS");
#    }
#
#
##
##   Print out result table.
##
#    printf "-" x 25 . "\n";
#    printf "Test \tPass/Fail\n";
#    printf "-" x 25 . "\n";
#    foreach (@scores){
#      $i += 1;
#      printf "%s \t%s\n", $i,$scores[$i-1];
#    }
#    printf "=" x 25 . "\n";
#hph-
