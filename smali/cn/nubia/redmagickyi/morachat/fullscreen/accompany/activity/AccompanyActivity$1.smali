.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$1;
.super Ljava/lang/Object;
.source "AccompanyActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionGuideDisallow()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->onBackPressed()V

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
