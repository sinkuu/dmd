struct S { T t; U u; }
struct T { int[4] sarr; }
class U  { int[4] sarr; }

int[] func(ref int[4] s1, out int[4] s2)
{
    S s = S(T(), new U());
    T* t = new T;

    int[4] sarr;
    int[] ok() { return sarr[]; }

    return sarr[]; // error
    return s.t.sarr[]; // error
    return t.sarr[];
    return s.u.sarr[];
    return s1[];
    return s2[];
}

/*
TEST_OUTPUT:
---
fail_compilation/fail4451.d(13): Error: escaping reference to local static array 'sarr'
fail_compilation/fail4451.d(14): Error: escaping reference to local static array 's.t.sarr'
---
*/

