using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment_2_Day_6
{
    class Program
    {
        static void Main(string[] args)
        {
            TypeA a = new TypeA(1, 2, 3);
            TypeA a1 = new TypeB(2, 3);
            TypeA a2 = new TypeC();
            TypeB b = new TypeB(5, 4);
            TypeB b1 = new TypeC();
            TypeC c = new TypeC();

            a.CalcSum();
            a1.CalcSum();
            a2.CalcSum();
            b.CalcSum();
            b1.CalcSum();
            c.CalcSum();

            Console.WriteLine(" TypeA Data: " + a.ToString());
            Console.WriteLine();

            Console.WriteLine(" TypeA Data: " + a1.ToString());
            Console.WriteLine();

            Console.WriteLine(" TypeA Data: " + a2.ToString());
            Console.WriteLine();

            Console.WriteLine(" TypeB Data: " + b.ToString());
            Console.WriteLine();

            Console.WriteLine(" TypeB Data: " + b1.ToString());
            Console.WriteLine();

            Console.WriteLine(" TypeC Data: " + c.ToString());
            Console.WriteLine();

            Console.ReadKey();

        }
    }
}
