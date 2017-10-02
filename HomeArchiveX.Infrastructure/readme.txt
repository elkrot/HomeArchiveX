 static void Main(string[] args)
        {
            IniFile INI = new IniFile("config.ini");
            Properties.Settings.Default.Save_text = "Save";
            Console.WriteLine(Properties.Settings.Default.Version);
            INI.Write("SettingForm1", "Height", 1.ToString());
            var h = int.Parse(INI.ReadINI("SettingForm1", "Height"));
            Console.WriteLine(h);

            ReadAllSettings();
            ReadSetting("Setting1");
            ReadSetting("NotValid");
            AddUpdateAppSettings("NewSetting", "May 7, 2014");
            AddUpdateAppSettings("Setting1", "May 8, 2014");
            ReadAllSettings();
               var rm2 = new ResourceManager(typeof(rs));
            Console.WriteLine(rm2.GetString("String1"));         

            Console.WriteLine(Resources.s1);
            var ci = new CultureInfo("en");
            Resources.Culture = ci;
            Console.WriteLine(Resources.s2);
            var rm = new ResourceManager(typeof(Resources));
            Console.WriteLine(rm.GetString("s2"));
            SetConfig();
            StartupFoldersConfigSection section = (StartupFoldersConfigSection)ConfigurationManager.GetSection("StartupFolders");

            if (section != null)
            {


                for (int i = 0; i < section.FolderItems.Count; i++)
                {
                    Console.WriteLine(section.FolderItems[i].FolderType);
                    Console.WriteLine(section.FolderItems[i].Path);
                }


            }


            Console.ReadKey();

        }


        static void ReadAllSettings()
        {
            try
            {
                var appSettings = ConfigurationManager.AppSettings;

                if (appSettings.Count == 0)
                {
                    Console.WriteLine("AppSettings is empty.");
                }
                else
                {
                    foreach (var key in appSettings.AllKeys)
                    {
                        Console.WriteLine("Key: {0} Value: {1}", key, appSettings[key]);
                    }
                }
            }
            catch (ConfigurationErrorsException)
            {
                Console.WriteLine("Error reading app settings");
            }
        }

        static void ReadSetting(string key)
        {
            try
            {
                var appSettings = ConfigurationManager.AppSettings;
                string result = appSettings[key] ?? "Not Found";
                Console.WriteLine(result);
            }
            catch (ConfigurationErrorsException)
            {
                Console.WriteLine("Error reading app settings");
            }
        }

        static void AddUpdateAppSettings(string key, string value)
        {
            try
            {
                var configFile = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                var settings = configFile.AppSettings.Settings;
                if (settings[key] == null)
                {
                    settings.Add(key, value);
                }
                else
                {
                    settings[key].Value = value;
                }
                configFile.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection(configFile.AppSettings.SectionInformation.Name);
            }
            catch (ConfigurationErrorsException)
            {
                Console.WriteLine("Error writing app settings");
            }
        }

        public static void SetConfig() {
            Configuration cfg = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            StartupFoldersConfigSection section = (StartupFoldersConfigSection)cfg.GetSection("StartupFolders");
            if (section != null)
            {
                System.Diagnostics.Debug.WriteLine(section.FolderItems[0].FolderType);
                System.Diagnostics.Debug.WriteLine(section.FolderItems[0].Path);
                section.FolderItems[0].Path = "C:\\Nanook";
                cfg.Save(); //устанавливает перенос на новую строку и производит проверку <exename>.vshost.exe.config файла в вашей отладочной папке.
            }
        }
    }






	 private void ReadImageFromDatabase()
        {

            List<byte[]> images = new List<byte[]>();
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString()))
            {
                connection.Open();
                string sql = "select Thumbnail FROM[dbo].[Image] ";
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {

                    //images.Add(_fileManager.GetDataFromBinary<Image>((byte[])reader.GetValue(0)));
                }
            }
            // _fileManager.GetDataFromBinary<Image> (byte[] data)
            string FileName = @"d:\test.jpg";
            // сохраним первый файл из списка
            if (images.Count > 0)
            {
                using (System.IO.FileStream fs = new System.IO.FileStream(FileName, FileMode.OpenOrCreate))
                {
                    fs.Write(images[1], 0, images[1].Length);

                }
            }
        }

