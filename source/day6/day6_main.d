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

void day6Main()
{
}