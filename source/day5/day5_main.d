module day5.main;
import common;
import day5;

void day5Main()
{
    ulong niceLines;
    
    foreach (line; "inputs/day5/input".readText.strip.split("\n"))
        if (line.isNice) ++niceLines;
        
    "There are %d nice lines.".writefln(niceLines);
}