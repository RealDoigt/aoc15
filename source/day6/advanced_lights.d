module day6.adjustable_lights;
import day6.main;

ulong[size][size] adjustableLights;

void setAdjustableLight(ulong x, ulong y, string action)
{
    switch(action)
    {
        case "on": ++adjustableLights[y][x]; break;
            
        case "off": 
            
            if(adjustableLights[y][x] > 0)
                --adjustableLights[y][x]; 
        
            break;
            
        default: adjustableLights[y][x] += 2;
    }
}

void setAdjustableLights(ulong startX, ulong startY, ulong endX, ulong endY, string action)
{
    for (ulong y = startY; y <= endY; ++y)
        for (ulong x = startX; x <= endX; ++x)
            setAdjustableLight(x, y, action);
}

auto getTotalBrightness()
{
    ulong total;
    
    for (ulong y; y < size; ++y)
        for (ulong x; x < size; ++x)
            total += adjustableLights[y][x];
    
    return total;
}