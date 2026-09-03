.class Lcn/nubia/upgrade/service/c$e;
.super Landroid/os/Handler;
.source "UpgradeWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/upgrade/service/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/service/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 p1, 0x2710

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/upgrade/service/c;

    iget-object p1, p1, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isShowNotification()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    .line 41
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/upgrade/service/c;

    iget-object p1, p1, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 42
    invoke-virtual {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result p1

    if-nez p1, :cond_2

    .line 43
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/upgrade/service/c;

    invoke-static {p0}, Lcn/nubia/upgrade/service/c;->n(Lcn/nubia/upgrade/service/c;)V

    goto/16 :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    iget-object v0, v0, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isShowNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->b(Lcn/nubia/upgrade/service/c;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    iget-object v1, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/c;

    invoke-static {v1}, Lcn/nubia/upgrade/service/c;->j(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/a;->e()J

    move-result-wide v1

    int-to-long v3, p1

    mul-long/2addr v3, v1

    long-to-float v3, v3

    const/high16 v4, 0x4cc80000    # 1.048576E8f

    div-float/2addr v3, v4

    .line 51
    iget-object v4, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/upgrade/service/c;

    invoke-static {v4}, Lcn/nubia/upgrade/service/c;->k(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "0.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v7, v3

    .line 53
    invoke-virtual {v5, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/DecimalFormat;

    invoke-direct {v4, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v1, v1

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 56
    invoke-virtual {v4, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M)"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/service/c;

    invoke-static {v1}, Lcn/nubia/upgrade/service/c;->b(Lcn/nubia/upgrade/service/c;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 61
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->b(Lcn/nubia/upgrade/service/c;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 63
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->b(Lcn/nubia/upgrade/service/c;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 67
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->b(Lcn/nubia/upgrade/service/c;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 73
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->b(Lcn/nubia/upgrade/service/c;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 76
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/upgrade/service/c;

    iget-object v0, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->b(Lcn/nubia/upgrade/service/c;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;Landroid/app/Notification;)Landroid/app/Notification;

    .line 81
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->m(Lcn/nubia/upgrade/service/c;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/upgrade/service/c$e;->a:Ljava/lang/ref/WeakReference;

    .line 82
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/upgrade/service/c;

    invoke-static {p0}, Lcn/nubia/upgrade/service/c;->l(Lcn/nubia/upgrade/service/c;)Landroid/app/Notification;

    move-result-object p0

    const/4 v0, 0x3

    .line 83
    invoke-virtual {p1, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    :goto_0
    return-void
.end method
