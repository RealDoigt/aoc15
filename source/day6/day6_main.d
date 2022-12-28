module day6.main;
import common;

static bool[1000][1000] lights;

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
    
    for (size_t y; y < 1000; ++y)
        for (size_t x; x < 1000; ++x)
            if (lights[y][x]) ++total;
    
    return total;
}

void day6Main()
{
    
}