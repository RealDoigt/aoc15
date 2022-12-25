module day1.main;
import common;

void day1Main()
{
    long floor, basement;
    bool hasEnteredBasement;
    
    foreach (i, parenthesis; "inputs/day1/input".readText.strip)
    {
        if (parenthesis == '(') ++floor;
        
        else
        {
            --floor;
            if (!hasEnteredBasement && floor == -1) basement = i + 1;
        }
    }
    
    "Santa must go to floor %d. Santa first enters the basement at position %d.".writefln(floor, basement);
}