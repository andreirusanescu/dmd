module core.internal.aa.aaA;

extern (C) struct AA {
    void* impl;
}
// {
//     Impl* impl;
//     alias impl this;

//     private @property bool empty() const pure nothrow @nogc @safe
//     {
//         return impl is null || !impl.length;
//     }
// }

private extern (C) void* _aaGetX(scope AA* aa, const TypeInfo_AssociativeArray ti,
    const size_t valsz, scope const void* pkey, out bool found) nothrow pure;

/** 
    paa is the hashtable, ti has to be eliminated, as the first argument is a template
    valsz - size of value
    ti - type id of T
*/
void* _aaGetY(T)(scope T aa, const size_t valsz, scope const void* pkey) nothrow pure
{
    bool found;
    return _aaGetX(cast(AA*) &aa, cast(TypeInfo_AssociativeArray) typeid(T), valsz, pkey, found);
}
