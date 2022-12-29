import day1;
import day2;
import day3;
import day5;
import day6;
import day7;
import std.algorithm.searching;

void main(string[] args)
{
    if (args.length == 1) day7Main;
    
    else
    {
        if (args.canFind("1")) day1Main;
        if (args.canFind("2")) day2Main;
        if (args.canFind("3")) day3Main;
        if (args.canFind("5")) day5Main;
        if (args.canFind("6")) day6Main;
        if (args.canFind("7")) day7Main;
    }
}