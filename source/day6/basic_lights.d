module day6.stupid_lights;
import day6.main;

bool[size][size] lights;

void setLight(ulong x, ulong y, string action)
{
    switch(action)
    {
        case "on":  lights[y][x] = true; break;
        case "off": lights[y][x] = false; break;
        default:    lights[y][x] = !lights[y][x];
    }
}

void setLights(ulong startX, ulong startY, ulong endX, ulong endY, string action)
{
    for (ulong y = startY; y <= endY; ++y)
        for (ulong x = startX; x <= endX; ++x)
            setLight(x, y, action);
}

auto countLightsOn()
{
    ulong total;
    
    for (ulong y; y < size; ++y)
        for (ulong x; x < size; ++x)
            if (lights[y][x]) ++total;
    
    return total;
}