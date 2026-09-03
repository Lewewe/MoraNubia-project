.class Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$10;
.super Ljava/lang/Object;
.source "AccountUserCenterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->setHeadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$10;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 419
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 422
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$10;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/utils/CameraUtils;->checkTakePhotoPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 423
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$10;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$1000(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$10;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->user_camera_permission_leak:I

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 429
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 432
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$10;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/utils/CameraUtils;->checkSelectPhotoPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 433
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$10;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$1100(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$10;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->user_camera_permission_leak:I

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :goto_0
    return-void
.end method
