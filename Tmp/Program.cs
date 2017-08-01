using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Tmp
{
    class Program
    {
        static void Main(string[] args)
        {

            var fullpath = @"D:\GitRepositories\HomeArchiveX\{0}.csv";
            string path2 = string.Format(fullpath, "ru");
            string path1 = string.Format(fullpath, "en");
            string path3 = @"D:\GitRepositories\HomeArchiveX\params.txt";

            SaveLanfFile(path2, "ru");
            SaveLanfFile(path1, "en");
            SaveParamsFile(path3);

            Console.WriteLine("----");

            XDocument xdoc2 = XDocument.Load("ru_lang.xml");
            var items = from xe in xdoc2.Elements("root").Elements()
                        where xe.Attribute("title").Value == "Text1"
                        select new
                        {
                            title = xe.Attribute("title").Value,
                            translate = xe.Attribute("translate").Value
                        };
            // 
            Console.WriteLine(items.FirstOrDefault().translate);
            Console.ReadKey();
        }

        private static void SaveParamsFile(string path)
        {
            var roots = new[] { "General", "Video", "Audio", "Text", "Other", "Image", "Menu" };
            XDocument xdoc = new XDocument();
            XElement root = new XElement("root");
            try
            {
                using (StreamReader sr = new StreamReader(path, System.Text.Encoding.UTF8))
                {
                    string line;
                    XElement sub = null;
                    while ((line = sr.ReadLine()) != null)
                    {
                        if (roots.Contains(line))
                        {
                            sub = new XElement(line.Trim());
                        }
                        var lines = line.Split(':');
                        XElement row = new XElement((lines[0]??line).Trim(), (lines[1] ?? "").Trim());

                        if (sub != null)
                        {
                            sub.Add(row);
                        }

                    }

                }


            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            xdoc.Add(root);
            xdoc.Save(string.Format("params.xml"));
        }
        #region SaveLanfFile
        private static void SaveLanfFile(string path1, string lng)
        {
            XDocument xdoc = new XDocument();
            XElement root = new XElement("root");
            try
            {
                using (StreamReader sr = new StreamReader(path1, System.Text.Encoding.UTF8))
                {
                    string line;
                    while ((line = sr.ReadLine()) != null)
                    {
                        var lines = line.Split(';');
                        XElement row = new XElement("row");
                        XAttribute attr = new XAttribute("title", lines[0].Trim());
                        XAttribute attr2 = new XAttribute("translate", lines[1].Trim() ?? "");

                        row.Add(attr);
                        row.Add(attr2);
                        root.Add(row);
                    }

                }


            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            xdoc.Add(root);
            xdoc.Save(string.Format("{0}_lang.xml", lng));
        }

        #endregion



    }
}
