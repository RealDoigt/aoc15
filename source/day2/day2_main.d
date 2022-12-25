module day2.main;
import std.conv;
import common;

void day2Main()
{
    Present*[] presents;
    
    foreach (line;  "inputs/day1/input".readText.strip.split("\n"))
    {
        auto numberStrings = line.split("x");
        presents ~= new Present
        (
            numberStrings[0].to!uint, 
            numberStrings[1].to!uint,
            numberStrings[2].to!uint
        );
    }
    
    "Total required paper will be %d feets!".writefln(presents.paperRequiredInFeet);
}