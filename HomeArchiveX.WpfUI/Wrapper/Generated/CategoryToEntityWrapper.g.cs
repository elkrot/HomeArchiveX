using System;   
using System.Linq;
using HomeArchiveX.Model;

namespace HomeArchiveX.WpfUI.Wrapper
{
  public partial class CategoryToEntityWrapper : ModelWrapper<CategoryToEntity>
  {
    public CategoryToEntityWrapper(CategoryToEntity model) : base(model)
    {
    }

    public System.Int32 TargetEntityKey
    {
      get { return GetValue<System.Int32>(); }
      set { SetValue(value); }
    }

    public System.Int32 TargetEntityKeyOriginalValue => GetOriginalValue<System.Int32>(nameof(TargetEntityKey));

    public bool TargetEntityKeyIsChanged => GetIsChanged(nameof(TargetEntityKey));

    public System.Int32 CategoryKey
    {
      get { return GetValue<System.Int32>(); }
      set { SetValue(value); }
    }

    public System.Int32 CategoryKeyOriginalValue => GetOriginalValue<System.Int32>(nameof(CategoryKey));

    public bool CategoryKeyIsChanged => GetIsChanged(nameof(CategoryKey));

    public System.DateTime ModifiedDate
    {
      get { return GetValue<System.DateTime>(); }
      set { SetValue(value); }
    }

    public System.DateTime ModifiedDateOriginalValue => GetOriginalValue<System.DateTime>(nameof(ModifiedDate));

    public bool ModifiedDateIsChanged => GetIsChanged(nameof(ModifiedDate));
  }
}
