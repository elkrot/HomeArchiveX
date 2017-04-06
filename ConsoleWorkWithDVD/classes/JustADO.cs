using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleWorkWithDVD.classes
{
    class JustADO
    {
        /*
         object yourMysteryObject = (whatever you like it to be);

MemoryStream memStream = new MemoryStream();
StreamWriter sw = new StreamWriter(memStream);

sw.Write(yourMysteryObject);

SqlCommand sqlCmd = new SqlCommand("INSERT INTO TableName(VarBinaryColumn) VALUES (@VarBinary)", sqlConnection);

sqlCmd.Parameters.Add("@VarBinary", SqlDbType.VarBinary, Int32.MaxValue);

sqlCmd.Parameters["@VarBinary"].Value = memStream.GetBuffer();

sqlCmd.ExecuteNonQuery();





        public static string SerializeToXml(object value)
{
  StringWriter writer = new StringWriter(CultureInfo.InvariantCulture);
  XmlSerializer serializer = new XmlSerializer(value.GetType());
  serializer.Serialize(writer, value);
  return writer.ToString();
}


        SqlConnection con = new SqlConnection("Server=Darkover;uid=<username>;pwd=<strong password>;database=northwind");
SqlDataAdapter da = new SqlDataAdapter("Select * From MyImages", con);
SqlCommandBuilder MyCB = new SqlCommandBuilder(da);
DataSet ds = new DataSet("MyImages");

da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
FileStream fs = new FileStream(@"C:\winnt\Gone Fishing.BMP", FileMode.OpenOrCreate, FileAccess.Read);

byte[] MyData= new byte[fs.Length];
fs.Read(MyData, 0, System.Convert.ToInt32(fs.Length));

fs.Close();

da.Fill(ds,"MyImages");

DataRow myRow;
myRow=ds.Tables["MyImages"].NewRow();

myRow["Description"] = "This would be description text";
myRow["imgField"] = MyData;
ds.Tables["MyImages"].Rows.Add(myRow);
da.Update(ds, "MyImages");

con.Close();


        SqlConnection con = new SqlConnection("Server=Darkover;uid=<username>;pwd=<strong password>;database=northwind");
SqlDataAdapter da = new SqlDataAdapter("Select * From MyImages", con);
SqlCommandBuilder MyCB = new SqlCommandBuilder(da);
DataSet ds = new DataSet("MyImages");

byte[] MyData= new byte[0];

da.Fill(ds, "MyImages");
DataRow myRow;
myRow=ds.Tables["MyImages"].Rows[0];
           
MyData =  (byte[])myRow["imgField"];
int ArraySize = new int();
ArraySize = MyData.GetUpperBound(0); 

FileStream fs = new FileStream(@"C:\winnt\Gone Fishing2.BMP", FileMode.OpenOrCreate, FileAccess.Write);
fs.Write(MyData, 0,ArraySize);
fs.Close();






        private static void SaveFileToDatabase()
{
    string connectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=usersdb;Integrated Security=True";
    using (SqlConnection connection = new SqlConnection(connectionString))
    {
        connection.Open();
        SqlCommand command = new SqlCommand();
        command.Connection = connection;
        command.CommandText = @"INSERT INTO Images VALUES (@FileName, @Title, @ImageData)";
        command.Parameters.Add("@FileName", SqlDbType.NVarChar, 50);
        command.Parameters.Add("@Title", SqlDbType.NVarChar, 50);
        command.Parameters.Add("@ImageData", SqlDbType.Image, 1000000);
 
        // путь к файлу для загрузки
        string filename = @"C:\Users\Eugene\Pictures\cats.jpg";
        // заголовок файла
        string title = "Коты";
        // получаем короткое имя файла для сохранения в бд
        string shortFileName = filename.Substring(filename.LastIndexOf('\')+1); // cats.jpg
        // массив для хранения бинарных данных файла
        byte[] imageData;
        using (System.IO.FileStream fs = new System.IO.FileStream(filename, FileMode.Open))
        {
            imageData = new byte[fs.Length];
            fs.Read(imageData, 0, imageData.Length);
        }
        // передаем данные в команду через параметры
        command.Parameters["@FileName"].Value = shortFileName;
        command.Parameters["@Title"].Value = title;
        command.Parameters["@ImageData"].Value = imageData;
 
        command.ExecuteNonQuery();
    }
}




        public class Image
{
    public Image(int id, string filename, string title, byte[] data)
    {
        Id = id;
        FileName = filename;
        Title = title;
        Data = data;
    }
    public int Id { get; private set; }
    public string FileName { get; private set; }
    public string Title { get; private set; }
    public byte[] Data { get; private set; }
}




private static void ReadFileFromDatabase()
{
    string connectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=usersdb;Integrated Security=True";
    List<Image> images = new List<Image>();
    using (SqlConnection connection = new SqlConnection(connectionString))
    {
        connection.Open();
        string sql = "SELECT * FROM Images";
        SqlCommand command = new SqlCommand(sql, connection);
        SqlDataReader reader = command.ExecuteReader();
 
        while(reader.Read())
        {
            int id = reader.GetInt32(0);
            string filename = reader.GetString(1);
            string title = reader.GetString(2);
            byte[] data = (byte[])reader.GetValue(3);
             
            Image image = new Image(id, filename, title, data);
            images.Add(image);
        }
    }
    // сохраним первый файл из списка
    if(images.Count>0)
    {
        using (System.IO.FileStream fs = new System.IO.FileStream(images[0].FileName, FileMode.OpenOrCreate))
        {
            fs.Write(images[0].Data, 0, images[0].Data.Length);
            Console.WriteLine("Изображение '{0}' сохранено", images[0].Title);
        }
    }
}

         */

    }
}
