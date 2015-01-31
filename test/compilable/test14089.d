void test()
{
    Test[int] aa;
    Test b = aa[1] = Test();
}

struct Test
{
    Test opAssign(Test val)
    {
        return this;
    }
}

