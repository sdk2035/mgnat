//////////////////////////////////////////////////////////////////////////////
//                                                                          //
//                         GNAT COMPILER COMPONENTS                         //
//                                                                          //
//                            G N A T _ l i b c                             //
//                                                                          //
//                            $Revision: 1.25 $
//                                                                          //
//          Copyright (C) 1998-2000 Ada Core Technologies, Inc.             //
//                                                                          //
// GNAT is free software;  you can  redistribute it  and/or modify it under //
// terms of the  GNU General Public License as published  by the Free Soft- //
// ware  Foundation;  either version 2,  or (at your option) any later ver- //
// sion.  GNAT is distributed in the hope that it will be useful, but WITH- //
// OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY //
// or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License //
// for  more details.  You should have  received  a copy of the GNU General //
// Public License  distributed with GNAT;  see file COPYING.  If not, write //
// to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, //
// MA 02111-1307, USA.                                                      //
//                                                                          //
// JGNAT - The GNAT Ada 95 toolchain for the Java Virtual Machine is        //
//         maintained by Ada Core Technologies, Inc. - http://www.gnat.com  //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

//  This Java class is part of the JGNAT library.

//  The GNAT library sources have a number of "pragma Import (C, ..)" sprinkled
//  throughout. Some of these C routines are part of the C library, others are
//  part of the C sources of GNAT.  The purpose of this Java class is to give a
//  Java-compatible definition for all the C routines used in the GNAT sources
//  which are part of the JGNAT library. 

//  The actual mapping between the "pragma Import (C, ...)" routines and the
//  methods in this class is performed by the JGNAT compiler:  whenever an Ada
//  subprogram, say <routine>, is imported from C, for instance:
//
//             pragma Import (C, <routine>, <C_routine>);
//
//  the JGNAT compiler transforms all Ada calls to <routine> into calls to a
//  public static method mgnat.adalib.GNAT_libc.<C_routine> with the
//  appropriate parameter signature.
using System.IO;
using System;
using system;
using System.Windows.Forms;
using System.Collections;
using Microsoft.Win32;

namespace mgnat.adalib {



public class GNAT_libc {

   ///////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////
   ////                                               ////
   ////  General Purpose Routines Used in this Class  ////
   ////                                               ////     
   ///////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////

   //  Throws an exception if `b' is false

   private static void assert (bool b) 
   {
      if (! b)
	 raise ("assert failure");
   }
   
   //  Copy String `name' into a byte array `buffer' which is already allocated
   //  and add zero after the last character of name.

   private static void copy (String name, byte[] buffer) 
   {
      int k;

      for (k = 0; k < name.Length; k++)
	 buffer [k] = (byte) name[k];

      buffer [k] = 0;
   }

   //  size_t strlen (const char *)

   private static int strlen (byte[] name) 
   {
      int zero_pos;

      for (zero_pos = 0; zero_pos < name.Length; zero_pos++) {
	 if (name [zero_pos] == 0)
	    return zero_pos;
      }
      return name.Length;
   }
   public static int strlen (Object name) {
      byte [] str = (byte []) name;
      return strlen(str);
   }

   //  Throws a java.lang.Error with message `msg'

   private static void raise (String msg) 
   {
      throw new System.SystemException (msg);
   }
   

   //  Returns 1 if `b' is true, 0 otherwise

   private static int to_int (bool b) 
   {
      return b ? 1 : 0;
   }


   ////////////////////////////////////////////////////////////////////////
   ////////////////////////////////////////////////////////////////////////
   ////                                                                ////
   ////  General Purpose Routines Used in Several JGNAT Library Units  ////
   ////                                                                ////
   ////////////////////////////////////////////////////////////////////////
   ////////////////////////////////////////////////////////////////////////

   //  The following routines are used to convert Ada strings into Java Strings

   public static String to_string (byte[] ada_string) {
      int i;
      char[] result = new char [strlen(ada_string)];
      for (i=0; i<result.Length; i++) {
         result[i] = (char) ada_string[i];
      }
      return new String (result);
   }

   public static String to_string_with_null (byte[] ada_string) {
	int i;
	char[] result = new char [ada_string.Length];
	for (i=0; i<result.Length; i++) 
	{
		result[i] = (char) ada_string[i];
	}
	return new String (result);
   }

   public static byte [] to_string (String java_string) {
      int i;
      byte[] result = new byte [java_string.Length];
      for (i=0; i<java_string.Length; i++) {
         result[i] = (byte) java_string[i];
      }
      return result;
   }

   public static void getBytes(String s, int srcBegin, int srcEnd, byte[] dst,
      int dstBegin) {
      int i;
      for (i=srcBegin; i<srcEnd; i++) {
         dst[(i-srcBegin)+dstBegin] = (byte) s[i];
      }
   }
   public static void getChars(String s, int srcBegin, int srcEnd, char[] dst,
      int dstBegin) {
      int i;
      for (i=srcBegin; i<srcEnd; i++) {
         dst[(i-srcBegin)+dstBegin] = s[i];
      }
   }
   //  Given a java.lang.Class object, the following returns an array of bytes
   //  Given a java.lang.Class object, the following returns an array of bytes
   //  containing the fully qualified name of that class. Because of the way
   //  JGNAT maps Ada tagged (and untagged) records and exceptions to Java
   //  classes this routine is use to implement Ada.Tags.Expanded_Name and
   //  Ada.Exceptions.Exception_Name. 

   //  More specifically if the fully qualified name of an Ada tagged type or
   //  exception D is X.Y.Z.D, where X, Y and Z are all packages, then JGNAT
   //  maps D into class x$y$z$d.class. If, on the other hand, D is declared
   //  inside an inner subprogram Z, then JGNAT adds a `__nnn', where `nnn' is
   //  some unique number, to the end of inner subprogram Z in case Z is
   //  overloaded. For instance if X is a package, Y a procedure declared
   //  inside X and Z an inner procedure of Y which is overloaded with another
   //  procdeure nested inside Y, JGNAT will generate file x$y$z__2$d.class.
   //  After retrieving the external_tag of a java class, the code below
   //  replaces all `$' with `.', removes all `__nnn' and converts the final
   //  string to upper case letters.

   public static byte [] ada_name (Object t) {
      //  First get the actual external tag
      byte[] s  = external_tag (t);
      byte[] r  = new byte [s.Length];

      int r_pos = 0;

      for (int k = 0; k < s.Length; k++) {
	 if ((s [k] == (byte) '_') && (s [k + 1] == (byte) '_')) {
	    k = k + 2;
	    while ((s [k] >= (byte) '0') && (s [k] <= (byte) '9'))
	       k++;
	    k--;
	 }
	 else {
	    if (s [k] == (byte) '$')
	       r [r_pos] = (byte) '.';
	    else 
	       r [r_pos] = (byte) System.Char.ToUpper ((char) s [k]);
	    r_pos++;
	 }
      }

      return r;
   }

