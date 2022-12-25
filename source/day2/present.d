module day2.present;

struct Present
{
    immutable uint length, width, height;
    
    this(uint l, uint w, uint h)
    {
        length = l;
        width  = w;
        height = h;
    }
    
    auto smallestSideArea()
    {
        auto side1 = length * width, 
             side2 = length * height, 
             side3 =  width * height;
        
        if (side1 < side2 && side1 < side3) return side1;
        if (side2 < side3) return side2;
        return side3;
    }
    
    auto area()
    {
        return 2 * length * width + 2 * width * height + 2 * height * length;
    }
    
    auto paperRequiredInFeet()
    {
        return area + smallestSideArea;
    }
    
    auto ribbonWrapFeet()
    {
        auto l = length << 1,
             w = width  << 1,
             h = height << 1,
             side1 = l + w, 
             side2 = l + h,
             side3 = w + h;
             
        if (side1 < side2 && side1 < side3) return side1;
        if (side2 < side3) return side2;
        return side3;
    }
    
    auto ribbonBowFeet()
    {
        return length * width * height;
    }
    
    auto ribbonRequiredInFeet()
    {
        return ribbonWrapFeet + ribbonBowFeet;
    }
}

auto paperRequiredInFeet(Present*[] presents)
{
    ulong total;
    
    foreach(p; presents) total += p.paperRequiredInFeet;
    return total;
}

auto ribbonRequiredInFeet(Present*[] presents)
{
    ulong total;
    
    foreach(p; presents) total += p.ribbonRequiredInFeet;
    return total;
}