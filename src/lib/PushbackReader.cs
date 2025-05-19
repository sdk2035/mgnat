using System.IO;
using System;

namespace mgnat.adalib {
public class PushbackReader  {
   TextReader reader;
   bool have_unread = false;
   int unread_value;

   public PushbackReader(TextReader t) {
      this.reader = t;
   }
   
   public void Close () {
      this.reader.Close();
   }
   public int Read () {
      int x;
      if (have_unread) {
         have_unread = false;
         return unread_value;
      }
      else {
         x = this.reader.Read();
         // Ada doesn't expect the CR before the LF
         if (x==13) {
            x = this.Read();
         }
         return x;
      }
   }
   public void unread(int x) {
      have_unread = true;
      unread_value = x;
   }
   public bool ready () {
      return this.reader.Peek() != -1;
   }
   public void rewind() {
      ((StreamReader) this.reader).BaseStream.Seek(0,SeekOrigin.Begin);
   }

}
}