   //  Given a JGNAT System.Address (that is a reference to an Object) this
   //  routine returns the hash code integer associated with this reference.
   //  Typically this is the address of the Object, but this is not guaranteed
   //  by the Java API. 

    public static int hash_code (Object address) {
       return address.GetHashCode ();
    }


   /////////////////////////////////////
   /////////////////////////////////////
   ////                             ////
   ////  Entities in libc <math.h>  ////
   ////                             ////
   /////////////////////////////////////
   /////////////////////////////////////

   public static double sin  (double a) { return System.Math.Sin (a); }
   public static double cos  (double a) { return System.Math.Cos (a); }
   public static double tan  (double a) { return System.Math.Tan (a); }
   public static double asin (double a) { return System.Math.Asin (a); }
   public static double acos (double a) { return System.Math.Acos (a); }
   public static double atan (double a) { return System.Math.Atan (a); }
   public static double exp  (double a) { return System.Math.Exp (a); }
   public static double log  (double a) { return System.Math.Log (a); }
   public static double sqrt (double a) { return System.Math.Sqrt (a); }
   public static double pow  (double a, double b) { return System.Math.Pow (a, b); }

   public static double sinh (double a) 
   {
      return (System.Math.Exp (a) - System.Math.Exp (-a)) * 0.5;
   }
   
   public static double cosh (double a) 
   {
      return (System.Math.Exp (a) + System.Math.Exp (-a)) * 0.5;
   }
   
   public static double tanh (double a) 
   {
      return (System.Math.Exp (a) - System.Math.Exp (-a))/
             (System.Math.Exp (a) + System.Math.Exp (-a));
   }


   ///////////////////////////////////////
   ///////////////////////////////////////
   ////                               ////
   ////  Entities in libc <stdlib.h>  ////
   ////                               ////
   ///////////////////////////////////////
   ///////////////////////////////////////

   private static int EOF      = -1;
   private static int _IOFBF   = 0;
   private static int _IOLBF   = 1;
   private static int _IONBF   = 2;
   private static int SEEK_CUR = 1;
   private static int SEEK_END = 2;
   private static int SEEK_SET = 0;
   private static int L_tmpnam = 256;

#if !COMPACT
   private static PushbackReader stdin = new mgnat.adalib.PushbackReader(Console.In);
#endif


   //  WARNING: The following is NOT a general implementation of the C routines
   //  in <stdlib.h>. The following implementation takes advantage of the way
   //  these routines are used in the GNAT sources.

   //  With this implementation the user can create and package an Ada applet
   //  on a UNIX workstation and run it on a Windows platform (which is the
   //  whole point of the JVM & the Java API).  The difference in text file
   //  formats between UNIX and Windows are hidden in the implementation of the
   //  Java API.

   //  void clearerr (FILE *stream)

   public static void clearerr (Object stream) 
   {
      //  Every call in the GNAT sources to ferror looks (in spirit) like
      //
      //     if ferror (stream) /= 0 then
      //        raise Device_Error;
      //
      //  Because this functionality is not directly available in the Java API
      //  the C routines that are used in the GNAT sources and that may cause
      //  ferror to return a non zero value (fgetc, getc_immediate, 
      //  getc_imediate_nowait, and fread) are implemented as follows:
      //
      //        getc (...) {
      //           try {
      //             ... // try to get the byte
      //           }
      //           catch (IOException e) {
      //              throw new ada$io_exceptions$device_error ();
      //           }
      //        }
      //
      //  All this means that our implementation of ferror can safely return 0.
      // As a result this routine does noting.
   }

   private static System.Type PushbackReaderType = typeof(PushbackReader);
   private static System.Type TextWriterType = typeof(System.IO.TextWriter);
   private static System.Type TextReaderType = typeof(System.IO.TextReader);
   private static System.Type BinaryReaderType = typeof(System.IO.BinaryReader);
   private static System.Type BinaryWriterType = typeof(System.IO.BinaryWriter);
   private static System.Type Object_FileType = typeof(Object_File);
   private static System.Type IntType = typeof(Int);
   private static System.Type LngType = typeof(Lng);
   private static System.Type FltType = typeof(Flt);
   private static System.Type DblType = typeof(Dbl);

   //  int fclose (FILE *stream)

   public static int fclose (Object stream) 
   {
      try {
	 if (PushbackReaderType.IsInstanceOfType(stream)) {
	    ((PushbackReader) stream).Close ();
	 }
	 else if (TextWriterType.IsInstanceOfType(stream)) {
	    ((System.IO.TextWriter) stream).Close ();
	 }
	 else if (BinaryReaderType.IsInstanceOfType(stream)) {
	    ((System.IO.BinaryReader) stream).Close ();
	 }
	 else if (BinaryWriterType.IsInstanceOfType(stream)) {
	    ((System.IO.BinaryWriter) stream).Close ();
	 }
	 else if (Object_FileType.IsInstanceOfType(stream)) {
	    ((Object_File) stream).Close ();
	 }
	 else
	    assert (false);
	 
	 return 0;
      }
      catch (System.Exception) {
	 return EOF;
      }
   }
   
   //  FILE *fdopen (int handle, const char *mode)
   //  UNIMPLEMENTED - not needed by the JGNAT library

   //  int feof (FILE *stream)

   public static int feof (Object stream) { 
      int c = ungetc (fgetc (stream), stream);
      return to_int (c == EOF);
   }

   //  int ferror (FILE *stream)

   public static int ferror (Object stream) { 
      //  See comment inside method `clearerr' in this class
      return 0;
   }

   //  int fflush (FILE *stream)

   public static int fflush (Object stream) 
   {
	 if (TextWriterType.IsInstanceOfType(stream)) {
	    ((System.IO.TextWriter) stream).Flush ();
	 }
	 else if (BinaryWriterType.IsInstanceOfType(stream)) {
	    ((System.IO.BinaryWriter) stream).Flush ();
	 }
	 else if (Object_FileType.IsInstanceOfType(stream)) {
	    // do nothing
	 }
       else
	   assert (false);
	 
       return 0;
   }

   //  int fgetc (FILE *stream)

   public static int fgetc (Object stream) {
      try {
	 if (TextReaderType.IsInstanceOfType(stream)) {
	    return ((System.IO.TextReader) stream).Read ();
	 }
	 else if (PushbackReaderType.IsInstanceOfType(stream)) {
	    return ((PushbackReader) stream).Read ();
	 }
	 else {
	    assert (false);
	    return 0;
	 }
      }
      catch (System.Exception) {
	 throw new ada.io_exceptions.device_error ();
      }
   }

   //  char *fgets (char *s, int n, FILE *stream)
   //  UNIMPLEMENTED - not needed by the JGNAT library

