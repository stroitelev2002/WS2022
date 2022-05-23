using Fabrics.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
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
    /// Логика взаимодействия для ProductListWin.xaml
    /// </summary>
    public partial class ProductListWin : Window, INotifyPropertyChanged
    {
        private TradeEntities context;
        private ObservableCollection<Product> products;
        private string searchLine;
        private Manufacturer selectedManufacturer;
        private ComboBoxItem selectedSortingItem;
        private int currentPageNumber = 1;
        private int pageCount;
        private int countEntriesPerPage = 15;
        private string pageCountLine;
        public string PageCountLine
        {
            get { return pageCountLine; }
            set
            {
                pageCountLine = value;
                OnPropertyChanged("PageCountLine");
            }
        }

        public ObservableCollection<Manufacturer> Manufacturers
        {
            get
            {
                List<Manufacturer> manufacturers = context.Manufacturer.ToList();
                manufacturers.Insert(0, new Manufacturer() 
                    { ManufacturerName = "Все производители" });
                return new ObservableCollection<Manufacturer> (manufacturers);
            }
        }

        public Manufacturer SelectedManufacturer
        {
            get { return selectedManufacturer; }
            set
            {
                selectedManufacturer = value;
                OnPropertyChanged("SelectedManuFacturer");
            }
        }
        public string SearchLine
        {
            get { return searchLine; }
            set
            {
                searchLine = value;
                OnPropertyChanged("SearchLine");
            }
        }

        public ComboBoxItem SelectedSortingItem
        {
            get { return selectedSortingItem; }
            set
            {
                selectedSortingItem = value;
                OnPropertyChanged("SelectedSortinItem");
            }
        }

        public static ProductListWin ProductList { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;

        public ObservableCollection<Product> Products
        {
            get { return products; }
            set
            {
                products = value;
                OnPropertyChanged("Products");
            }
        }
        public ProductListWin()
        {
            InitializeComponent();
            context = DBManager.Context;
            DataContext = this;
            RefreshProducts();
            ProductList = this;
        }

        public void RefreshProducts()
        {
            List<Product> products = context.Product.ToList();
            products = FindProducts(products);
            products = FilterProducts(products);
            products = SortProducts(products);

            pageCount = (int)Math.Ceiling((products.Count * 1.0) 
                / countEntriesPerPage);
            PageCountLine = currentPageNumber + " из " + pageCount;

            Products = new ObservableCollection<Product>
                (products.Skip((currentPageNumber - 1) * countEntriesPerPage)
                .Take(countEntriesPerPage).ToList());
        }

        private List<Product> FindProducts(List<Product> products)
        {
            if (!string.IsNullOrWhiteSpace(SearchLine))
            {
                products = products.Where(p => p.ProductArticleNumber.ToLower()
                    .Contains(SearchLine.ToLower()) || p.ProductName.ToLower()
                    .Contains(SearchLine.ToLower()) || p.Supplier.SupplierName.ToLower()
                    .Contains(SearchLine.ToLower()) || p.Manufacturer.ManufacturerName
                    .ToLower().Contains(SearchLine.ToLower()) || p.Category.CategoryName
                    .ToLower().Contains(SearchLine.ToLower()) || p.ProductDescription
                    .ToLower().Contains(SearchLine.ToLower())).ToList();
            }
            return products;
        }

        private List<Product> SortProducts(List<Product> products)
        {
            if (SelectedSortingItem != null)
            {
                if ((string)SelectedSortingItem.Content == "По возрастанию")
                    products = products.OrderBy(p => p.ProductCost).ToList();
                else if ((string)SelectedSortingItem.Content == "По убыванию")
                    products = products.OrderByDescending(p => p.ProductCost)
                        .ToList();
            }

            return products;
        }

        private List<Product> FilterProducts(List<Product> products)
        {
            if (SelectedManufacturer != null
                && SelectedManufacturer.ManufacturerName != "Все производители")
                products = products.Where(p => p.Manufacturer.ManufacturerName
                    == SelectedManufacturer.ManufacturerName).ToList();
            return products;
        }

        private void OnPropertyChanged([CallerMemberName] string prop="")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            currentPageNumber = 1;
            RefreshProducts();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            currentPageNumber = 1;
            RefreshProducts();
        }

        private void GoToFistPageBtn_Click(object sender, RoutedEventArgs e)
        {
            currentPageNumber = 1;
            RefreshProducts();
        }

        private void GoToPreviousPageBtn_Click(object sender, RoutedEventArgs e)
        {
            if(currentPageNumber != 1)
            {
                currentPageNumber--;
                RefreshProducts();
            }
        }

        private void GoToNextPageBtn_Click(object sender, RoutedEventArgs e)
        {
            if(currentPageNumber != pageCount)
            {
                currentPageNumber++;
                RefreshProducts();
            }
        }

        private void GoToLastPageBtn_Click(object sender, RoutedEventArgs e)
        {
            currentPageNumber = pageCount;
            RefreshProducts();
        }

        private void AddProductBtn_Click(object sender, RoutedEventArgs e)
        {
            new EditProductWin().ShowDialog();
            RefreshProducts();
        }
    }
}
