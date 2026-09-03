.class public Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetStatusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    invoke-static {p1}, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->getNetWorkState(Landroid/content/Context;)I

    move-result p1

    .line 73
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;

    invoke-static {p2}, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->access$000(Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "netWorkState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;

    iget-object p2, p2, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->listener:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeListener;

    if-eqz p2, :cond_0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil;->listener:Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeListener;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/care/manager/NetStatusUtil$NetChangeListener;->onNetChangeListener(I)V

    :cond_0
    return-void
.end method