   //  int fileno (FILE *stream)

   public static int fileno (Object stream) {
#if !COMPACT
      if (stream == stdin) {
	 return 0;
      }
      else if (stream == Console.Out) {
	 return 1;
      }
      else if (stream == Console.Error) {
	 return 2;
      }
      else {
	 //  ??? for now always associate the samae handle with a stream
	 return 99;
      }
#else
      return 99;
#endif
   }
   
   //  Special method to allow the top level file I/O pacakges
   //  to communicate the class of file API to be used by fopen
   //  (e.g., RandomAccessFile, Object_File). This avoids making
   //  JGNAT-specific changes to the lower-level file support
   //  packages such as System.File_IO, etc (it would be nice
   //  if the file classification could be simply passed to
   //  fopen as part of the mode info).

   public static byte file_class = (byte) '0';

   public static void set_file_class (byte fclass) {
      file_class = fclass;
   }

   //  FILE *fopen (const char *filename, const char *mode)

   public static object fopen (object FILENAME, object MODE) 
   {
      byte[] filename  = (byte []) FILENAME;
      byte[] mode      = (byte []) MODE;

      int end = strlen (mode) - 1;

      bool update      = (mode [1]   == (byte) '+');
      bool text_mode   = (mode [end] == (byte) 't');
      bool binary_mode = (mode [end] == (byte) 'b');

      assert (text_mode || binary_mode);

      bool read_only    = (mode [0] == (byte) 'r') && !update;
      bool write_only   = (mode [0] == (byte) 'w') && !update;
      bool read_update  = (mode [0] == (byte) 'r') && update;
      bool write_update = (mode [0] == (byte) 'w') && update;


      if (text_mode) 
      {
	   //  When opening a text file in read mode we must provide "ungetc"
	   //  capabilities (this is provided by the PushBackReader). 
	   //  Furthermore, we must provide the ability of reading end-of-lines
	   //  in a portable manner (this is provided by the LineNumberReader).
		   //  Ensure that the file_class is reset, in case it was set
	   //  to 'S' by freopen.
		   file_class = (byte) '0';
		   if (read_only) 
	   {
		   try 
		   {
		   return
			   new PushbackReader 
			   (new System.IO.StreamReader (
                              File.Open(to_string(filename),FileMode.Open,
                                 FileAccess.Read)));
		   }
		   catch (System.Exception) { 
                      return null;
                   }
	   }
			   //  When opening a text file in append mode we must first open it as a
		   //  random file and position the file head to the end before creating
		   //  a regular PrintStream. This is because the implementation of fseek
		   //  in this class is not capable of handling the SEEK_END case for
		   //  text streams.
		   else if (read_update) 
	   {
		   try 
		   {
			   System.IO.FileStream r = File.Open (to_string(filename), FileMode.Append);
			   return new StreamWriter(r);
		   }
		   catch (System.Exception) 
		   { 
                      return null;
		   }
	   }
	   //  When opening a text file in write mode we must create it as a
	   //  PrintStream to be compatible with the way Standard.out is created.
	   else if (write_only || write_update) 
	   {
   	   try {
 
                return new StreamWriter (File.Create(to_string(filename))); 
                }
			   catch (System.Exception) 
			   { 
				  return null; 
			   }
		   }

		   else 
		   {
			   assert (false);
		   }
	   }

	   else if (binary_mode && file_class == (byte) 'S') 
	   {

		   file_class = (byte) '0';

		   try 
		   { 
			   if (read_only) 
			   {
				   return new BinaryReader(File.Open(to_string(filename), FileMode.Open, FileAccess.Read)); 
			   }
			   else if (read_update) 
			   {
				   System.IO.FileStream r = File.Open (to_string(filename), FileMode.Append);
				   return new BinaryWriter(r); 
			   }
			   else 
			   {
				   return new BinaryWriter(File.Create(to_string(filename))); 
			   }
		   }
		   catch (System.Exception) 
		   { 
			   return null; 
		   }
	   }

		   //  Open an Object_IO file (supports Sequential_IO and Direct_IO files)

	   else 
	   {
		   try 
		   {
			   return new Object_File (to_string(filename), 
                              mode [0] == (byte) 'w', update);
		   }
		   catch (System.Exception e) 
		   { 
			   return null; 
		   }
	   }

      return null;
   }

   //  int fputc (int c, FILE *stream)

   public static int fputc (int c, Object stream) {
      try {
	 if (TextWriterType.IsInstanceOfType(stream)) {
	    if (c == 10)
	       ((TextWriter) stream).WriteLine();
	    else
	       ((TextWriter) stream).Write ((char) c);
	 }
	 else if (BinaryWriterType.IsInstanceOfType(stream)) {
	    ((BinaryWriter) stream).Write (c);
	 }
	 else
	    assert (false);
	 
	 return c;
      }
      catch (System.Exception) {
	 throw new ada.io_exceptions.device_error ();
      }
   }

   //  int fputs (const char *s, FILE *stream)
   //  UNIMPLEMENTED - not needed by the JGNAT library

   //  size_t fread (void *ptr, size_t size, size_t nobj, FILE *stream)

   public static int fread (Object ptr, int size, int nobj, Object stream)
   {
      //  GNAT sources use a size of 1
      assert (size == 1);
      
      try {
	 if (IntType.IsInstanceOfType(ptr)) {
	    assert (nobj == 4);
	    ((Int) ptr).all = ((BinaryReader) stream).ReadInt32 ();
	 }
	 else if (LngType.IsInstanceOfType(ptr)) {
	    assert (nobj == 8);
	    ((Lng) ptr).all = ((BinaryReader) stream).ReadInt64 ();
	 }
	 else if (FltType.IsInstanceOfType(ptr)) {
	    assert (nobj == 4);
	    ((Flt) ptr).all = ((BinaryReader) stream).ReadSingle ();
	 }
	 else if (DblType.IsInstanceOfType(ptr)) {
	    assert (nobj == 8);
	    ((Dbl) ptr).all = ((BinaryReader) stream).ReadDouble ();
	 }
	 else {
            return fread (ptr, 0, 1, nobj, stream);
	 }
	 return nobj;
      }
      catch (System.Exception) {
	 throw new ada.io_exceptions.device_error ();
      }
   }
   
   //  This function does not exist in the C library but has been introduced
   //  because the GNAT sources take the address an element within the array
   //  and pass that address to fread to indicate that the array should be
   //  filled from that element on. This is not possible in the JVM and the
   //  following routine works exactly like fread except that it puts elements
   //  in buffer `ptr' at starting index `index'.

