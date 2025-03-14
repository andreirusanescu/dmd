module core.internal.aa.aaA;

extern (C) struct AA;
// {
//     Impl* impl;
//     alias impl this;

//     private @property bool empty() const pure nothrow @nogc @safe
//     {
//         return impl is null || !impl.length;
//     }
// }

private extern (C) void[] __aaGetX(scope AA* paa, const TypeInfo_AssociativeArray ti,
    const size_t valsz, scope const void* pkey, out bool found) nothrow pure;

private extern (C) void* _aaGetY(scope AA* paa, const TypeInfo_AssociativeArray ti,
    const size_t valsz, scope const void* pkey) nothrow pure
{
    bool found;
    return _aaGetX(paa, ti, valsz, pkey, found);
}
