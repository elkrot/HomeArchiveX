using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleMD5Test
{
    public class ASyncFileHashAlgorithm
    {
        protected HashAlgorithm hashAlgorithm;
        protected byte[] hash;
        protected bool cancel = false;
        protected int bufferSize = 4096;
        public delegate void FileHashingProgressHandler(object sender, FileHashingProgressArgs e);
        public event FileHashingProgressHandler FileHashingProgress;

        public ASyncFileHashAlgorithm(HashAlgorithm hashAlgorithm)
        {
            this.hashAlgorithm = hashAlgorithm;
        }

        public byte[] ComputeHash(Stream stream)
        {
            cancel = false;
            hash = null;
            int _bufferSize = bufferSize; // this makes it impossible to change the buffer size while computing  

            byte[] readAheadBuffer, buffer;
            int readAheadBytesRead, bytesRead;
            long size, totalBytesRead = 0;

            size = stream.Length;
            readAheadBuffer = new byte[_bufferSize];
            readAheadBytesRead = stream.Read(readAheadBuffer, 0, readAheadBuffer.Length);

            totalBytesRead += readAheadBytesRead;

            do
            {
                bytesRead = readAheadBytesRead;
                buffer = readAheadBuffer;

                readAheadBuffer = new byte[_bufferSize];
                readAheadBytesRead = stream.Read(readAheadBuffer, 0, readAheadBuffer.Length);

                totalBytesRead += readAheadBytesRead;

                if (readAheadBytesRead == 0)
                    hashAlgorithm.TransformFinalBlock(buffer, 0, bytesRead);
                else
                    hashAlgorithm.TransformBlock(buffer, 0, bytesRead, buffer, 0);

                FileHashingProgress(this, new FileHashingProgressArgs(totalBytesRead, size));
            } while (readAheadBytesRead != 0 && !cancel);

            if (cancel)
                return hash = null;

            return hash = hashAlgorithm.Hash;
        }

        public int BufferSize
        {
            get
            { return bufferSize; }
            set
            { bufferSize = value; }
        }

        public byte[] Hash
        {
            get
            { return hash; }
        }

        public void Cancel()
        {
            cancel = true;
        }

        public override string ToString()
        {
            string hex = "";
            foreach (byte b in Hash)
                hex += b.ToString("x2");

            return hex;
        }
    }

    public class FileHashingProgressArgs:EventArgs
    {
        public long TotalSize { get; set; }
        public long ProcessedSize { get; set; }

        public FileHashingProgressArgs(long totalBytesRead, long size)
        {
           ProcessedSize  = totalBytesRead;
           TotalSize   = size;
        }
    }
}
/*
 static ASyncFileHashAlgorithm hasher = new ASyncFileHashAlgorithm(SHA1.Create());  
        public static void Main(string[] args)  
        {  
            Console.Write("Starting...");  
            Stream stream = (Stream)File.Open("bigfile", FileMode.Open);  
  
            hasher.FileHashingProgress += OnFileHashingProgress;  
  
            Thread t = new Thread(  
                delegate() { hasher.ComputeHash(stream); }  
            );  
            t.Start();  
            t.Join();  
  
            // hasher.Hash has the byte[] computed hash  
            Console.WriteLine(hasher); // ToString() converts to a string representing the hex value of the hash  
        }  
  
        public static void OnFileHashingProgress(object sender, FileHashingProgressArgs e)  
        {  
            Console.WriteLine(e.ProcessedSize + " of " + e.TotalSize);  
        }  
     */
