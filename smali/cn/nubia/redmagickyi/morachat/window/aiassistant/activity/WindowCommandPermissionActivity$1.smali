.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$1;
.super Ljava/lang/Object;
.source "WindowCommandPermissionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->checkPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->access$000()Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/util/ZTETimer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->access$102(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;Lcn/nubia/redmagickyi/util/ZTETimer;)Lcn/nubia/redmagickyi/util/ZTETimer;

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/permission/PermissionUtil;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
