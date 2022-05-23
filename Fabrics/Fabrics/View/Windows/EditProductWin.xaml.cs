using Fabrics.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Fabrics.View.Windows
{
    /// <summary>
    /// Логика взаимодействия для EditProductWin.xaml
    /// </summary>
    public partial class EditProductWin : Window
    {
        private string imagePath;
        private bool isNewProduct;
        private TradeEntities context;
        private Product currentProduct;

        public EditProductWin()
        {
            InitializeComponent();
            context = DBManager.Context;
            currentProduct = new Product();
            DataContext = currentProduct;
            Title = "Добавить товар";
            isNewProduct = true;
        }

        public EditProductWin(Product selectedProduct)
        {
            InitializeComponent();
            context = DBManager.Context;
            currentProduct = selectedProduct;
            DataContext = currentProduct;
            Title = "Редактировать товар";
            isNewProduct = false;
        }

        private void SaveChangesBtn_Click(object sender, RoutedEventArgs e)
        {
            currentProduct.Supplier = null;
            if(isNewProduct)
            {
                if (imagePath == null)
                    currentProduct.ProductPhoto = Directory.GetCurrentDirectory()
                        + "\\products\\picture.png";
                else
                    currentProduct.ProductPhoto = imagePath;

                context.Product.Add(currentProduct);
            }
            else
            {
                if (imagePath != null)
                    currentProduct.ProductPhoto = imagePath;
            }
            context.SaveChanges();
        }

        private void LoadImageBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                OpenFileDialog fileDialog = new OpenFileDialog();
                fileDialog.Title = "Загрузить изображение";
                fileDialog.CheckFileExists = true;
                fileDialog.CheckPathExists = true;
                fileDialog.Filter = "All supported graphics | *.jpg; *.jpeg; *.png ";
                if (fileDialog.ShowDialog() == true)
                {
                    string imageSource = fileDialog.FileName;
                    if (imageSource != null)
                    {
                        string imageName = imageSource.Substring(imageSource
                            .LastIndexOf(@"\"));
                        imagePath = Directory.GetCurrentDirectory() + "\\products"
                            + imageName.Insert(1, "(copy " + DateTime.Now
                            .ToString(format: "dd.mm.yy HH.MM.ss") + ")");

                        File.Copy(imageSource, imagePath);
                        ProductImage.Source = new BitmapImage(new Uri(imagePath));
                    }
                }
            }
            catch { }
        }

        private void OnlyDigitsAndLetters_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.Text, 0))
                e.Handled = true;
        }

        private void OnlyDigits_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!char.IsDigit(e.Text, 0))
                e.Handled = true;
        }
    }
}
