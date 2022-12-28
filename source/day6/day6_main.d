module day6.main;
import std.conv;
import common;

enum size = 1000;

void day6Main()
{
    foreach (line; "inputs/day6/input".readText.strip.split("\n"))
    {
        auto values = line.split(" ");
        
        auto stValues = 
        [
            values[1].to!size_t, 
            values[2].to!size_t, 
            values[3].to!size_t, 
            values[4].to!size_t
        ];
        
        setLights
        (
            stValues[0], 
            stValues[1], 
            stValues[2], 
            stValues[3], 
            values[0]
        );
        
        setAdjustableLights
        (
            stValues[0], 
            stValues[1], 
            stValues[2], 
            stValues[3], 
            values[0]
        );
    }
    
    "There are %d lights on!".writefln(countLightsOn);
    "The total brightness of the other lights is %d!".writefln(getTotalBrightness);
}