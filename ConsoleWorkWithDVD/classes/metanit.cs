using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

namespace Serialization
{
    [Serializable]
    class Person
    {
        public string Name { get; set; }
        public int Age { get; set; }

        public Person(string name, int age)
        {
            Name = name;
            Age = age;
        }
    }

    class Program1
    {
        static void Main22(string[] args)
        {
            // объект для сериализации
            Person person = new Person("Tom", 29);
            Console.WriteLine("Объект создан");

            // создаем объект BinaryFormatter
            BinaryFormatter formatter = new BinaryFormatter();
            // получаем поток, куда будем записывать сериализованный объект
            using (FileStream fs = new FileStream("people.dat", FileMode.OpenOrCreate))
            {
                formatter.Serialize(fs, person);

                Console.WriteLine("Объект сериализован");
            }

            // десериализация из файла people.dat
            using (FileStream fs = new FileStream("people.dat", FileMode.OpenOrCreate))
            {
                Person newPerson = (Person)formatter.Deserialize(fs);

                Console.WriteLine("Объект десериализован");
                Console.WriteLine("Имя: {0} --- Возраст: {1}", newPerson.Name, newPerson.Age);
            }

            Console.ReadLine();
        }
    }
}


/*
 Person person1 = new Person("Tom", 29);
Person person2 = new Person("Bill", 25);
// массив для сериализации
Person[] people = new Person[] { person1, person2 };
 
BinaryFormatter formatter = new BinaryFormatter();
 
using (FileStream fs = new FileStream("people.dat", FileMode.OpenOrCreate))
{
    // сериализуем весь массив people
    formatter.Serialize(fs, people);
 
    Console.WriteLine("Объект сериализован");
}
 
// десериализация
using (FileStream fs = new FileStream("people.dat", FileMode.OpenOrCreate))
{
    Person[] deserilizePeople = (Person[])formatter.Deserialize(fs);
 
    foreach (Person p in deserilizePeople)
    {
        Console.WriteLine("Имя: {0} --- Возраст: {1}", p.Name, p.Age);
    }
}
     
     */
