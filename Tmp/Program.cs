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
            string path2 = @"D:\GitRepositories\HomeArchiveX\ru.csv";
            string path1 = @"D:\GitRepositories\HomeArchiveX\en.csv";
            string path3 = @"D:\GitRepositories\HomeArchiveX\params.txt";
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
            xdoc.Save("ru_lang.xml");


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
    }
}
