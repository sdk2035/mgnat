using System.IO;
using System;
namespace mgnat.adalib {


public class Directory_Parse {

  public String[] filenames;

  public bool is_open;
  private int current;

  public bool get_is_open() {
     return this.is_open;
  }

  public Directory_Parse (String dirname)
  {
     this.filenames = System.IO.Directory.GetFileSystemEntries(dirname);
     this.current = 0;
     this.is_open = true;
  }
  public String get_next()
  {
     if (this.current>=this.filenames.Length) {
        return "";
     }
     else
     {
        return this.filenames[this.current++];
     }
  }

  //  Closes the file of objects, writing out the sequence of objects
  //  contained in the file_elements Vector in the case of an output
  //  file.
  public void close () {
     this.is_open = false;
  }
}
}
