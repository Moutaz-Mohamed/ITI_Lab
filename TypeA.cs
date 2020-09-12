using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment_2_Day_6
{
    class TypeA
    {
        #region TypeA_Attributes

        // Defined x
        protected int x;
        // Defined y
        protected int y;
        // Defined z
        protected int z;
        // Defined sum
        protected int sum;

        #endregion

        #region Constructors

        // Constructor Takes 3 Types
        public TypeA(int _x, int _y, int _z)
        {
            // Assign x
            this.x = _x;
            // Assign y
            this.y = _y;
            // Assign z
            this.z = _z;

        } // End Shape Constructor

        // Constructor Takes 0 Types
        public TypeA()
        {
            // Assign x
            this.x = 3;
            // Assign y
            this.y = 5;
            // Assign z
            this.z = 7;

        } // End Shape Constructor

        #endregion

        #region Properties

        // Property Of X
        public int X
        {
            // Set x Value
            set
            {
                // Assign x Value
                x = value;

            } // End Set x

            // Get x Value
            get
            {
                // Return x Value
                return x;

            } // End x

        } // End X

        // Property Of Y
        public int Y
        {
            // Set y Value
            set
            {
                // Assign y Value
                y = value;

            } // End Set y

            // Get y
            get
            {
                // Return y
                return y;

            } // End Get y

        } // End Y

        // Shape Area Property
        public int Z
        {
            // Set z Value
            set
            {
                // Assign z Value
                z = value;

            } // End Set z

            // Get z
            get
            {
                // Return z
                return z;

            } // End Get z

        } // End Z

        // Property Of sum
        public int Sum
        {
            // Get sum Value
            get
            {
                // Return sum Value
                return sum;

            } // End sum

        } // End Sum

        #endregion

        // Method to Calculating Sum Of x,y,z
        public virtual double CalcSum()
        {
            // Return Sum Value
            return sum = x + y + z;

        } // End Sum

        // Override Function To Print Values Of TypeA Data
        public override string ToString()
        {
            // Return TypeA Data
            return " X: " + x + ", Y: " + y + ", Z: " + z + ", Sum: " + sum;

        } // End ToString
    }
}
