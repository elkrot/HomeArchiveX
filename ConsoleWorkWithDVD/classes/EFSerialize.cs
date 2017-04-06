using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleWorkWithDVD.classes
{
    class EFSerialize
    {
        /*
         using (DbContext db = new DbContext())
            {
                // The object that you want to serialize. In this case it is just an empty instance
                YourObject objectToSerialize = new YourObject();
                IFormatter formatter = new BinaryFormatter();
                using (MemoryStream stream = new MemoryStream())
                {
                    formatter.Serialize(stream, objectToSerialize);

                    // EF model. In one of its properties you store the serialized object
                    YourModel modelObject = new YourModel();

                    // In your model 'SerializedObject' should be of type byte[]. In the database it should be of type varbinary(MAX)
                    modelObject.SerializedObject = stream.ToArray(); 
                    db.YourModel.Add(modelObject);
                    db.SaveChanges();
                }
            }


        IFormatter formatter = new BinaryFormatter();
            Stream stream = new MemoryStream(serializedObject);
            YourObject deserializedYourObject = (YourObject)formatter.Deserialize(stream);
            stream.Close();
         */
    }
}
