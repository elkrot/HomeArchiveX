using System;
using System.IO;
using System.Linq;
using HomeArchiveX.Infrastructure;
using System.Collections;
using System.Collections.Generic;

namespace HomeArchiveX
{
    //Directory.GetCurrentDirectory ()
    class Program
    {
        enum StartupInfoParameter
        {/// <summary>
         /// Новый диск
         /// </summary>
            NewDrive,
            NoFullSizeImages,
            SelectFirstDrive
        }
        static Dictionary<StartupInfoParameter, string> startupParameters = new Dictionary<StartupInfoParameter, string>();
        static void Main(string[] args)
        {

            ///new - Добавление
            ///nofsimg - Не сохранять полноразмерные картинки , только эскизы
            ///fdrv - Использовать первый привод с индексом 0
            if (args.Length != 0)
            {
                if (args.Contains("/new")) startupParameters.Add(StartupInfoParameter.NewDrive, "");

                if (args.Contains("/nofsimg")) startupParameters.Add(StartupInfoParameter.NoFullSizeImages, "");

                if (args.Contains("/fdrv")) startupParameters.Add(StartupInfoParameter.SelectFirstDrive, "");

            }


            var pathToMdfFileDirectory = Directory.GetCurrentDirectory();// @"d:\temp\";
            AppDomain.CurrentDomain.SetData("DataDirectory", pathToMdfFileDirectory);

            var cnf = new ConfigurationData();
            var lg = new Logger();
            var fm = new FileManager(cnf, lg);
            IDataManager dm;
            if (startupParameters.Keys.Contains(StartupInfoParameter.NoFullSizeImages))
            {
                dm = new DataManager(cnf, fm, lg, 0);
            }
            else
            {
                dm = new DataManager(cnf, fm, lg);
            }
            if (startupParameters.Keys.Contains(StartupInfoParameter.NewDrive))
            {
                CreateDriveOnStart(dm);
            }
            else
            {
                RenderMenu();

            }

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

        private static void CreateDriveOnStart(IDataManager dm)
        {
            
            DriveInfo[] allDrives = DriveInfo.GetDrives().Where(x => x.DriveType == DriveType.CDRom).ToArray();
            int i = 0;
            foreach (DriveInfo d in allDrives)
            {

                Console.WriteLine("{1}. Диск {0}", d.Name, i);
                i++;

            }

            if (allDrives.Count() == 0) {
                Console.WriteLine("Отсутствуют Приводы");
                return;
            }
                var drvLetter = allDrives[0].Name;


            if (!string.IsNullOrWhiteSpace(drvLetter))
            {
                Console.WriteLine("Введите Заголовок Диска");
                string title = Console.ReadLine().ToString();
                Console.WriteLine("Введите Код диска");
                string diskCode = Console.ReadLine().ToString();
                CrtDrv(dm, drvLetter, title,  diskCode);
            }
            else
            {
                Console.WriteLine("Ошибка при вводе Кода устройства");
            }
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
        private static void GetDirectoryInfoById(IDataManager dm, int id)
        {
            Dictionary<string,string> ri = dm.GetDirectoryInfoById(id);
            Console.WriteLine("------");
            foreach (var item in ri.Keys)
            {
                Console.WriteLine(string.Format("{0}-{1}", item, ri[item]));
            }
            Console.WriteLine("------");
        }

        private static void RenderFileInfoById(IDataManager dm, int id)
        {
            Dictionary<string, string> fi = dm.GetFileInfoById(id);
            Console.WriteLine("------");
            
            foreach (var item in fi.Keys)
            {
                Console.WriteLine(string.Format("{0}-{1}",item,fi[item]));
            }


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

        private static void RenderDriveInfoById(IDataManager dm, int id)
        {
            DriveInfo di = dm.GetDriveInfoById(id);
            Console.WriteLine("------");
            Console.WriteLine(di.Name);
            Console.WriteLine("------");
        }


        private static void RenderDrives(IDataManager dm)
        {
            string[] drivesList = dm.GetDrives();
            Console.WriteLine("------");
            foreach (var item in drivesList)
            {
                Console.WriteLine(item);
            }


            Console.WriteLine("------");
        }


        private static void RenderDirectories(IDataManager dm, int driveId)
        {
            string[] drivesList = dm.GetDirectories(driveId);
            Console.WriteLine("------");
            foreach (var item in drivesList)
            {
                Console.WriteLine(item);
            }
            Console.WriteLine("------");
        }

        private static void RenderFiles(IDataManager dm, int driveId)
        {
            string[] drivesList = dm.GetFiles(driveId);
            Console.WriteLine("------");
            foreach (var item in drivesList)
            {
                Console.WriteLine(item);
            }
            Console.WriteLine("------");
        }


        private static void MakeChoice(IDataManager dm, int choise)
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
                        Console.WriteLine("Введите Код Диска");
                        string driveCode = Console.ReadLine().ToString();
                        CrtDrv(dm, drvLetter, title, driveCode);
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

        private static void CrtDrv(IDataManager dm, string drvLetter, string title, string diskCode)
        {


            string pathDrive = drvLetter;
            //string.Format(@"{0}:\", drvLetter);
            int driveId = dm.CreateDrive(pathDrive, title,  diskCode);
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