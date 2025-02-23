#!/usr/bin/perl
#
#   This perl script is used to test Programming Exercises in CHEM 225.
#   Currently, the script is set up to check compilation and unit tests for
#   Programming Excercise 1.
#
#   
#   H. P. Hratchian, 2/6/2025
#   hhratchian@ucmerced.edu
#
#
#   Programming Exercise 1.
#
#   1-1.
#hph    system("echo input_01_01.txt | ./prgm_01_01.exe > .outfiles/out_01_01.out");
    system("printf 'input_01_01.txt\ninput_01_02.txt\n' | ./prgm_01_02.exe > .outfiles/out_01_02.out");
    $temp = `diff .outfiles/out_01_01.out .outfiles/out_01_01.txt`;
    print "Hrant - test 1: diff:\n$temp\n***DONE***\n\n";
    if($temp){
      push(@scores,"**FAIL**");
    }else{
      push(@scores,"PASS");
    }
#   1-2.
    system("echo -e \"input_01_01.txt\ninput_01_02.txt\" | ./prgm_01_02.exe > .outfiles/out_01_02.out");
    $temp = `diff .outfiles/out_01_02.out .outfiles/out_01_02.txt`;
    print "Hrant - test 2: diff:\n$temp\n***DONE***\n\n";
    if($temp){
      push(@scores,"**FAIL**");
    }else{
      push(@scores,"PASS");
    }
#   1-2.
    system("echo -e \"input_01_01.txt\ninput_01_02.txt\" | ./prgm_01_03.exe > .outfiles/out_01_03.out");
    $temp = `diff .outfiles/out_01_03.out .outfiles/out_01_03.txt`;
    print "Hrant - test 3: diff:\n$temp\n***DONE***\n\n";
    if($temp){
      push(@scores,"**FAIL**");
    }else{
      push(@scores,"PASS");
    }


#
#   Print out result table.
#
    printf "-" x 25 . "\n";
    printf "Test \tPass/Fail\n";
    printf "-" x 25 . "\n";
    foreach (@scores){
      $i += 1;
      printf "%s \t%s\n", $i,$scores[$i-1];
    }
    printf "=" x 25 . "\n";
