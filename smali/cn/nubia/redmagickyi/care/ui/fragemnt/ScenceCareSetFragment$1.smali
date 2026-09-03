.class Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$1;
.super Ljava/lang/Object;
.source "ScenceCareSetFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$1;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionGuideDisallow()V
    .locals 2

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$1;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

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
