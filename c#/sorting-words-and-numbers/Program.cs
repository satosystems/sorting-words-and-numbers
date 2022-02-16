using System;
using System.Collections.Generic;
using System.Linq;

namespace sortingwordsandnumbers
{
    class MainClass
    {
        public static void Main()
        {
            while (true)
            {
                var line = Console.ReadLine();
                var splitted = line.Split(' ');
                var sorted = splitted.Aggregate((new List<string>(), new List<string>()), (acc, cur) =>
                {
                    if (cur.All(Char.IsNumber))
                    {
                        acc.Item1.Add(cur);
                    }
                    else
                    {
                        acc.Item2.Add(cur);
                    }
                    return acc;
                });
                sorted.Item1.ForEach(x => Console.Write("{0},", x));
                Console.WriteLine();
                sorted.Item2.ForEach(x => Console.Write("{0},", x));
                Console.WriteLine();
            }
        }
    }
}