   public static int fread (Object ptr, 
			    int index, 
			    int size, int nobj, Object stream)
   {
      byte[] buf = (byte []) ptr;
      int  nb_bytes_read = 0;
      
      //  GNAT sources use a size of 1
      assert (size == 1);
      
      try {
	 if (PushbackReaderType.IsInstanceOfType(stream)) {
	    PushbackReader text_stream = (PushbackReader) stream;
	    int k;
	    int c;
	    
	    for (k = 0; k < nobj; k++) {
	       c = text_stream.Read ();

	       if (c != EOF)
		  buf [index + k] = (byte) c;
	       else
		  return nb_bytes_read;

               nb_bytes_read++;
	    }

            return nb_bytes_read;
	 }
	 else if (BinaryReaderType.IsInstanceOfType(stream)) {
	    return ((BinaryReader) stream).Read (buf, index, nobj);
	 }
	 else
	    assert (false);
      }
      catch (System.Exception) {
	 throw new ada.io_exceptions.device_error ();
      }
      return 0;
   }
   
   //  FILE *freopen (const char *filename, const char *mode, FILE *stream)

   public static Object freopen (Object filename, Object mode, Object stream) 
   {
      //  In the implementation of freopen we do NOT associate the returned
      //  stream with the input stream `stream' because GNAT sources do not
      //  need this and it is too much work to do so.

      fclose (stream);

      //  This is a kludge to ensure that Reset will work properly
      //  for stream files. The file could actually be a text file
      //  (opened for read/update), but fopen will check for the
      //  text file case first, so there won't be any problem with
      //  setting the file class to 'S' in that case.

      if (BinaryReaderType.IsInstanceOfType(stream) ||
          BinaryWriterType.IsInstanceOfType(stream)) {
         set_file_class ((byte) 'S');
      }

      return fopen (filename, mode);
   }

   //  int fseek (FILE *stream, long offset, int origin)

   public static int fseek (Object stream, long offset, int origin) 
   {
      bool stream_is_binary = (BinaryReaderType.IsInstanceOfType(stream))
                              || (BinaryWriterType.IsInstanceOfType(stream))
                              || (Object_FileType.IsInstanceOfType(stream));

      //  The following assertions state the assumptions made in the following
      //  code given the current use of fseek from the GNAT sources.

      //  Calls to fseek with SEEK_CUR have not been implemented

      assert (origin != SEEK_CUR);

      //  Calls to fseek with SEEK_END must have offset == 0 and cannot be from
      //  text streams in read only mode (i.e. PushbackReader streams).

      assert ((origin != SEEK_END) || (offset == 0L));
      assert ((origin != SEEK_END) || ! (PushbackReaderType.IsInstanceOfType(stream)));

      //  Calls to fseek with SEEK_SET can only be done for a file opened
      //  in binary mode (i.e., a RandomAccessFile or Object_File).
      //  31-jan-06 (mcc): need to be able to SEEK_SET to 0L for
      //  text files for Reset

      if (PushbackReaderType.IsInstanceOfType(stream) &&
          (origin == SEEK_SET) && (offset == 0L)) {
         ((PushbackReader) stream).rewind();
         return 0;
      }
      assert ((origin != SEEK_SET) || stream_is_binary);
      
      try { 
	 if (origin == SEEK_SET) {
	    if (BinaryReaderType.IsInstanceOfType(stream)) {
               ((BinaryReader) stream).BaseStream.Seek (offset,SeekOrigin.Begin);
            }
	    else if (BinaryWriterType.IsInstanceOfType(stream)) {
               ((BinaryWriter) stream).BaseStream.Seek (offset,SeekOrigin.Begin);
            }
	    else if (Object_FileType.IsInstanceOfType(stream)) {
	       Object_File.set_file_index
                 ((Object_File) stream, offset + 1);
            }
	 }
	 else if (origin == SEEK_END) {
	    if (stream_is_binary) {
	       if (BinaryReaderType.IsInstanceOfType(stream)) {
                  BinaryReader s = (BinaryReader) stream;
                  s.BaseStream.Seek (0,SeekOrigin.End);
               }
	       else if (BinaryWriterType.IsInstanceOfType(stream)) {
                  BinaryWriter s = (BinaryWriter) stream;
                  s.BaseStream.Seek (0,SeekOrigin.End);
               }
	       else if (Object_FileType.IsInstanceOfType(stream)) {
                  Object_File s = (Object_File) stream;
                  Object_File.set_file_index
                    (s, Object_File.file_size (s) + 1);
               }
	    }
	    //  There is nothing to do for text streams that you can write into
	    //  since for these fseek is only called in append mode and the
	    //  actual positioning at the end of the file in append mode is
	    //  done by fopen.
	 }
	 return 0;
      }
      catch (System.Exception) { 
	 return 1; 
      }
   }
   
   //  long ftell (FILE *stream)

   public static long ftell (Object stream) 
   {
      try {
	 if (BinaryReaderType.IsInstanceOfType(stream))
	    return ((BinaryReader) stream).BaseStream.Seek(0,SeekOrigin.Current);
	 else if (BinaryWriterType.IsInstanceOfType(stream))
	    return ((BinaryWriter) stream).BaseStream.Seek(0,SeekOrigin.Current);
	 else
	    assert (false);
      }
      catch (System.Exception) {
	 throw new ada.io_exceptions.device_error ();
      }
      return -1L;
   }

   //  size_t fwrite (const void *ptr, size_t size, size_t nobj, FILE *stream)

   public static UInt32 fwrite (Object ptr, UInt32 size,
      UInt32 nobj, Object stream) {
      //  GNAT sources use either a size of 1 or an nboj of 1

      assert ((size == 1) || (nobj == 1));
      
      try {
	 if (IntType.IsInstanceOfType(ptr)) {
	    assert ((size == 4) || (nobj == 4));
	    ((BinaryWriter) stream).Write (((Int) ptr).all);
	 }
	 else if (LngType.IsInstanceOfType(ptr)) {
	    assert ((size == 8) || (nobj == 8));
	    ((BinaryWriter) stream).Write (((Lng) ptr).all);
	 }
	 else if (FltType.IsInstanceOfType(ptr)) {
	    assert ((size == 4) || (nobj == 4));
	    ((BinaryWriter) stream).Write (((Flt) ptr).all);
	 }
	 else if (DblType.IsInstanceOfType(ptr)) {
	    assert ((size == 8) || (nobj == 8));
	    ((BinaryWriter) stream).Write (((Dbl) ptr).all);
	 }
	 else {
            byte[] buf = (byte []) ptr;
      
	    if (TextWriterType.IsInstanceOfType(stream)) {
	       TextWriter text_stream = (TextWriter) stream;
	       int c;
	       int length = (size == 1) ? (int) nobj : (int) size;
		  
	       for (int k = 0; k < length; k++) {
		  c = 255 & buf [k];

		  if (c == 10)
		     text_stream.WriteLine ();
		  else
		     text_stream.Write ((char) c);
	       }
	    }
	    else if (BinaryWriterType.IsInstanceOfType(stream)) {
	       ((BinaryWriter) stream).Write (buf, 0, (int) size);
	    }
	    else {
	       assert (false);
            }
	 }
	 return nobj;
      }
      catch (System.Exception) {
	 return 0;
      }
   }

