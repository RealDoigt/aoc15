module day6.adjustable_lights;
import day6.main;

ulong[size][size] adjustableLights;

void setAdjustableLight(size_t x, size_t y, string action)
{
    switch(action)
    {
        case "on": ++adjustableLights[y][x]; break;
            
        case "off": 
            
            if(adjustableLights > 0)
                --adjustableLights[y][x]; 
        
            break;
            
        default: adjustableLights[y][x] += 2;
    }
}

void setAdjustableLights(size_t startX, size_t startY, size_t endX, size_t endY, string action)
{
    for (size_t y = startY; y <= endY; ++y)
        for (size_t x = startX; x <= endX; ++x)
            setAdjustableLight(x, y, action);
}

auto getTotalBrightness()
{
    ulong total;
    
    for (size_t y; y < size; ++y)
        for (size_t x; x < size; ++x)
            total += adjustableLights[y][x];
    
    return total;
}