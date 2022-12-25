module day1.main;
import common;

void day1Main()
{
    long floor;
    
    foreach (parenthesis; "inputs/day1/input".readText.strip)
    {
        if (parenthesis == '(') ++floor;
        else --floor;
    }
    
    "Santa must go to floor %d".writefln(floor);
}