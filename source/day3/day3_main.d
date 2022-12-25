module day3.main;
import common;
import day3;

void day3Main()
{
    auto santa = Position(0, 0), arrows = "inputs/day3/input".readText.strip;    
    Position[] housesVisited;
    
    housesVisited ~= santa;
    
    foreach (arrow; arrows)
    {
        santa.move(arrow);
        
        if (!housesVisited.canFind(santa))
            housesVisited ~= santa;
    }
    
    "Santa visited at %d houses at least once each the first time around.".writefln(housesVisited.length);
    
    santa = Position(0, 0);
    housesVisited = [] ~ santa;
    auto roboSanta = Position(0, 0);
    
    foreach(i, arrow; arrows)
    {
        if (i % 2 == 0)
        {
            santa.move(arrow);
        }
    }
}