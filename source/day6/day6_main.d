module day6.main;
import common;

enum size = 1000;
static bool[size][size] lights;

void setLight(size_t x, size_t y, string action)
{
    switch(action)
    {
        case "on":  lights[y][x] = true; break;
        case "off": lights[y][x] = false; break;
        default:    lights[y][x] = !lights[y][x];
    }
}

void setLights(size_t startX, size_t startY, size_t endX, size_t endY, string action)
{
    for (size_t y = startY; y <= endY; ++y)
        for (size_t x = startX; x <= endX; ++x)
            setLight(x, y, action);
}

auto count activeLights()
{
    ulong total;
    
    for (size_t y; y < size; ++y)
        for (size_t x; x < size; ++x)
            if (lights[y][x]) ++total;
    
    return total;
}

void day6Main()
{
    
}