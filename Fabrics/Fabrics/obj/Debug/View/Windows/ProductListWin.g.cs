﻿#pragma checksum "..\..\..\..\View\Windows\ProductListWin.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "B4978D35E5CD1B9744792FDE5CA29D9A01E79DF09145C06B4C5B8E029F92359E"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using Fabrics.View.Controls;
using Fabrics.View.Windows;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Fabrics.View.Windows {
    
    
    /// <summary>
    /// ProductListWin
    /// </summary>
    public partial class ProductListWin : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 22 "..\..\..\..\View\Windows\ProductListWin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox SortByCostCmb;
        
        #line default
        #line hidden
        
        
        #line 34 "..\..\..\..\View\Windows\ProductListWin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button GoToFistPageBtn;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\..\View\Windows\ProductListWin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button GoToPreviousPageBtn;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\..\View\Windows\ProductListWin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button GoToNextPageBtn;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\..\View\Windows\ProductListWin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button GoToLastPageBtn;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\..\View\Windows\ProductListWin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddProductBtn;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Fabrics;component/view/windows/productlistwin.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\View\Windows\ProductListWin.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 18 "..\..\..\..\View\Windows\ProductListWin.xaml"
            ((System.Windows.Controls.TextBox)(target)).TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.TextBox_TextChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            
            #line 21 "..\..\..\..\View\Windows\ProductListWin.xaml"
            ((System.Windows.Controls.ComboBox)(target)).SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.SortByCostCmb = ((System.Windows.Controls.ComboBox)(target));
            
            #line 22 "..\..\..\..\View\Windows\ProductListWin.xaml"
            this.SortByCostCmb.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.GoToFistPageBtn = ((System.Windows.Controls.Button)(target));
            
            #line 34 "..\..\..\..\View\Windows\ProductListWin.xaml"
            this.GoToFistPageBtn.Click += new System.Windows.RoutedEventHandler(this.GoToFistPageBtn_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.GoToPreviousPageBtn = ((System.Windows.Controls.Button)(target));
            
            #line 35 "..\..\..\..\View\Windows\ProductListWin.xaml"
            this.GoToPreviousPageBtn.Click += new System.Windows.RoutedEventHandler(this.GoToPreviousPageBtn_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.GoToNextPageBtn = ((System.Windows.Controls.Button)(target));
            
            #line 37 "..\..\..\..\View\Windows\ProductListWin.xaml"
            this.GoToNextPageBtn.Click += new System.Windows.RoutedEventHandler(this.GoToNextPageBtn_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.GoToLastPageBtn = ((System.Windows.Controls.Button)(target));
            
            #line 38 "..\..\..\..\View\Windows\ProductListWin.xaml"
            this.GoToLastPageBtn.Click += new System.Windows.RoutedEventHandler(this.GoToLastPageBtn_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.AddProductBtn = ((System.Windows.Controls.Button)(target));
            
            #line 39 "..\..\..\..\View\Windows\ProductListWin.xaml"
            this.AddProductBtn.Click += new System.Windows.RoutedEventHandler(this.AddProductBtn_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

