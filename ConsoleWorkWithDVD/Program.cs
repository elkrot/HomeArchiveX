using System;
using System.Collections.Generic;
using System.IO;

using System.Data.SqlClient;
using System.Data;
using System.Linq;
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

            //Console.ReadKey();
            //return;

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
            Console.Clear();
            Console.WriteLine("Сделай выбор");
            Console.WriteLine("1. Очистить данные");
            Console.WriteLine("2. Сохранить данные о диске");
            Console.WriteLine("----------------------------");
            Console.WriteLine("3. Диски");
            Console.WriteLine("4. Дирректории");
            Console.WriteLine("5. Файлы");
            Console.WriteLine("----------------------------");
            Console.WriteLine("8. Очистить экран");
            Console.WriteLine("9. Выход");
        }
        private static void RenderSubMenu(int kodMenu)
        {
            Console.Clear();
            switch (kodMenu)
            {

                case 3:
                    Console.WriteLine("1. Все Диски");
                    Console.WriteLine("2. Отобразить данные о диске");
                    Console.WriteLine("0. Назад");
                    break;
                case 4:
                    Console.WriteLine("1. Все Дирректории");
                    Console.WriteLine("2. Отобразить данные о Дирректории");
                    Console.WriteLine("0. Назад");
                    break;
                case 5:
                    Console.WriteLine("1. Все файлы");
                    Console.WriteLine("2. Отобразить данные о файле");
                    Console.WriteLine("0. Назад");
                    break;
                default:
                    break;
            }

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
            if (mfi != null)
            {
                foreach (var item in mfi)
                {
                    Console.WriteLine(string.Format("{0}-{1}", item.Key, item.Value));
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


        private static void RenderDrives(DataManager dm)
        {
            string[] drivesList = dm.GetDrives();
            Console.WriteLine("------");
            foreach (var item in drivesList)
            {
                Console.WriteLine(item);
            }


            Console.WriteLine("------");
        }


        private static void RenderDirectories(DataManager dm, int driveId)
        {
            string[] drivesList = dm.GetDirectories(driveId);
            Console.WriteLine("------");
            foreach (var item in drivesList)
            {
                Console.WriteLine(item);
            }
            Console.WriteLine("------");
        }

        private static void RenderFiles(DataManager dm, int driveId)
        {
            string[] drivesList = dm.GetFiles(driveId);
            Console.WriteLine("------");
            foreach (var item in drivesList)
            {
                Console.WriteLine(item);
            }
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
                    Console.WriteLine("Введите Номер устройства");
                    DriveInfo[] allDrives = DriveInfo.GetDrives().Where(x => x.DriveType == DriveType.CDRom).ToArray();
                    int i = 0;
                    foreach (DriveInfo d in allDrives)
                    {

                        Console.WriteLine("{1}. Диск {0}", d.Name, i);
                        i++;

                    }
                    int drvIndex = 0;
                    string drvLetter = "";
                    if (int.TryParse(Console.ReadLine(), out drvIndex) && allDrives.Count() > 0 && drvIndex < allDrives.Count())
                    {
                        drvLetter = allDrives[drvIndex].Name;
                    }

                    if (!string.IsNullOrWhiteSpace(drvLetter))
                    {
                        Console.WriteLine("Введите Заголовок описание устройства");
                        string title = Console.ReadLine().ToString();
                        CrtDrv(dm, drvLetter, title);
                    }
                    else
                    {
                        Console.WriteLine("Ошибка при вводе Кода устройства");
                    }
                    break;
                case 3:

                    RenderSubMenu(choise);
                    strid = null;
                    do
                    {
                        strid = Console.ReadLine();
                        int.TryParse(strid, out id);
                        if (id == 1)
                        {
                            RenderDrives(dm);
                        }
                        else if (id == 2)
                        {
                            Console.WriteLine("Введите Код Диска");
                            strid = Console.ReadLine();
                            int.TryParse(strid, out id);
                            RenderDriveInfoById(dm, id);
                        }
                        else
                        {
                            strid = null;
                            RenderMenu();
                        }
                    } while (strid != null);



                    break;
                case 4:
                    RenderSubMenu(choise);
                    strid = null;
                    do
                    {
                        strid = Console.ReadLine();
                    int.TryParse(strid, out id);
                    if (id == 1)
                    {
                        Console.WriteLine("Введите Код Диска");
                        strid = Console.ReadLine();
                        int.TryParse(strid, out id);
                        RenderDirectories(dm, id);

                    }
                    else if (id == 2)
                    {
                        Console.WriteLine("Введите Код Дирректории");
                        strid = Console.ReadLine();
                        int.TryParse(strid, out id);
                        GetDirectoryInfoById(dm, id);
                    }
                    else
                    {
                            strid = null;
                            RenderMenu();
                    }
                    } while (strid != null);



                    break;
                case 5:
                    RenderSubMenu(choise);
                    strid = null;
                    do
                    {
                        strid = Console.ReadLine();
                    int.TryParse(strid, out id);
                    if (id == 1)
                    {
                        Console.WriteLine("Введите Код Диска");
                        strid = Console.ReadLine();
                        int.TryParse(strid, out id);
                        RenderFiles(dm, id);
                    }
                    else if (id == 2)
                    {
                        Console.WriteLine("Введите Код Файла");
                        strid = Console.ReadLine();
                        int.TryParse(strid, out id);
                        RenderFileInfoById(dm, id);
                    }
                    else
                    {
                            strid = null;
                            RenderMenu();
                    }
                    } while (strid != null);



                    break;
                case 8:
                    Console.Clear();
                    RenderMenu();
                    break;
                case 31:

                    break;
                case 41:


                    break;
                case 51:

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


            string pathDrive = drvLetter;
            //string.Format(@"{0}:\", drvLetter);
            int driveId = dm.CreateDrive(pathDrive, title);
            if (driveId != 0)
            {
                dm.FillDirectoriesInfo(driveId, pathDrive);
                dm.FillFilesInfo(driveId, pathDrive);
                dm.ClearCash();
            }
            else
            {
                Console.WriteLine(dm.logger.GetLog());
            }
        }













    }

}