   //  void getc_immediate_nowait 
   //         (FILE *stream, int *ch, int *end_of_file, int *avail)

   public static void getc_immediate_nowait 
                        (Object stream, Int ch, Int end_of_file, Int avail) {
      if (PushbackReaderType.IsInstanceOfType(stream))
	 try {
	    if (! ((PushbackReader) stream).ready ()) {
	       end_of_file.all = 0;
	       avail.all = 0;
	       return;
	    }
	 }
	 catch (System.Exception) {
	    throw new ada.io_exceptions.device_error ();
	 }

      avail.all = 1;
      getc_immediate (stream, ch, end_of_file);
   }

   //  void getc_immediate (FILE *stream, int *ch, int *end_of_file)

   public static void getc_immediate (Object stream, Int ch, Int end_of_file) {
      ch.all = fgetc (stream);
      end_of_file.all = to_int (ch.all == EOF);
   }
   
   //  int isatty (int handle)
   //  UNIMPLEMENTED - not needed by the JGNAT library

   //  char *mktemp (char *buf)
   //  UNIMPLEMENTED - not needed by the JGNAT library

   //  void rewind (FILE *stream)

   public static void rewind (Object stream) 
   {
      fseek (stream, 0L, SEEK_SET);
   }

   //  int setvbuf (FILE *stream, char *buf, int mode, size_t size)

