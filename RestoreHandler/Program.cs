using System;
using System.IO;

namespace RestoreHandler
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter the Backup Db Name ?");
            var backupDb = Console.ReadLine();

            Console.Write("Enter the Restore Db Name ?");
            var restoreDb = Console.ReadLine();

            Console.Write("Enter the Client ID ?");
            var clientId = Console.ReadLine();

            var reader1 = new StreamReader("CedarRestoreScript01-DeleteCurrentRecords.sql");
            var reader2 = new StreamReader("CedarRestoreScript02-Copy.sql");

            var script1String = reader1.ReadToEnd();
            script1String = script1String.Replace("@ClientId", clientId);
            script1String = script1String.Replace("[CedarSpaceDB]", '[' + restoreDb + ']');

            var script2String = reader2.ReadToEnd();
            script2String = script2String.Replace("@ClientId", clientId);
            script2String = script2String.Replace("[CedarSpaceDB]", '[' + restoreDb + ']');
            script2String = script2String.Replace("[CedarBackup]", '[' + backupDb + ']');

            File.WriteAllText("01-DeleteScript.sql",script1String);
            File.WriteAllText("02-CopyScript.sql", script2String);
         
            Console.WriteLine("Scripts are generated...");
            Console.ReadLine();
        }
    }
}
