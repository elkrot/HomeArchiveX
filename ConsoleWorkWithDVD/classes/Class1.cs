using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleWorkWithDVD.classes
{
    class Class1
    {



        /* using (DataTable providers = DbP
         * 
         * roviderFactories.GetFactoryClasses())
                     {
                         // Console.WriteLine("Available ADO.NET Data Providers:");
                         foreach (DataRow prov in providers.Rows)
                         {
                             // Console.WriteLine("Name:{0}", prov["Name"]);
                             //  Console.WriteLine("Description:{0}", prov["Description"]);
                             // Console.WriteLine("Invariant Name:{0}", prov["InvariantName"]);
                         }
                     }*/

            /*
        static void Main1()
        {
            // Start with drives if you have to search the entire computer.
            string[] drives = System.Environment.GetLogicalDrives();

            foreach (string dr in drives.Where(x => x.StartsWith("E")))
            {
                System.IO.DriveInfo di = new System.IO.DriveInfo(dr);

                // Here we skip the drive if it is not ready to be read. This
                // is not necessarily the appropriate action in all scenarios.
                if (!di.IsReady)
                {
                    Console.WriteLine("The drive {0} could not be read", di.Name);
                    continue;
                }
                System.IO.DirectoryInfo rootDir = di.RootDirectory;
                WalkDirectoryTree(rootDir);
            }

            // Write out all the files that could not be processed.
            Console.WriteLine("Files with restricted access:");
            foreach (string s in log)
            {
                Console.WriteLine(s);
            }
            // Keep the console window open in debug mode.
            Console.WriteLine("Press any key");
            Console.ReadKey();
        }

        static void WalkDirectoryTree(System.IO.DirectoryInfo root)
        {
            System.IO.FileInfo[] files = null;
            System.IO.DirectoryInfo[] subDirs = null;

            // First, process all the files directly under this folder
            try
            {
                files = root.GetFiles("*.*");
            }
            // This is thrown if even one of the files requires permissions greater
            // than the application provides.
            catch (UnauthorizedAccessException e)
            {
                // This code just writes out the message and continues to recurse.
                // You may decide to do something different here. For example, you
                // can try to elevate your privileges and access the file again.
                log.Add(e.Message);
            }

            catch (System.IO.DirectoryNotFoundException e)
            {
                Console.WriteLine(e.Message);
            }

            if (files != null)
            {
                foreach (System.IO.FileInfo fi in files)
                {
                    // In this example, we only access the existing FileInfo object. If we
                    // want to open, delete or modify the file, then
                    // a try-catch block is required here to handle the case
                    // where the file has been deleted since the call to TraverseTree().
                    Console.WriteLine(fi.FullName);
                }

                // Now find all the subdirectories under this directory.
                subDirs = root.GetDirectories();

                foreach (System.IO.DirectoryInfo dirInfo in subDirs)
                {
                    // Resursive call for each subdirectory.
                    WalkDirectoryTree(dirInfo);
                }
            }
        }






        static void Main2(string[] args)
        {
            // Specify the starting folder on the command line, or in  
            // Visual Studio in the Project > Properties > Debug pane. 
            TraverseTree(args[0]);


            Console.WriteLine("Press any key");
            Console.ReadKey();
        }

        public static void TraverseTree(string root)
        {
            // Data structure to hold names of subfolders to be 
            // examined for files. 
            Stack<string> dirs = new Stack<string>(20);

            if (!System.IO.Directory.Exists(root))
            {
                throw new ArgumentException();
            }
            dirs.Push(root);

            while (dirs.Count > 0)
            {
                string currentDir = dirs.Pop();
                string[] subDirs;
                try
                {
                    subDirs = System.IO.Directory.GetDirectories(currentDir);
                }
                // An UnauthorizedAccessException exception will be thrown if we do not have 
                // discovery permission on a folder or file. It may or may not be acceptable  
                // to ignore the exception and continue enumerating the remaining files and  
                // folders. It is also possible (but unlikely) that a DirectoryNotFound exception  
                // will be raised. This will happen if currentDir has been deleted by 
                // another application or thread after our call to Directory.Exists. The  
                // choice of which exceptions to catch depends entirely on the specific task  
                // you are intending to perform and also on how much you know with certainty  
                // about the systems on which this code will run. 
                catch (UnauthorizedAccessException e)
                {
                    Console.WriteLine(e.Message);
                    continue;
                }
                catch (System.IO.DirectoryNotFoundException e)
                {
                    Console.WriteLine(e.Message);
                    continue;
                }

                string[] files = null;
                try
                {
                    files = System.IO.Directory.GetFiles(currentDir);
                }

                catch (UnauthorizedAccessException e)
                {

                    Console.WriteLine(e.Message);
                    continue;
                }

                catch (System.IO.DirectoryNotFoundException e)
                {
                    Console.WriteLine(e.Message);
                    continue;
                }
                // Perform the required action on each file here. 
                // Modify this block to perform your required task. 
                foreach (string file in files)
                {
                    try
                    {
                        // Perform whatever action is required in your scenario. 
                        System.IO.FileInfo fi = new System.IO.FileInfo(file);
                        Console.WriteLine("{0}: {1}, {2}", fi.Name, fi.Length, fi.CreationTime);
                    }
                    catch (System.IO.FileNotFoundException e)
                    {
                        // If file was deleted by a separate application 
                        //  or thread since the call to TraverseTree() 
                        // then just continue. 
                        Console.WriteLine(e.Message);
                        continue;
                    }
                }

                // Push the subdirectories onto the stack for traversal. 
                // This could also be done before handing the files. 
                foreach (string str in subDirs)
                    dirs.Push(str);
            }
        }*/
        private void test() {
DataSet ds = new DataSet();
       
// Create and populate a float array
float[] floats = new float[10];
               
for (int i = 0; i< floats.Length; i++)
floats[i] = i* 1.1f;
// =====================================
MemoryStream stream = new MemoryStream();
BinaryFormatter formatter = new BinaryFormatter();
formatter.Serialize(stream, floats);
byte[] bytes = stream.GetBuffer();
stream.Close();
// =====================================
DataRow row = ds.Tables["Test"].NewRow();
row["ID"] = 0;
row["BinaryData"] = bytes;
ds.Tables["Test"].Rows.Add(row);
//mda.Update(ds);

DataSet ds2 = new DataSet();
  //      mda.Fill(ds);
// ==========================
byte[] bytes2 = (byte[])ds.Tables["Test"].Rows[0]["BinaryData"];
        // Deserialize the byte array back to the float array
        MemoryStream stream2 = new MemoryStream(bytes2);
        BinaryFormatter formatter2 = new BinaryFormatter();
        float[] floats2 = (float[])formatter.Deserialize(stream2);
        stream2.Close();
// ======================
        }
        
    }
}