   public static int setvbuf (Object stream, Object buf, int mode,
      UInt32 size) 
   {
      assert (buf == null);

      //  System.out & System.err are unbuffered by default
#if !COMPACT
      if ((stream == Console.Out) || (stream == Console.Error)) {
	 assert (mode == _IONBF);
      }

      //  Input & output text streams are buffered by default
      else if (mode == _IONBF) {
#else
      if (mode == _IONBF) {
#endif
	 assert (! (TextWriterType.IsInstanceOfType(stream)));
	 assert (! (TextReaderType.IsInstanceOfType(stream)));
      }

      //  Random Acces Files are unbuffered by default
      else if ((mode == _IOLBF) || (mode == _IOFBF)) {
	 assert (! (BinaryReaderType.IsInstanceOfType(stream)));
	 assert (! (BinaryWriterType.IsInstanceOfType(stream)));
      }

      else {
	 assert (false);
      }

      return 0;
   }

   //  FILE *tmpfile (void)
   //  UNIMPLEMENTED - not needed by the JGNAT library
   
   //  char *tmpnam (char s[L_tmpnam])

   static public void tmpnam (Object s) 
   {
      byte[] buf = (byte []) s;
      
      try {
	 copy (System.IO.Path.GetTempFileName (), buf);
      }
      catch (System.Exception) {
	 buf [0] = 0;
      }
   }

   //  FILE *tmpfile (void)
   
   //  char *__gnat_tmp_name (char s[L_tmpnam])

   static public void __gnat_tmp_name (byte[] s) 
   {
      tmpnam (s);
   }

   //  int ungetc (int c, FILE *stream)

   public static int ungetc (int c, Object stream) 
   {
      if (c == EOF)
	 return EOF;

      try {
	 if (PushbackReaderType.IsInstanceOfType(stream)) {
	    ((PushbackReader) stream).unread (c);
	 }

	 //  For a binary stream (i.e.  a RandomAccessFile) ungetc is used as
	 //  follows in the GNAT sources:
	 //       ungetc (fgetc (stream), Stream) 
	 //  which allows us to implement ungetc by simply seking back one
	 //  character.
	 else if (BinaryReaderType.IsInstanceOfType(stream)) {
	    BinaryReader r = (BinaryReader) stream;
	    r.BaseStream.Seek (- 1, SeekOrigin.Current);
	 }

	 return c;
      }
      catch (System.Exception) {
	 raise ("ungetc failed");
	 return EOF;
      }
   }

   //  int unlink (char *)

   public static int unlink (Object filename) 
   {
      try {
         // fixed 31 jan 2006 (mcc): now correctly converts string
	 System.IO.File.Delete(to_string((byte []) filename));
         return 0;
      }
      catch (System.Exception) {
	 return EOF;
      }
   }


   /////////////////////////////////////
   /////////////////////////////////////
   ////                             ////
   ////  Entities in libc <time.h>  ////
   ////                             ////
   /////////////////////////////////////
   /////////////////////////////////////
   

   private static System.DateTime start_cal =
	 new System.DateTime
	    (1900,
	     1,
	     1,
	     0,
	     0,
	     0);

   public static long get_Ticks () {
//      Console.Write("Ticks out now");
//      Console.Write(System.DateTime.Now.Ticks);
      return System.DateTime.Now.Ticks-start_cal.Ticks;
   }
   
   //  void __gnat_localtime_r (const time_t *seconds, tm *tp)
   public static void __gnat_localtime_r (long seconds, ada.calendar.tm tp) {
      System.DateTime time = new System.DateTime(seconds+start_cal.Ticks);

//      Console.Write("Ticks in localtime");
//      Console.Write(seconds);
      tp.tm_msec = time.Millisecond;
      tp.tm_sec  = time.Second;
      tp.tm_min  = time.Minute;
      tp.tm_hour = time.Hour;
      tp.tm_mday = time.Day;
      tp.tm_mon  = time.Month;
      tp.tm_year = time.Year;
      tp.tm_wday = (int) time.DayOfWeek;
      tp.tm_yday = time.DayOfYear;
   }
   
   //  time_t mktime (struct tm *tp)
   
   public static long mktime (ada.calendar.tm tp) {
      System.DateTime cal =
	 new System.DateTime
	    (tp.tm_year + 1900,
	     tp.tm_mon,
	     tp.tm_mday,
	     tp.tm_hour,
	     tp.tm_min,
	     tp.tm_sec);
      // Ticks is in 100 nanosecond intervals
//      Console.Write("Ticks in");
//      Console.Write(cal.Ticks-start_cal.Ticks);
      return (cal.Ticks-start_cal.Ticks)/10000000;
   }
   
   public static void write (byte [] x) {
      Console.Write(to_string(x));
   }
   public static void write_int (int x) {
      Console.Write(x);
   }
   public static void write_long (long x) {
      Console.Write(x);
   }

   //////////////////////////////////
   //////////////////////////////////
   ////                          ////
   ////  Entities in a-adaint.c  ////
   ////                          ////
   //////////////////////////////////
   //////////////////////////////////

   public static int __gnat_file_exists (Object name) {
      try {
	 return to_int (File.Exists (to_string((byte []) name)));
      }
      catch (System.Exception) {}

      return 0;
   }

   public static long __gnat_named_file_length (Object name) {
	 return (new System.IO.FileInfo (to_string((byte []) name))).Length;
   }

   public static int __gnat_get_file_names_case_sensitive () {
         return 0;
   }
   public static int chdir (byte [] name) {
      try {
	 System.IO.Directory.SetCurrentDirectory (to_string(name));
      }
      catch (System.Exception) { return -1; }

      return 0;
   }
   public static int closedir (Object dir) {
      ((Directory_Parse) dir).close();
      return 1;
   }
   public static int __gnat_dir_isopen (Object dir) {
      if (((Directory_Parse) dir).get_is_open()) {
         return 1;
      }
      else {
         return 0;
      }
   }

   public static int __gnat_get_current_dir (Object buffer) {
      byte [] name = (byte []) buffer;
      string current = System.IO.Directory.GetCurrentDirectory();
      getBytes (current, 0, current.Length, name, 0);
      return current.Length;
   }
   public static int __gnat_mkdir (byte [] name) {
      try {
	 System.IO.Directory.CreateDirectory (to_string(name));
      }
      catch (System.Exception) { return -1; }

      return 0;
   }
   public static void rmdir (byte [] name) {
      System.IO.Directory.Delete (to_string(name));
   }
   public static Object opendir(byte [] name) {
      return (Object) new Directory_Parse(to_string(name));
   }
   public static int __gnat_readdir (Object dir, Object buffer) {
      byte [] name = (byte []) buffer;
      Directory_Parse dir_parse = (Directory_Parse) dir;
      String s = dir_parse.get_next();
      if (s=="") {
        return 0;
      }
      else {
        getBytes (s, 0, s.Length, name, 0);
        return s.Length;
      }
   }
   public static int __gnat_readdir_is_thread_safe() {
      return 0;
   }
   public static void __gnat_filetimestamp (byte [] name,
      ada.calendar.tm tp) 
   {
      System.DateTime time = System.IO.File.GetLastWriteTime (
         to_string(name));
      tp.tm_msec = time.Millisecond;
      tp.tm_sec  = time.Second;
      tp.tm_min  = time.Minute;
      tp.tm_hour = time.Hour;
      tp.tm_mday = time.Day;
      tp.tm_mon  = time.Month;
      tp.tm_year = time.Year;
      tp.tm_wday = (int) time.DayOfWeek;
      tp.tm_yday = time.DayOfYear;
   }
   public static void __gnat_filecopy (byte [] from, byte[] to)
   {
      System.IO.File.Copy (to_string (from), to_string (to), true);
   }
   public static void __gnat_touch (byte [] name)
   {
#if !COMPACT
      System.IO.File.SetLastWriteTime (
         to_string (name), System.DateTime.Now);
#endif
   }
   public static bool __gnat_is_directory (byte [] name) 
   {
      return System.IO.Directory.Exists (to_string (name));
   }
   public static bool __gnat_is_file (byte [] name) 
   {
      return System.IO.File.Exists (to_string (name));
   }
   public static bool __gnat_is_absolute_path (byte [] name) 
   {
      return System.IO.Path.IsPathRooted (to_string (name));
   }
   public static bool __gnat_is_writable_file (byte [] name) 
   {
#if !COMPACT
      System.IO.FileAttributes attr = System.IO.File.GetAttributes (
         to_string (name));
      return (attr | System.IO.FileAttributes.ReadOnly)!=attr;
#else
      return true;
#endif
   }
   public static void __gnat_filemove (byte [] from, byte[] to)
   {
      System.IO.File.Move (to_string (from), to_string (to));
   }
   public static int __gnat_get_fullpath (byte [] name, byte [] result) {
      string s = System.IO.Path.GetFullPath (to_string (name));
      getBytes (s, 0, s.Length, name, 0);
      return s.Length;
   }

   //////////////////////////////////
   //////////////////////////////////
   ////                          ////
   ////  EnvVar  Entities        ////
   ////                          ////
   //////////////////////////////////
   //////////////////////////////////

#if !COMPACT
   public static void __gnat_unsetenv(Object name) {
      byte [] the_name = (byte []) name;
      System.Environment.SetEnvironmentVariable (to_string (the_name), null);
   }

   public static void __gnat_clearenv() {
      IDictionary environmentVariables = Environment.GetEnvironmentVariables();
      foreach (DictionaryEntry de in environmentVariables)
      {
         System.Environment.SetEnvironmentVariable ((String) de.Key, null);
      }
   }
   public static bool __gnat_isenv (byte [] name) {
      return System.Environment.GetEnvironmentVariable (to_string (name))
        != null;
   }
   public static void __gnat_setenv (byte [] name, byte[] value) {
      System.Environment.SetEnvironmentVariable (
         to_string (name), to_string (value));
   }
   public static void __gnat_getenv (byte [] name,
      mgnat.adalib.Int len, mgnat.adalib.Acc value) {
      string s = System.Environment.GetEnvironmentVariable (
         to_string (name));
      len.all = s.Length;
      value.all = (Object) s;
   }
#endif

   public static void strncpy (Object dest, Object src, int len) {
      String s_src = (String) src;
      getBytes(s_src, 0, len, (byte []) dest, 0);
   }
#if !COMPACT
   public static Object __gnat_environ () {
      IDictionary id = System.Environment.GetEnvironmentVariables();
      ICollection keys = id.Keys;
      string [] the_array = new string[id.Keys.Count];
      int i=0;
      foreach (DictionaryEntry de in id)
      {
         the_array[i++] = ((String) de.Key) + "=" + ((String) de.Value);
      }
      return (Object) the_array;
   }
   public static int __gnat_environ_length (Object env) {
      return ((string[]) env).Length;
   }
   public static byte [] __gnat_environ_value (Object env, int num) {
      string [] keys = (string []) env;
      return to_string (keys[num-1]);
   }
#endif

   //////////////////////////////////
   //////////////////////////////////
   ////                          ////
   ////  Process Entities        ////
   ////                          ////
   //////////////////////////////////
   //////////////////////////////////
   public static bool __gnat_argument_needs_quote() {
      return true;
   }

#if !COMPACT
   //////////////////////////////////
   //////////////////////////////////
   ////                          ////
   ////  Registry Entities       ////
   ////                          ////
   //////////////////////////////////
   //////////////////////////////////
   public static Object getPerformance_Data() {
      return Microsoft.Win32.Registry.PerformanceData;
   }
   public static Object getClassesRoot() {
      return Microsoft.Win32.Registry.ClassesRoot;
   }
   public static Object getLocalMachine() {
      return Microsoft.Win32.Registry.LocalMachine;
   }
   public static Object getCurrentConfig() {
      return Microsoft.Win32.Registry.CurrentConfig;
   }
   public static Object getCurrentUser() {
      return Microsoft.Win32.Registry.CurrentUser;
   }
   public static Object getUsers() {
      return Microsoft.Win32.Registry.Users;
   }
   public static void RegCloseKey(Object key) {
      ((Microsoft.Win32.RegistryKey) key).Close();
   }
   public static Object CreateSubKey(Object key, byte[] name, bool write) {
      if (!write) {
         return ((Microsoft.Win32.RegistryKey) key).CreateSubKey(
            to_string (name), RegistryKeyPermissionCheck.ReadSubTree);
      }
      else {
         return ((Microsoft.Win32.RegistryKey) key).CreateSubKey(
            to_string (name), RegistryKeyPermissionCheck.ReadWriteSubTree);
      }
   }
   public static void DeleteSubKeyTree (Object key, byte[] name) {
      ((Microsoft.Win32.RegistryKey) key).DeleteSubKeyTree(to_string(name));
   }
   public static void DeleteValue (Object key, byte[] name) {
      ((Microsoft.Win32.RegistryKey) key).DeleteValue(to_string(name));
   }
   public static Object OpenSubKey(Object key, byte[] name, bool write) {
      if (!write) {
         return ((Microsoft.Win32.RegistryKey) key).OpenSubKey(
            to_string (name), RegistryKeyPermissionCheck.ReadSubTree);
      }
      else {
         return ((Microsoft.Win32.RegistryKey) key).OpenSubKey(
            to_string (name), RegistryKeyPermissionCheck.ReadWriteSubTree);
      }
   }
   public static int RegGetValue(Object key, byte[] name, byte[] result) {
      string s = (string) ((Microsoft.Win32.RegistryKey) key).GetValue(
         to_string(name), null,
         RegistryValueOptions.DoNotExpandEnvironmentNames);
      getBytes(s, 0, s.Length, result, 0);
      return s.Length;
   }
   public static void RegSetValue(Object key, byte[] name, byte[] value) {
      ((Microsoft.Win32.RegistryKey) key).SetValue(
         to_string(name), to_string(value));
   }
   private static ArrayList reg_names;
   public static int InitEnumeration (Object key) {
      Microsoft.Win32.RegistryKey rk = (Microsoft.Win32.RegistryKey) key;
      String[] names = rk.GetValueNames(); 
      reg_names = new ArrayList();
      for (int i=0; i<names.Length; i++)
      {
         if (rk.GetValueKind(names[i])==RegistryValueKind.String||
             rk.GetValueKind(names[i])==RegistryValueKind.ExpandString) {
            reg_names.Add(names[i]);
         }
      }
      return reg_names.Count;
   }
   public static int RegEnumName (int num, byte[] result) {
      string s = (string) reg_names[num-1];
      getBytes(s, 0, s.Length, result, 0);
      return s.Length;
   }
   public static int Enumerate (Object key, int num, byte[] result) {
      string s = (string) ((Microsoft.Win32.RegistryKey) key).GetValue(
         (string) reg_names[num-1]);
      getBytes(s, 0, s.Length, result, 0);
      return s.Length;
   }
#endif

   //////////////////////////////////
   //////////////////////////////////
   ////                          ////
   ////  Entities in a-cstrea.c  ////
   ////                          ////
   //////////////////////////////////
   //////////////////////////////////
   
   public static readonly int c_constant_eof      = EOF;
   public static readonly int c_constant_iofbf    = _IOFBF;
   public static readonly int c_constant_iolbf    = _IOLBF;
   public static readonly int c_constant_ionbf    = _IONBF;
   public static readonly int c_constant_seek_cur = SEEK_CUR;
   public static readonly int c_constant_seek_end = SEEK_END;
   public static readonly int c_constant_seek_set = SEEK_SET;
   public static readonly int c_constant_l_tmpnam = L_tmpnam;

   public static int max_path_len = 2048;

   public static void full_name (Object name, Object buffer) {
      byte[] buff = (byte []) buffer;

      try {
	 copy
           (System.IO.Path.GetFullPath (to_string((byte []) name)), 
             (byte []) buffer);
      }
      catch (System.Exception) {
	 buff [0] = 0;
      }
   }

   public static int is_regular_file_fd (int handle) {
      if (handle <= 2)
	 return 0;
      else
	 //  ??? for now always assume we are dealing with regular files
	 return 1;
   }

   public static int feof__   (Object stream) { return feof (stream); }
   public static int ferror__ (Object stream) { return ferror (stream); }
   public static int fileno__ (Object stream) { return fileno (stream); }
   
#if !COMPACT
   public static Object c_constant_stdin  () { return stdin; }
   public static Object c_constant_stderr () { return Console.Error; }
   public static Object c_constant_stdout () { return Console.Out; }
   public static int have_console () { return 1; }
#else
   public static int have_console () { return 0; }
#endif


   ////////////////////////////////////
   ////////////////////////////////////
   ////                            ////
   ////  Entities in a-except.adb  ////
   ////                            ////
   ////////////////////////////////////
   ////////////////////////////////////

   //  function Create_EO (E : Exception_Id; M : String) return EO;

   public static Object create_EO (Object e, byte[] msg) {
      try {
         System.Type  myType = (System.Type) e;
         System.Type[] types = new System.Type[1];
         types[0] = typeof(String);
	 System.Reflection.ConstructorInfo c = myType.GetConstructor (types);
         System.Object[] param = { to_string (msg) };
         if (c==null) {
	     Console.WriteLine (e.ToString ());
	     raise ("The String constructor for this exception does not exist");
         }
	 return c.Invoke (param);
      }
      catch (System.Security.SecurityException e1) {
	  Console.WriteLine (e1.ToString ());
	  raise ("Not allowed to call the String constructor");
      }
      catch (System.ArgumentException e1) {
	  Console.WriteLine (e1.ToString ());
	  raise ("Wrong number of parameters for the exception constructor");
      }
      catch (System.Exception e1) {
	  Console.WriteLine (e1.ToString ());
	  raise ("Exception raised during call to the constructor");
      }
      return null;
   }

   // function Exception_Identity (X : EO) return Exception_Id;

   public static Object exception_identity (Object x) {
      return x.GetType ();
   }

   //  function E_Information (X : EO) return String_Access;

   public static byte [] e_information (Object x) {
#if COMPACT
      return to_string(((System.Exception) x).Message);
#else
      return to_string(((System.Exception) x).StackTrace);
#endif
   }

   //  function E_Message (X : EO) return String_Access;

   public static byte [] e_message (Object x) {
      return to_string (((System.Exception) x).Message);
   }

   //  procedure Reraise_Occurrence_No_Defer (X : EO);

   public static void reraise_occurrence_no_defer (Object e)
   {
      throw (System.Exception) e;
   }

   public static void __gnat_raise_with_msg (Object e)
   {
      //  The call to get_current_excep returns a reference to
      //  an aliased Exception_Occurrence in the TSD. Since we
      //  represent EOs as System.Address, this will actually
      //  be a reference to an object of type mgnat.adalib.Acc,
      //  and we have to dereference it to get the occurrence.

      //  Excep : Exception_Occurrence := Get_Current_Excep.all;
      Object excep = soft_links_pkg.get_current_excep.Invoke ();
      System.Exception EO = (System.Exception) ((mgnat.adalib.Acc) excep).all;

      //  If EO is null, then there is no current exception, so
      //  pass a null string as the message.

      if (EO == null)
         throw (System.Exception) create_EO (e, to_string (""));
      else
         throw (System.Exception) create_EO (e, e_message (EO));
   }

   public static void __gnat_reraise ()
   {
      //  The call to get_current_excep returns a reference to
      //  an aliased Exception_Occurrence in the TSD. Since we
      //  represent EOs as System.Address, this will actually
      //  be a reference to an object of type mgnat.adalib.Acc,
      //  and we have to dereference it to get the occurrence.

      //  Excep : Exception_Occurrence := Get_Current_Excep.all;
      Object excep = soft_links_pkg.get_current_excep.Invoke ();
      System.Exception EO = (System.Exception) ((mgnat.adalib.Acc) excep).all;

      throw EO;
   }

   public static void __gnat_raise_exception (Object e, byte[] msg)
   {
      throw (System.Exception) create_EO (e, msg);
   }

   public static System.Exception c_e = new mgnat.adalib.constraint_error ();
   public static System.Exception p_e = new mgnat.adalib.program_error ();
   public static System.Exception s_e = new mgnat.adalib.storage_error ();
   public static System.Exception t_e = new mgnat.adalib.tasking_error ();

   public static Object constraint_error = exception_identity (c_e);
   public static Object program_error    = exception_identity (p_e);
   public static Object storage_error    = exception_identity (s_e);
   public static Object tasking_error    = exception_identity (t_e);

   ////////////////////////////////
   ////////////////////////////////
   ////                        ////
   ////  Entities in a-init.c  ////
   ////                        ////
   ////////////////////////////////
   ////////////////////////////////

   public static int  __gl_main_priority            = -1;
   public static int  __gl_time_slice_val           = -1;
   public static byte __gl_wc_encoding              = (byte) 'n';
   public static byte __gl_locking_policy           = (byte) ' ';
   public static byte __gl_queuing_policy           = (byte) ' ';
   public static byte __gl_task_dispatching_policy  = (byte) ' ';
   public static IntPtr __gl_adafinal_ptr           = (IntPtr) 0;
   public static int  __gl_unreserve_all_interrupts = 0;
   public static int  __gl_exception_tracebacks     = 0;
   public static int __gnat_handler_installed = 1;

   public static void 
      __gnat_set_globals (int     main_priority,
			  int     time_slice_val,
			  byte    wc_encoding,
			  byte    locking_policy,
			  byte    queuing_policy,
			  byte    task_dispatching_policy,
			  byte[]  restrictions,
                          byte[]  interrupt_states,
                          int num_interrupt_states,
			  int unreserve_all_interrupts,
			  int exception_tracebacks,
                          int zero_cost_exceptions,
                          int detect_blocking) {
      __gl_main_priority            = main_priority;
      __gl_time_slice_val           = time_slice_val;
      __gl_wc_encoding              = wc_encoding;
      __gl_locking_policy           = locking_policy;
      __gl_queuing_policy           = queuing_policy;
      __gl_task_dispatching_policy  = task_dispatching_policy;
      __gl_unreserve_all_interrupts = unreserve_all_interrupts;
      __gl_exception_tracebacks     = exception_tracebacks;
   }


   //////////////////////////////////
   //////////////////////////////////
   ////                          ////
   ////  Entities in a-sysdep.c  ////
   ////                          ////
   //////////////////////////////////
   //////////////////////////////////
   
   public static bool text_translation_required = true;
   
   //  For now these functions do nothing, like in a-sysdep.c.
   //  Must be fixed when these routines are also fixed in a-sysdep.c. ???
   
   public static void set_binary_mode (int handle) {}
   public static void set_text_mode   (int handle) {}


   //////////////////////////////////
   //////////////////////////////////
   ////                          ////
   ////  Entities in a-tags.adb  ////
   ////                          ////
   //////////////////////////////////
   //////////////////////////////////

   //  function External_Tag (T : Tag) return String;

   public static byte [] external_tag (Object t) {
      String s = ((System.Type) t).FullName;

      return to_string (s);
   }

   //  function Internal_Tag (External : String) return Tag;

   public static Object internal_tag (byte[] external) 
   {
      return System.Type.GetType (to_string (external));
   }

   ////////////////////////////////
   ////////////////////////////////
   ////                        ////
   ////  Entities in a-argv.c  ////
   ////                        ////
   ////////////////////////////////
   ////////////////////////////////

   public static String[] gnat_argv  = null;
   public static String command_name = null;

   public static int arg_count ()
   {
      //  We return length+1 to compensate for Ada.Command_Line.Argument_Count,
      //  which subtracts one because of the presence of the command name
      //  argument on non-JVM systems.

      if (gnat_argv == null)
         return 1;
      else
         return gnat_argv.Length + 1;
   }

   public static void fill_arg (byte[] arg, int arg_num)
   {
      byte[] arg_string = (byte []) arg;
      int  k;

      if ((arg_num == 0) && (command_name != null))
         {
            for (k = 0; k < command_name.Length; k++)
               arg_string [k] = (byte) command_name[k];

            return;
         }

      if ((gnat_argv == null) || (arg_num < 1) || (arg_num > gnat_argv.Length))
	 throw new mgnat.adalib.constraint_error ();

      else
         for (k = 0; k < gnat_argv [arg_num - 1].Length; k++)
            arg_string [k] = (byte) gnat_argv [arg_num - 1][k];
   }

   public static int len_arg (int arg_num)
   {
      if (arg_num == 0)
         if (command_name != null)
            return command_name.Length;
         else
            return 0;
      else
         return gnat_argv [arg_num - 1].Length;
   }

   public static void set_gnat_exit_status (int code)
   {
      //  Do nothing
   }

   public static void __gnat_install_handler ()
   {
      //  Do nothing
   }
   public static void debug_split(long ms, int ns)
   {
      Console.WriteLine("split:" + ms + "," + ns);
   }
   public static void Debug_Sleep(long ms, long ns)
   {
      Console.WriteLine("sleep:" + ms + "," + ns);
   }
   public static void __gnat_os_exit(int code)
   {
      Application.Exit();
   }
   public static void abort()
   {
      Application.Exit();
   }
}
} //namespace
