import day1;
import day2;
import day3;
import std.algorithm.searching;

void main(string[] args)
{
    if (args.length == 1) day3Main;

    {
        if (args.canFind("1")) day1Main;
        if (args.canFind("2")) day2Main;
        if (args.canFind("3")) day3Main;
    }
}