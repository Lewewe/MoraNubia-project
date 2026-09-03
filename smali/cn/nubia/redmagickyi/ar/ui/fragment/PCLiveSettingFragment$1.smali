.class Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$1;
.super Ljava/lang/Object;
.source "PCLiveSettingFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionGuideDisallow()V
    .locals 2

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onPermissionRequested()V
    .locals 0

    return-void
.end method

.method public onPermissionRequesting()V
    .locals 0

    return-void
.end method
