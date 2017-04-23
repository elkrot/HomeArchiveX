using System;   
using System.Linq;
using HomeArchiveX.Model;

namespace HomeArchiveX.WpfUI.Wrapper
{
  public partial class TagWrapper : ModelWrapper<Tag>
  {
    public TagWrapper(Tag model) : base(model)
    {
    }

    public System.Int32 TagKey
    {
      get { return GetValue<System.Int32>(); }
      set { SetValue(value); }
    }

    public System.Int32 TagKeyOriginalValue => GetOriginalValue<System.Int32>(nameof(TagKey));

    public bool TagKeyIsChanged => GetIsChanged(nameof(TagKey));

    public System.String TagTitle
    {
      get { return GetValue<System.String>(); }
      set { SetValue(value); }
    }

    public System.String TagTitleOriginalValue => GetOriginalValue<System.String>(nameof(TagTitle));

    public bool TagTitleIsChanged => GetIsChanged(nameof(TagTitle));

    public System.DateTime ModififedDate
    {
      get { return GetValue<System.DateTime>(); }
      set { SetValue(value); }
    }

    public System.DateTime ModififedDateOriginalValue => GetOriginalValue<System.DateTime>(nameof(ModififedDate));

    public bool ModififedDateIsChanged => GetIsChanged(nameof(ModififedDate));
  }
}
