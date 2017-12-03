using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Common.Utilites
{
    public static class Security
    {
        public const int SECTION_SIZE = 4096;
        public static int MB_SIZE = (int)Math.Pow(2, 20);


        #region ComputeMD5Checksum
        public static string ComputeMD5Checksum(string path)
        {
            using (Stream stream = System.IO.File.OpenRead(path))
            {
                byte[] buffer = new byte[MB_SIZE];
                int bytesRead = stream.Read(buffer, 0, buffer.Length);

                if (bytesRead != 0)
                {
                    MD5 md5 = new MD5CryptoServiceProvider();
                    MemoryStream ms = new MemoryStream();
                    
                    ms.Write(buffer, 0, buffer.Length);
                    byte[] checkSum = md5.ComputeHash(ms.GetBuffer());
                    string result = BitConverter.ToString(checkSum).Replace("-", String.Empty);
                    return result;
                }
                return null;
            }
        }

        public static string MD5Sum(string fileName, string salt, int byteCount)
        {
            byte[] saltBuf = System.Text.Encoding.UTF8.GetBytes(salt);
            byte[] buffer = new byte[byteCount];
            Stream stream = File.OpenRead(fileName);

            int bytesRead = stream.Read(buffer, 0, buffer.Length);

            if (bytesRead != 0)
            {
                MemoryStream ms = new MemoryStream();
                ms.Write(saltBuf, 0, saltBuf.Length);
                ms.Write(buffer, 0, buffer.Length);
                MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
                buffer = md5.ComputeHash(ms.GetBuffer());
                StringBuilder sb = new StringBuilder();
                foreach (byte b in buffer)
                {
                    sb.Append(b.ToString("x2").ToLower());
                }
                return sb.ToString();
            }
            else
            {
                //Better to throw an exception but...
                return null;
            }
        }

        public static string ComputeMD5Checksum2(string path)
        {
            using (FileStream fs = System.IO.File.OpenRead(path))
            {
                MD5 md5 = new MD5CryptoServiceProvider();
                BufferedStream bs = new BufferedStream(fs);
                List<byte[]> checkSums = new List<byte[]>();

                byte[] b = new byte[SECTION_SIZE];
                int buf = 0;
                while ((buf = bs.Read(b, 0, SECTION_SIZE)) > 0)
                {
                    checkSums.Add(md5.ComputeHash(bs));
                }

                byte[] checkSum = null;

                foreach (var item in checkSums)
                {
                    // Array.Copy(,,)
                    //  item.CopyTo(checkSum, += item;
                }


                string result = BitConverter.ToString(checkSum).Replace("-", String.Empty);
                return result;

                /**/
            }
        }
        #endregion

        #region getMd5Hash

        public static string getMd5Hash(string hash)
        {
            // создаем объект этого класса. Отмечу, что он создается не через new, а вызовом метода Create
            MD5 md5Hasher = MD5.Create();

            // Преобразуем входную строку в массив байт и вычисляем хэш
            byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(hash));

            // Создаем новый Stringbuilder (Изменяемую строку) для набора байт
            StringBuilder sBuilder = new StringBuilder();

            // Преобразуем каждый байт хэша в шестнадцатеричную строку
            for (int i = 0; i < data.Length; i++)
            {
                //указывает, что нужно преобразовать элемент в шестнадцатиричную строку длиной в два символа
                sBuilder.Append(data[i].ToString("x2"));
            }
            // string pasHash = getMd5Hash("Hash");
            return sBuilder.ToString();
        }
        #endregion


        #region Version2
        static string CalculateMD5(string filename)
        {
            using (var md5 = MD5.Create())
            {
                using (var stream = File.OpenRead(filename))
                {
                    var hash = md5.ComputeHash(stream);
                    return BitConverter.ToString(hash).Replace("-", "").ToLowerInvariant();
                }
            }
        }

        public static string checkMD5_(string filename)
        {
            using (var md5 = MD5.Create())
            {
                using (var stream = File.OpenRead(filename))
                {
                    return Encoding.Default.GetString(md5.ComputeHash(stream));
                }
            }
        }
        #endregion


        #region VersionGeneric

        public static string GetMd5Generic(string filename)
        {

            using (FileStream fStream = File.OpenRead(filename))
            {
                return GetHash<MD5>(fStream);
            }

        }

        public static String GetHash<T>(Stream stream) where T : HashAlgorithm
        {
            StringBuilder sb = new StringBuilder();

            MethodInfo create = typeof(T).GetMethod("Create", new Type[] { });
            using (T crypt = (T)create.Invoke(null, null))
            {
                byte[] hashBytes = crypt.ComputeHash(stream);
                foreach (byte bt in hashBytes)
                {
                    sb.Append(bt.ToString("x2"));
                }
            }
            return sb.ToString();
        }
        #endregion

        #region Version3
        public static byte[] ComputeHash(string filePath)
        {
            using (var md5 = MD5.Create())
            {
                return md5.ComputeHash(File.ReadAllBytes(filePath));
            }
        }
        #endregion

        #region MSDNVersion

        public static bool VerefyMd5Msdn(string source)
        {

            using (MD5 md5Hash = MD5.Create())
            {
                string hash = GetMd5Hash(md5Hash, source);

                // Console.WriteLine("The MD5 hash of " + source + " is: " + hash + ".");

                // Console.WriteLine("Verifying the hash...");

                if (VerifyMd5Hash(md5Hash, source, hash))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        static string GetMd5Hash(MD5 md5Hash, string input)
        {

            // Convert the input string to a byte array and compute the hash.
            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data 
            // and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string.
            return sBuilder.ToString();
        }

        // Verify a hash against a string.
        static bool VerifyMd5Hash(MD5 md5Hash, string input, string hash)
        {
            // Hash the input.
            string hashOfInput = GetMd5Hash(md5Hash, input);

            // Create a StringComparer an compare the hashes.
            StringComparer comparer = StringComparer.OrdinalIgnoreCase;

            if (0 == comparer.Compare(hashOfInput, hash))
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        #endregion




    }
}
/*
 using System;
using System.Diagnostics;
using System.ComponentModel;

namespace MyProcessSample
{
    class MyProcess
    {
        // Opens the Internet Explorer application.
        void OpenApplication(string myFavoritesPath)
        {
            // Start Internet Explorer. Defaults to the home page.
            Process.Start("IExplore.exe");

            // Display the contents of the favorites folder in the browser.
            Process.Start(myFavoritesPath);
        }

        // Opens urls and .html documents using Internet Explorer.
        void OpenWithArguments()
        {
            // url's are not considered documents. They can only be opened
            // by passing them as arguments.
            Process.Start("IExplore.exe", "www.northwindtraders.com");

            // Start a Web page using a browser associated with .html and .asp files.
            Process.Start("IExplore.exe", "C:\\myPath\\myFile.htm");
            Process.Start("IExplore.exe", "C:\\myPath\\myFile.asp");
        }

        // Uses the ProcessStartInfo class to start new processes,
        // both in a minimized mode.
        void OpenWithStartInfo()
        {
            ProcessStartInfo startInfo = new ProcessStartInfo("IExplore.exe");
            startInfo.WindowStyle = ProcessWindowStyle.Minimized;

            Process.Start(startInfo);

            startInfo.Arguments = "www.northwindtraders.com";

            Process.Start(startInfo);
        }

        static void Main()
        {
            // Get the path that stores favorite links.
            string myFavoritesPath =
                Environment.GetFolderPath(Environment.SpecialFolder.Favorites);

            MyProcess myProcess = new MyProcess();

            myProcess.OpenApplication(myFavoritesPath);
            myProcess.OpenWithArguments();
            myProcess.OpenWithStartInfo();
        }
    }
}
     
     */
