module day2.present;

struct Present
{
    immutable uint length, width, height;
    
    this(uint l, w, h)
    {
        length = l;
        width  = w;
        height = h;
    }
    
    auto smallestSide()
    {
        auto side1 = l * w, side2 = l * h, side3 = w * h;
        
        if (side1 < side2 && side1 < side3) return side1;
        if (side2 < side3) return side2;
        return side3;
    }
}