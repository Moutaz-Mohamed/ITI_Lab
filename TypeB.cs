using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment_2_Day_6
{
    class TypeB:TypeA
    {

        // Constructor Takes 2 Types
        public TypeB(int _x, int _y)
        {
            // Assign x
            this.x = _x;
            // Assign y
            this.y = _y;

        } // End Shape Constructor

        // Method to Calculating Sum Of x,y
        public override double CalcSum()
        {
            // Return Sum Value
            return sum = x + y;

        } // End Sum

        // Override Function To Print Values Of TypeB Data
        public override string ToString()
        {
            // Return TypeB Data
            return " X: " + x + ", Y: " + y + ", Sum: " + sum;

        } // End ToString
    }
}
