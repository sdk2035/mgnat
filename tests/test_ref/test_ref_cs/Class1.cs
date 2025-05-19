using System;

namespace test_ref_cs
{
	/// <summary>
	/// Summary description for Class1.
	/// </summary>
	public class Class1
	{
		public Class1()
		{
			//
			// TODO: Add constructor logic here
			//
		}
		public static void test_int(ref int x)
		{
			x = 3;
		}

		public static void test_uint(ref uint x)
		{
			x = 4;
		}
		public static void test_bool(ref bool x)
		{
			x = true;
		}
	}
}
