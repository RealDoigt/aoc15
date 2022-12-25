import day1;
import day2;
import std.algorithm.searching;

void main(string[] args)
{
    if (args.length == 1) day2Main;

    {
        if (args.canFind("1")) day1Main;
        if (args.canFind("2")) day2Main;
    }
}