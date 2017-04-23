using System;   
using System.Linq;
using HomeArchiveX.Model;

namespace HomeArchiveX.WpfUI.Wrapper
{
  public partial class ArchiveEntityWrapper : ModelWrapper<ArchiveEntity>
  {
    public ArchiveEntityWrapper(ArchiveEntity model) : base(model)
    {
    }

    public System.Int32 ArchiveEntityKey
    {
      get { return GetValue<System.Int32>(); }
      set { SetValue(value); }
    }

    public System.Int32 ArchiveEntityKeyOriginalValue => GetOriginalValue<System.Int32>(nameof(ArchiveEntityKey));

    public bool ArchiveEntityKeyIsChanged => GetIsChanged(nameof(ArchiveEntityKey));

    public System.Nullable<System.Int32> ParentEntityKey
    {
      get { return GetValue<System.Nullable<System.Int32>>(); }
      set { SetValue(value); }
    }

    public System.Nullable<System.Int32> ParentEntityKeyOriginalValue => GetOriginalValue<System.Nullable<System.Int32>>(nameof(ParentEntityKey));

    public bool ParentEntityKeyIsChanged => GetIsChanged(nameof(ParentEntityKey));

    public System.Nullable<System.Int32> DriveId
    {
      get { return GetValue<System.Nullable<System.Int32>>(); }
      set { SetValue(value); }
    }

    public System.Nullable<System.Int32> DriveIdOriginalValue => GetOriginalValue<System.Nullable<System.Int32>>(nameof(DriveId));

    public bool DriveIdIsChanged => GetIsChanged(nameof(DriveId));

    public System.String Title
    {
      get { return GetValue<System.String>(); }
      set { SetValue(value); }
    }

    public System.String TitleOriginalValue => GetOriginalValue<System.String>(nameof(Title));

    public bool TitleIsChanged => GetIsChanged(nameof(Title));

    public System.Byte EntityType
    {
      get { return GetValue<System.Byte>(); }
      set { SetValue(value); }
    }

    public System.Byte EntityTypeOriginalValue => GetOriginalValue<System.Byte>(nameof(EntityType));

    public bool EntityTypeIsChanged => GetIsChanged(nameof(EntityType));

    public System.String EntityPath
    {
      get { return GetValue<System.String>(); }
      set { SetValue(value); }
    }

    public System.String EntityPathOriginalValue => GetOriginalValue<System.String>(nameof(EntityPath));

    public bool EntityPathIsChanged => GetIsChanged(nameof(EntityPath));

    public System.String EntityExtension
    {
      get { return GetValue<System.String>(); }
      set { SetValue(value); }
    }

    public System.String EntityExtensionOriginalValue => GetOriginalValue<System.String>(nameof(EntityExtension));

    public bool EntityExtensionIsChanged => GetIsChanged(nameof(EntityExtension));

    public System.String Description
    {
      get { return GetValue<System.String>(); }
      set { SetValue(value); }
    }

    public System.String DescriptionOriginalValue => GetOriginalValue<System.String>(nameof(Description));

    public bool DescriptionIsChanged => GetIsChanged(nameof(Description));

    public System.Nullable<System.Int32> HashCode
    {
      get { return GetValue<System.Nullable<System.Int32>>(); }
      set { SetValue(value); }
    }

    public System.Nullable<System.Int32> HashCodeOriginalValue => GetOriginalValue<System.Nullable<System.Int32>>(nameof(HashCode));

    public bool HashCodeIsChanged => GetIsChanged(nameof(HashCode));

    public System.DateTime CreatedDate
    {
      get { return GetValue<System.DateTime>(); }
      set { SetValue(value); }
    }

    public System.DateTime CreatedDateOriginalValue => GetOriginalValue<System.DateTime>(nameof(CreatedDate));

    public bool CreatedDateIsChanged => GetIsChanged(nameof(CreatedDate));
  }
}
