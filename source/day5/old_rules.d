module day5.old_rules;
import std.algorithm;

auto contains3Vowels(string s)
{
    int count;
    
    foreach(c; s)
    {
        switch (c)
        {
            case 'a','e','i','o','u': ++count; break;
            default: break;
        }
    }
    
    return count >= 3;
}

auto containsTwinPair(string s)
{
    for(int i = 1; i < s.length; ++i)
        if (s[i] == s[i - 1]) return true;
    
    return false;
}

auto containsForbiddenPair(string s)
{
    return s.canFind("ab") || s.canFind("cd") || s.canFind("pq") || s.canFind("xy");
}

auto isNice(string s)
{
    return s.contains3Vowels && s.containsTwinPair && !s.containsForbiddenPair;
}