.class Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OtherSettingsViewHolder"
.end annotation


# instance fields
.field ivArrow:Landroid/widget/ImageView;

.field settingsOtherItemLayout:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;

.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 602
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    .line 603
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 604
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->layout_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->settingsOtherItemLayout:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;

    .line 605
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->iv_arrow:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsViewHolder;->ivArrow:Landroid/widget/ImageView;

    return-void
.end method
