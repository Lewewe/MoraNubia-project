.class Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 566
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1$1;->this$3:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 570
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1$1;->this$3:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager$OtherSettingsAdapter;->this$1:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->settings_clean_cache_toast:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :cond_0
    return-void
.end method
