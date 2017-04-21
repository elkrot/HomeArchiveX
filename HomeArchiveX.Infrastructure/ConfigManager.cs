using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Infrastructure
{
    public class ConfigManager
    {
        private static ConfigManager instance;

        private Configuration configFile;
        private KeyValueConfigurationCollection settings;

        #region Свойства Конфигурации
        public DateTime StartDate
        {
            get
            {
                DateTime result;
                DateTime.TryParse(GetSetting(nameof(StartDate)), out result);
                return result;
            }
            set { AddUpdateAppSettings(nameof(StartDate), value.ToShortDateString()); }
        }
        public DateTime EndDate
        {
            get
            {
                DateTime result;
                DateTime.TryParse(GetSetting(nameof(EndDate)), out result);
                return result;
            }
            set { AddUpdateAppSettings(nameof(EndDate), value.ToShortDateString()); }
        }

        #endregion

        #region Описание класса
        private ConfigManager()
        {
            configFile = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            settings = configFile.AppSettings.Settings;
        }

        public static ConfigManager getInstance()
        {
            if (instance == null)
                instance = new ConfigManager();
            return instance;
        }



        private string GetSetting(string key)
        {
            try
            {
                return settings[key] == null ? "" : settings[key].Value ?? "";

            }
            catch (ConfigurationErrorsException)
            {
                return "";
            }
        }

        private void AddUpdateAppSettings(string key, string value)
        {
            try
            {
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

            }
        }
        #endregion



    }
}
