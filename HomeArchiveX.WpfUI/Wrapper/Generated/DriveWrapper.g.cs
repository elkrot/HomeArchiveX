using System;   
using System.Linq;
using HomeArchiveX.Model;

namespace HomeArchiveX.WpfUI.Wrapper
{
  public partial class DriveWrapper : ModelWrapper<Drive>
  {
    public DriveWrapper(Drive model) : base(model)
    {
    }

    public System.Int32 DriveId
    {
      get { return GetValue<System.Int32>(); }
      set { SetValue(value); }
    }

    public System.Int32 DriveIdOriginalValue => GetOriginalValue<System.Int32>(nameof(DriveId));

    public bool DriveIdIsChanged => GetIsChanged(nameof(DriveId));

    public System.String Title
    {
      get { return GetValue<System.String>(); }
      set { SetValue(value); }
    }

    public System.String TitleOriginalValue => GetOriginalValue<System.String>(nameof(Title));

    public bool TitleIsChanged => GetIsChanged(nameof(Title));

    public System.Nullable<System.Int32> HashCode
    {
      get { return GetValue<System.Nullable<System.Int32>>(); }
      set { SetValue(value); }
    }

    public System.Nullable<System.Int32> HashCodeOriginalValue => GetOriginalValue<System.Nullable<System.Int32>>(nameof(HashCode));

    public bool HashCodeIsChanged => GetIsChanged(nameof(HashCode));

    public System.Nullable<System.DateTime> CreatedDate
    {
      get { return GetValue<System.Nullable<System.DateTime>>(); }
      set { SetValue(value); }
    }

    public System.Nullable<System.DateTime> CreatedDateOriginalValue => GetOriginalValue<System.Nullable<System.DateTime>>(nameof(CreatedDate));

    public bool CreatedDateIsChanged => GetIsChanged(nameof(CreatedDate));
  }
}
