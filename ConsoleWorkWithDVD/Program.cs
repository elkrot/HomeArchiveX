using System;
using System.Collections.Generic;
using System.IO;

using System.Data.SqlClient;
using System.Data;
using System.Data.Common;
using System.Runtime.Serialization.Formatters.Binary;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Windows.Media.Imaging;
using MediaInfoLib;
using MediaInfoNET;
using System.Threading;
using System.Globalization;

namespace ConsoleWorkWithDVD
{
    //Directory.GetCurrentDirectory ()
    class Program
    {
      
        static void Main()
        {

        var pathToMdfFileDirectory = Directory.GetCurrentDirectory();// @"d:\temp\";
        AppDomain.CurrentDomain.SetData("DataDirectory", pathToMdfFileDirectory);

            var cnf = new ConfigurationData();
            var lg = new Logger();
            var fm = new FileManager(cnf, lg);
            var dm = new DataManager(cnf, fm, lg);

            RenderMenu();
            string line;
            int choice = 0;
            do
            {
                Console.WriteLine("------");
                line = Console.ReadLine();
                if (line != null)
                {
                    int.TryParse(line, out choice);
                    if (choice != 0)
                    {
                        MakeChoice(dm, choice);
                        Console.WriteLine("Работа с БД Завершена");
                    }
                    else
                    {
                        Console.WriteLine("Не корректно сделан выбор");
                    }

                }

            } while (line != null);

            Console.WriteLine("The end");
            Console.ReadKey();
        }

      


       
        private static void RenderMenu()
        {
            Console.WriteLine("Сделай выбор");
            Console.WriteLine("1. Очистить данные");
            Console.WriteLine("2. Сохранить данные о диске");
            Console.WriteLine("----------------------------");
            Console.WriteLine("3. Отобразить данные о диске");
            Console.WriteLine("4. Отобразить данные о Дирректории");
            Console.WriteLine("5. Отобразить данные о файле");
            Console.WriteLine("----------------------------");
            Console.WriteLine("8. Очистить экран");
            Console.WriteLine("9. Выход");
        }

        private static void GetDirectoryInfoById(DataManager dm, int id)
        {
            DirectoryInfo ri = dm.GetDirectoryInfoById(id);
            Console.WriteLine("------");
            Console.WriteLine(ri.FullName);
            Console.WriteLine("------");
        }

        private static void RenderFileInfoById(DataManager dm, int id)
        {
            FileInfo fi = dm.GetFileInfoById(id);
            Console.WriteLine("------");
            Console.WriteLine(fi.FullName);
            var attr = fi.Attributes;
            var mfi = dm.GetMediaFileInfoById(id);
            if (mfi != null) {
                foreach (var item in mfi)
                {
                    Console.WriteLine(string.Format("{0}-{1}",item.Key,item.Value));
                }
            }

            Console.WriteLine("------");
        }

        private static void RenderDriveInfoById(DataManager dm, int id)
        {
            DriveInfo di = dm.GetDriveInfoById(id);
            Console.WriteLine("------");
            Console.WriteLine(di.Name);
            Console.WriteLine("------");
        }

        private static void MakeChoice(DataManager dm, int choise)
        {
            int id = 0;
            string strid = "";
            switch (choise)
            {
                case 1:
                    ClearData(dm);
                    break;
                case 2:
                    Console.WriteLine("Введите Букву устройства");
                    string drvLetter = Console.ReadLine().ToString();
                    Console.WriteLine("Введите Заголовок описание устройства");
                    string title = Console.ReadLine().ToString();
                    CrtDrv(dm, drvLetter, title);
                    break;
                case 3:
                    Console.WriteLine("Введите Код Диска");
                    strid = Console.ReadLine();
                    int.TryParse(strid, out id);
                    RenderDriveInfoById(dm, id);
                    break;
                case 4:
                    Console.WriteLine("Введите Код Дирректории");
                    strid = Console.ReadLine();
                    int.TryParse(strid, out id);
                    GetDirectoryInfoById(dm, id);
                    break;
                case 5:
                    Console.WriteLine("Введите Код Файла");
                    strid = Console.ReadLine();
                    int.TryParse(strid, out id);
                    RenderFileInfoById(dm, id);
                    break;
                case 8:
                    Console.Clear();
                    RenderMenu();
                    break;
                case 9:
                    System.Environment.Exit(-1);
                    break;
                default:
                    break;
            }
        }

        private static void ClearData(IDataManager dm)
        {
            Console.WriteLine("Очистка ...");
            dm.TruncateTables();
            Console.WriteLine("Очистка выполнена");
        }

