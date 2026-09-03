.class Lcn/nubia/upgrade/service/c$a;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/upgrade/service/c;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/service/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/service/c$a;->a:Lcn/nubia/upgrade/service/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "command_pause"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/upgrade/service/c$a;->a:Lcn/nubia/upgrade/service/c;

    .line 3
    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$a;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p0}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/c;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/upgrade/http/c;->b()V

    :cond_0
    return-void
.end method
