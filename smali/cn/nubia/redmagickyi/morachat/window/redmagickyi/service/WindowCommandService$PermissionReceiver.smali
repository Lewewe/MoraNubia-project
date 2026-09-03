.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WindowCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PermissionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;


# direct methods
.method protected constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 209
    const-string p1, "result"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PermissionReceiver onReceive result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowCommandService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->unRegisterPermissionReceiver()V

    if-eqz p1, :cond_0

    .line 213
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->stopSelf()V

    :goto_0
    return-void
.end method