        private static void CrtDrv(IDataManager dm, string drvLetter, string title)
        {


            string pathDrive = string.Format(@"{0}:\", drvLetter);
            int driveId = dm.CreateDrive(pathDrive, title);
            if (driveId != 0)
            {
                dm.FillDirectoriesInfo(driveId, pathDrive);
                dm.FillFilesInfo(driveId, pathDrive);
            }
            else
            {
                Console.WriteLine(dm.logger.GetLog());
            }
        }





        private static string ReadMediaInfo(string path)
        {
            //Initilaizing MediaInfo
            MediaInfoLib.MediaInfo MI = new MediaInfoLib.MediaInfo();

            //From: preparing an example file for reading
            FileStream From = new FileStream(path, FileMode.Open, FileAccess.Read);

            //From: preparing a memory buffer for reading
            byte[] From_Buffer = new byte[64 * 1024];
            int From_Buffer_Size; //The size of the read file buffer

            //Preparing to fill MediaInfo with a buffer
            MI.Open_Buffer_Init(From.Length, 0);

            //The parsing loop
            do
            {
                //Reading data somewhere, do what you want for this.
                From_Buffer_Size = From.Read(From_Buffer, 0, 64 * 1024);

                //Sending the buffer to MediaInfo
                System.Runtime.InteropServices.GCHandle GC = System.Runtime.InteropServices.GCHandle.Alloc(From_Buffer, System.Runtime.InteropServices.GCHandleType.Pinned);
                IntPtr From_Buffer_IntPtr = GC.AddrOfPinnedObject();
                Status Result = (Status)MI.Open_Buffer_Continue(From_Buffer_IntPtr, (IntPtr)From_Buffer_Size);
                GC.Free();
                if ((Result & Status.Finalized) == Status.Finalized)
                    break;

                //Testing if MediaInfo request to go elsewhere
                if (MI.Open_Buffer_Continue_GoTo_Get() != -1)
                {
                    Int64 Position = From.Seek(MI.Open_Buffer_Continue_GoTo_Get(), SeekOrigin.Begin); //Position the file
                    MI.Open_Buffer_Init(From.Length, Position); //Informing MediaInfo we have seek
                }
            }
            while (From_Buffer_Size > 0);

            //Finalizing
            MI.Open_Buffer_Finalize(); //This is the end of the stream, MediaInfo must finnish some work

            //Get() example
            MI.Option("Inform", "General;File size is %FileSize% bytes");
            //ToDisplay += MI.Inform();
            return "Container format is " + MI.Get(MediaInfoLib.StreamKind.Audio, 0, "SamplingRate");
                //MI.Get(MediaInfoLib.StreamKind.Audio, 0, "StreamCount");

        }

        private static void DisplayMediaInfo(string path)
        {
            String ToDisplay;
            MediaInfoLib.MediaInfo MI = new MediaInfoLib.MediaInfo();

            ToDisplay = MI.Option("Info_Version", "0.7.0.0;MediaInfoDLL_Example_CS;0.7.0.0");
            if (ToDisplay.Length == 0)
            {
                Console.Write("MediaInfo.Dll: this version of the DLL is not compatible");
                return;
            }

            //Information about MediaInfo
            ToDisplay += "\r\n\r\nInfo_Parameters\r\n";
            ToDisplay += MI.Option("Info_Parameters");

            ToDisplay += "\r\n\r\nInfo_Capacities\r\n";
            ToDisplay += MI.Option("Info_Capacities");

            ToDisplay += "\r\n\r\nInfo_Codecs\r\n";
            ToDisplay += MI.Option("Info_Codecs");

            //An example of how to use the library
            ToDisplay += "\r\n\r\nOpen\r\n";
            ToDisplay += "\r\n\r\nClose\r\n==========================";
            ToDisplay += "\r\n\r\nClose\r\n==========================";
            MI.Open("d:\temp\test.mp4");

            ToDisplay += "\r\n\r\nInform with Complete=false\r\n";
            MI.Option("Complete");
            ToDisplay += MI.Inform();

            ToDisplay += "\r\n\r\nInform with Complete=true\r\n";
            MI.Option("Complete", "1");
            ToDisplay += MI.Inform();

            ToDisplay += "\r\n\r\nCustom Inform\r\n";
            MI.Option("Inform", "General;File size is %FileSize% bytes");
            ToDisplay += MI.Inform();

            ToDisplay += "\r\n\r\nGet with Stream=General and Parameter='FileSize'\r\n";
            ToDisplay += MI.Get(0, 0, "FileSize");

            ToDisplay += "\r\n\r\nGet with Stream=General and Parameter=46\r\n";
            ToDisplay += MI.Get(0, 0, 46);

            ToDisplay += "\r\n\r\nCount_Get with StreamKind=Stream_Audio\r\n";
            ToDisplay += MI.Count_Get(MediaInfoLib.StreamKind.Audio);

            ToDisplay += "\r\n\r\nGet with Stream=General and Parameter='AudioCount'\r\n";
            ToDisplay += MI.Get(MediaInfoLib.StreamKind.General, 0, "AudioCount");

            ToDisplay += "\r\n\r\nGet with Stream=Audio and Parameter='StreamCount'\r\n";
            ToDisplay += MI.Get(MediaInfoLib.StreamKind.Audio, 0, "StreamCount");
            ToDisplay += MI.Option("Info_Version", "0.7.0.0;MediaInfoDLL_Example_CS;0.7.0.0");
            ToDisplay += "\r\n\r\nClose\r\n";
            MI.Close();
            ToDisplay += "\r\n\r\nClose\r\n==========================";
            //Example with a stream
            ToDisplay += "\r\n" + ReadMediaInfo(path) + "\r\n";

            //Displaying the text
            Console.Write(ToDisplay);
        }



        [FlagsAttribute]
        public enum Status
        {
            Accepted = 0x01,
            Filled = 0x02,
            Updated = 0x04,
            Finalized = 0x08
        };







    }

}