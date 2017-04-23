using System;   
using System.Linq;
using HomeArchiveX.Model;

namespace HomeArchiveX.WpfUI.Wrapper
{
  public partial class ImageToEntityWrapper : ModelWrapper<ImageToEntity>
  {
    public ImageToEntityWrapper(ImageToEntity model) : base(model)
    {
    }

    public System.Int32 TargetEntityKey
    {
      get { return GetValue<System.Int32>(); }
      set { SetValue(value); }
    }

    public System.Int32 TargetEntityKeyOriginalValue => GetOriginalValue<System.Int32>(nameof(TargetEntityKey));

    public bool TargetEntityKeyIsChanged => GetIsChanged(nameof(TargetEntityKey));

    public System.Int32 ImageKey
    {
      get { return GetValue<System.Int32>(); }
      set { SetValue(value); }
    }

    public System.Int32 ImageKeyOriginalValue => GetOriginalValue<System.Int32>(nameof(ImageKey));

    public bool ImageKeyIsChanged => GetIsChanged(nameof(ImageKey));

    public System.Nullable<System.DateTime> CreatedDate
    {
      get { return GetValue<System.Nullable<System.DateTime>>(); }
      set { SetValue(value); }
    }

    public System.Nullable<System.DateTime> CreatedDateOriginalValue => GetOriginalValue<System.Nullable<System.DateTime>>(nameof(CreatedDate));

    public bool CreatedDateIsChanged => GetIsChanged(nameof(CreatedDate));
  }
}
