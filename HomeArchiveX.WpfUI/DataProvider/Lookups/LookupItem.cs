using System.Collections.ObjectModel;

namespace HomeArchiveX.WpfU.DataProvider.Lookups
{
  public class LookupItem
  {
    public int Id { get; set; }

    public string DisplayValue { get; set; }
  }

    public class LookupItemNode:LookupItem
    {
        public string Name { get; set; }
        public ObservableCollection<LookupItemNode> Nodes { get; set; }
        public byte EntityType { get; set; }
    }

}