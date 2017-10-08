using System;
using System.Threading;
using System.Speech.Synthesis;
namespace speaktime
{
    class Program
    {
        static void Main(string[] args)
        {
            //Create a new speech synthesizer process and use the name talk
            SpeechSynthesizer talk = new SpeechSynthesizer();
            //Write details about dev
            Console.WriteLine("Author: NerdOfCode.");
            Console.WriteLine("Purpose: Speak time.");
            Thread.Sleep(3500);

            //Get users name and store it as a string
            Console.Write("Enter Name: ");
            string name = Console.ReadLine();
            //if user enters no name Exit program
            if (name == "")
            {
                Console.Write("No name, no play");
                talk.Speak(string.Format("No name... goodbye now"));
                System.Environment.Exit(1);
            }


            //Say name and information about date & time
            talk.Speak(string.Format("Hello {0}", name));
            DateTime currentTime = DateTime.Now;
            talk.Speak(string.Format("The current time is {0}", currentTime));
            


            //Exit program
            System.Environment.Exit(1);


        }
    }
}
