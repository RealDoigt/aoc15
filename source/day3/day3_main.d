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
    auto santa = Position(0, 0);    
    Position[] housesVisited;
    
    housesVisited ~= santa;
    
    foreach (arrow; "inputs/day2/input".readText.strip)
    {
        final switch (arrow)
        {
            case '>': ++santa.x;
            case '<': --santa.x;
            case 'v': ++santa.y;
            case '^': --santa.y;
        }
        
        if (!housesVisited.canFind(santa))
            housesVisited ~= santa;
    }
    
    "Santa visited at %d houses at least once each".writefln(housesVisited);
}