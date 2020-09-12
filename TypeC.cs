using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment_2_Day_6
{
    class TypeC:TypeB
    {
        // Defined x
        int w;

        // Constructor Takes 4 Types
        public TypeC():base(3,5)
        {
            // Assign x
            this.x = 5;
            // Assign y
            this.y = 4;
            // Assign z
            this.z = 7;
            // Assign w
            this.w = 9;

        } // End Shape Constructor

        // Property Of W
        public int W
        {
            // Set w Value
            set
            {
                // Assign w Value
                w = value;

            } // End Set w

            // Get w Value
            get
            {
                // Return w Value
                return w;

            } // End Get w

        } // End w

        // Method to Calculating Sum Of x,y,z,w
        public override double CalcSum()
        {
            // Return Sum Value
            return sum = x + y + z + w;

        } // End Sum

        // Override Function To Print Values Of TypeC Data
        public override string ToString()
        {
            // Return TypeC Data
            return " X: " + x + ", Y: " + y + ", Z: " + z + ", W: " + w + ", Sum: " + sum;

        } // End ToString

    }
}
