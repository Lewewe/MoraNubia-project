.class public Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetPlugUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeadsetPlugReceiver"
.end annotation


# instance fields
.field private mObserverWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;->mObserverWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 41
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p2, p1, :cond_0

    .line 46
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->access$000(Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;)Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;->onHeadsetPlug(Z)V

    :cond_0
    if-ne p2, p1, :cond_3

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->access$000(Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;)Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;->onHeadsetPlug(Z)V

    goto :goto_0

    .line 52
    :cond_1
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 53
    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->access$000(Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;)Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;

    move-result-object p0

    invoke-interface {p0, v2}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;->onHeadsetPlug(Z)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugReceiver;->this$0:Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;->access$000(Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil;)Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcn/nubia/redmagickyi/care/manager/HeadsetPlugUtil$HeadsetPlugListener;->onHeadsetPlug(Z)V

    :cond_3
    :goto_0
    return-void
.end method
