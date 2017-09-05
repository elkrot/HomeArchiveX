using System;   
using System.Linq;
using HomeArchiveX.Model;

namespace HomeArchiveX.WpfUI.Wrapper
{
  public partial class TagToEntityWrapper : ModelWrapper<TagToEntity>
  {
    public TagToEntityWrapper(TagToEntity model) : base(model)
    {
    }

    public System.Int32 TargetEntityKey
    {
      get { return GetValue<System.Int32>(); }
      set { SetValue(value); }
    }

    public System.Int32 TargetEntityKeyOriginalValue => GetOriginalValue<System.Int32>(nameof(TargetEntityKey));

    public bool TargetEntityKeyIsChanged => GetIsChanged(nameof(TargetEntityKey));

    public System.Int32 TagKey
    {
      get { return GetValue<System.Int32>(); }
      set { SetValue(value); }
    }

    public System.Int32 TagKeyOriginalValue => GetOriginalValue<System.Int32>(nameof(TagKey));

    public bool TagKeyIsChanged => GetIsChanged(nameof(TagKey));

    public System.DateTime ModifiedDate
    {
      get { return GetValue<System.DateTime>(); }
      set { SetValue(value); }
    }

    public System.DateTime ModifiedDateOriginalValue => GetOriginalValue<System.DateTime>(nameof(ModifiedDate));

    public bool ModifiedDateIsChanged => GetIsChanged(nameof(ModifiedDate));

        public TagWrapper Tag { get; private set; }
     


        protected override void InitializeComplexProperties(TagToEntity model)
        {
            if (model.Tag == null)
            {
                throw new ArgumentException("Tag cannot be null");
            }
            Tag = new TagWrapper(model.Tag);
            RegisterComplex(Tag);
        }
    }
}
