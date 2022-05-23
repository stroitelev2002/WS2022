using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace Fabrics.Model
{
    public partial class Product
    {
        private Category selectedCategory;
        private Manufacturer selectedManufacturer;
        private MeasureUnit selectedUnit;
        private TradeEntities context = DBManager.Context;

        public ObservableCollection<Category> Categories
        {
            get
            {
                return new ObservableCollection<Category>
                    (context.Category.ToList());
            }
        }

        public ObservableCollection<MeasureUnit> MeasureUnits
        {
            get
            {
                return new ObservableCollection<MeasureUnit>
                  (context.MeasureUnit.ToList());
            }
        }

        public ObservableCollection<Manufacturer> Manufacturers
        {
            get
            {
                return new ObservableCollection<Manufacturer>
                    (context.Manufacturer.ToList());
            }
        }

        public BitmapImage MainImage
        {
            get
            {
                if (ProductPhoto != null && File.Exists(ProductPhoto))
                    return new BitmapImage(new Uri(Directory.GetCurrentDirectory()
                        + "\\" + ProductPhoto));
                else
                    return new BitmapImage(new Uri(Directory.GetCurrentDirectory() 
                        + "\\products\\picture.png"));
            }
        }
    }
}
