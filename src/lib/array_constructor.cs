//////////////////////////////////////////////////////////////////////////////
// create a constructor for multi-dimensional arrays of objects
//
// By: Martin C. Carlisle
// December 10, 2003
//
//////////////////////////////////////////////////////////////////////////////

using System;

namespace mgnat.adalib {


public sealed class array_constructor  {
        private static string type_name;
        private static System.Reflection.Assembly caller;
        public static void set_type_name(string the_type_name)
        {
           type_name = the_type_name;
        }
	private static string dimensions (int num_dimensions)
	{
		string s = "";
		for (int i=0; i<num_dimensions; i++)
		{
			s = s + "[]";
		}
		return s;
	}

	public static Array make_array(params int[] x)
	{
		Array result;
		int num_dimensions = x.Length;
		System.Type t1 = System.Type.GetType(type_name +
			dimensions(num_dimensions-1));
                if (t1==null)
                {
                   t1=caller.GetType(type_name +
                      dimensions(num_dimensions-1));
                }
		result = System.Array.CreateInstance(t1,x[0]);
		for (int i=0; i<x[0]; i++)
		{
			int[] y = new int[x.Length-1];
			for (int j=0; j<x.Length-1; j++)
			{
				y[j] = x[j+1];
			}
			if (x.Length>1)
			{
				result.SetValue(make_array(y),i);
			}
		}
		return result;
	}
	public static Array make_array(int x)
        {
           caller = System.Reflection.Assembly.GetCallingAssembly();
           int[] args = new int[1];
           args[0] = x;
           return make_array(args);
        }
	public static Array make_array(int x,int y)
        {
           caller = System.Reflection.Assembly.GetCallingAssembly();
           int[] args = new int[2];
           args[0] = x;
           args[1] = y;
           return make_array(args);
        }
	public static Array make_array(int x,int y,int z)
        {
           caller = System.Reflection.Assembly.GetCallingAssembly();
           int[] args = new int[3];
           args[0] = x;
           args[1] = y;
           args[2] = z;
           return make_array(args);
        }
	public static Array make_array(int x,int y,int z,int w)
        {
           caller = System.Reflection.Assembly.GetCallingAssembly();
           int[] args = new int[4];
           args[0] = x;
           args[1] = y;
           args[2] = z;
           args[3] = w;
           return make_array(args);
        }
	public static Array make_array(int x,int y,int z,int w,int v)
        {
           caller = System.Reflection.Assembly.GetCallingAssembly();
           int[] args = new int[5];
           args[0] = x;
           args[1] = y;
           args[2] = z;
           args[3] = w;
           args[4] = v;
           return make_array(args);
        }
	public static Array make_array(int x,int y,int z,int w,int v, int u)
        {
           caller = System.Reflection.Assembly.GetCallingAssembly();
           int[] args = new int[6];
           args[0] = x;
           args[1] = y;
           args[2] = z;
           args[3] = w;
           args[4] = v;
           args[5] = u;
           return make_array(args);
        }
	public static Array make_array(int x,int y,int z,int w,int v, int u, int t)
        {
           caller = System.Reflection.Assembly.GetCallingAssembly();
           int[] args = new int[7];
           args[0] = x;
           args[1] = y;
           args[2] = z;
           args[3] = w;
           args[4] = v;
           args[5] = u;
           args[6] = t;
           return make_array(args);
        }
}

}
