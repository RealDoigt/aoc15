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
}