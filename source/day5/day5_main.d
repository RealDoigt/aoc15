module day5.main;
import common;

auto containsVowels(string s)
{
    return s.canFind("a") || s.canFind("e") || s.canFind("i") || s.canFind("o") || s.canFind("u");
}

auto isNice(string s)
{
}

void day5Main()
{
    ulong nice;
    
    foreach (line; "inputs/day5/input".readText.strip.split("\n"))
        if
}