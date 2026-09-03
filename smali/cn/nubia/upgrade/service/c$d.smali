.class Lcn/nubia/upgrade/service/c$d;
.super Landroid/os/Handler;
.source "UpgradeWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/upgrade/service/c;


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/service/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 63
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 64
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p0, p1}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 65
    :pswitch_1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-virtual {p0}, Lcn/nubia/upgrade/service/c;->b()V

    goto/16 :goto_2

    .line 66
    :pswitch_2
    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->j(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/upgrade/c/a;->a(Lcn/nubia/upgrade/http/a;)Z

    move-result p1

    .line 67
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {v2}, Lcn/nubia/upgrade/service/c;->j(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {v2}, Lcn/nubia/upgrade/service/c;->j(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/service/c;->b(Lcn/nubia/upgrade/service/c;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {v0}, Lcn/nubia/upgrade/service/c;->j(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/a;->f()Z

    move-result v0

    const-wide/16 v1, 0x7d0

    const/16 v3, 0x65

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 72
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->p(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "(apk file to be install)"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {v4}, Lcn/nubia/upgrade/service/c;->o(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    iget-object p1, p1, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentInstall()Z

    move-result p1

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->q(Lcn/nubia/upgrade/service/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {v4}, Lcn/nubia/upgrade/service/c;->o(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->q(Lcn/nubia/upgrade/service/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {v4}, Lcn/nubia/upgrade/service/c;->o(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcn/nubia/upgrade/service/c;->b(Lcn/nubia/upgrade/service/c;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 79
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->p(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "silent install fail. try normal install."

    invoke-static {p1, v0}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->q(Lcn/nubia/upgrade/service/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {v4}, Lcn/nubia/upgrade/service/c;->o(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    :cond_1
    :goto_0
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p0}, Lcn/nubia/upgrade/service/c;->c(Lcn/nubia/upgrade/service/c;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 85
    :cond_2
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/c;

    move-result-object v0

    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->q(Lcn/nubia/upgrade/service/c;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    .line 86
    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->j(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/a;

    move-result-object v2

    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    .line 87
    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->d(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/c$c;

    move-result-object v3

    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    .line 88
    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->e(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    .line 89
    invoke-static {p0}, Lcn/nubia/upgrade/service/c;->f(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/http/c;->a(Landroid/content/Context;Lcn/nubia/upgrade/http/a;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_6

    .line 100
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    iget-object p1, p1, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentInstall()Z

    move-result p1

    if-nez p1, :cond_4

    .line 101
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->q(Lcn/nubia/upgrade/service/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {v4}, Lcn/nubia/upgrade/service/c;->o(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_4
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->q(Lcn/nubia/upgrade/service/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {v4}, Lcn/nubia/upgrade/service/c;->o(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcn/nubia/upgrade/service/c;->b(Lcn/nubia/upgrade/service/c;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 105
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->p(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SilentInstall PACH ERROR!!!"

    invoke-static {p1, v0}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->q(Lcn/nubia/upgrade/service/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {v4}, Lcn/nubia/upgrade/service/c;->o(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    :cond_5
    :goto_1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p0}, Lcn/nubia/upgrade/service/c;->c(Lcn/nubia/upgrade/service/c;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 116
    :cond_6
    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/c;

    move-result-object v0

    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->q(Lcn/nubia/upgrade/service/c;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    .line 117
    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->j(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/a;

    move-result-object v2

    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    .line 118
    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->d(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/c$c;

    move-result-object v3

    iget-object p1, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    .line 119
    invoke-static {p1}, Lcn/nubia/upgrade/service/c;->e(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcn/nubia/upgrade/service/c$d;->a:Lcn/nubia/upgrade/service/c;

    .line 120
    invoke-static {p0}, Lcn/nubia/upgrade/service/c;->f(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/http/c;->a(Landroid/content/Context;Lcn/nubia/upgrade/http/a;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
