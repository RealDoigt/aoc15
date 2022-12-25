module day3.position;

struct Position
{
    long x, y;
    
    bool opEquals(Position right) const
    {
        return x == right.x && y == right.y;
    }
    
    void move(char direction)
    {
        final switch (arrow)
        {
            case '>': ++x; break;
            case '<': --x; break;
            case 'v': ++y; break;
            case '^': --y; break;
        }
    }
}

auto canFind(ref Position[] positions, Position toFind)
{
    foreach(p; positions) if (p == toFind) return true;
    return false;
}

void add(ref Position[] positions, Position toAdd)
{
    if (!position.canFind(toAdd)) positions ~= toAdd;
}