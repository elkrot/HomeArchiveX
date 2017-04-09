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

namespace ConsoleWorkWithDVD
{
    //Directory.GetCurrentDirectory ()
    class Program
    {
      
        static void Main()
        {
            var pathToMdfFileDirectory = Directory.GetCurrentDirectory();// @"d:\temp\";
        AppDomain.CurrentDomain.SetData("DataDirectory", pathToMdfFileDirectory);
           // ReadMediaInfoNet();
            //DisplayMediaInfo();
          //  Console.ReadKey();

            //return;

           // ReadMp3();

           // ReadJpgMetadata();

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













    }

}