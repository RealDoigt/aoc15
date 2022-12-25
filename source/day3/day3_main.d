module day3.main;
import common;

struct Position
{
    long x, y;
    
    bool opEquals(Position right) const
    {
        return x == right.x && y == right.y;
    }
}

void day3Main()
{
    santa = Position(0, 0);    
    Position[] housesVisited;
    
    housesVisited ~= santa;
    
    foreach (line; "inputs/day2/input".readText.strip)
    {
        
    }
}