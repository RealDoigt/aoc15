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

auto canFind(ref Position[] positions, Position toFind)
{
    foreach(p; positions) if (p == toFind) return true;
    return false;
}

void day3Main()
{
    auto santa = Position(0, 0);    
    Position[] housesVisited;
    
    housesVisited ~= santa;
    
    foreach (arrow; "inputs/day3/input".readText.strip)
    {
        final switch (arrow)
        {
            case '>': ++santa.x; break;
            case '<': --santa.x; break;
            case 'v': ++santa.y; break;
            case '^': --santa.y; break;
        }
        
        if (!housesVisited.canFind(santa))
            housesVisited ~= santa;
    }
    
    "Santa visited at %d houses at least once each".writefln(housesVisited.length);
}