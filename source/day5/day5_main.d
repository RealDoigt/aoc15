module day5.main;
import common;

auto containsVowels(string s)
{
    return s.canFind("a") || s.canFind("e") || s.canFind("i") || s.canFind("o") || s.canFind("u");
}

auto containsTwinPair(string s)
{
    for(int i = 1; i < s.length; ++i)
        if (s[i] == s[i - 1]) return true;
    
    return false;
}

auto containsForbiddenPair(string s)
{
    return s.canFind("ab") || s.canFind("cd") || s.canFind("pq") || s.canFind("xy");
}

auto isNice(string s)
{
    return s.containsVowels && s.containsTwinPair && !s.containsForbiddenPair;
}

void day5Main()
{
    ulong niceLines;
    
    foreach (line; "inputs/day5/input".readText.strip.split("\n"))
        if (line.isNice) ++niceLines;
        
    "There are %d nice lines.".writefln(niceLines);
}