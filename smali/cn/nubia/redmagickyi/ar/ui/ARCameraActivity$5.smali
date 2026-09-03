.class Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$5;
.super Ljava/lang/Object;
.source "ARCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->access$200(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Lcn/nubia/redmagickyi/permission/PermissionUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->access$200(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Lcn/nubia/redmagickyi/permission/PermissionUtil;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 252
    const-string v0, "onResume requestPermission done"

    const-string v1, "ARCameraActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->access$200(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Lcn/nubia/redmagickyi/permission/PermissionUtil;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 254
    const-string p0, "onResume HasAllPermissionOfRuntime"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
