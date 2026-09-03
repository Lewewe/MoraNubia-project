.class Lcn/nubia/upgrade/service/c;
.super Ljava/lang/Object;
.source "UpgradeWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/service/c$f;,
        Lcn/nubia/upgrade/service/c$c;,
        Lcn/nubia/upgrade/service/c$d;,
        Lcn/nubia/upgrade/service/c$e;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/nubia/upgrade/service/c$e;

.field private c:Lcn/nubia/upgrade/service/a;

.field d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

.field private e:Landroid/content/Context;

.field private f:Landroid/content/pm/PackageManager;

.field private g:Landroid/app/NotificationManager;

.field private h:Landroid/app/Notification$Builder;

.field private i:Lcn/nubia/upgrade/http/c;

.field private j:Lcn/nubia/upgrade/http/a;

.field private volatile k:Landroid/os/Looper;

.field private volatile l:Landroid/os/Handler;

.field private m:Ljava/lang/String;

.field private n:Lcn/nubia/upgrade/service/c$c;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/app/Notification;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Landroid/content/BroadcastReceiver;

.field private v:Landroid/content/BroadcastReceiver;

.field private w:Lcn/nubia/upgrade/service/c$f;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UpgradeWork"

    .line 2
    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->o:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->p:Ljava/lang/String;

    const-string v0, "1"

    .line 34
    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->s:Ljava/lang/String;

    const-string v0, "channel_name"

    .line 35
    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->t:Ljava/lang/String;

    .line 37
    new-instance v0, Lcn/nubia/upgrade/c/c$a;

    invoke-direct {v0}, Lcn/nubia/upgrade/c/c$a;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->u:Landroid/content/BroadcastReceiver;

    .line 38
    new-instance v0, Lcn/nubia/upgrade/service/c$a;

    invoke-direct {v0, p0}, Lcn/nubia/upgrade/service/c$a;-><init>(Lcn/nubia/upgrade/service/c;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcn/nubia/upgrade/service/c;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    .line 5
    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->r:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->i:Lcn/nubia/upgrade/http/c;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/upgrade/service/c;Lcn/nubia/upgrade/service/a;)Lcn/nubia/upgrade/service/a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;

    return-object p1
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->e:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->e:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcn/nubia/upgrade/service/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/nubia/upgrade/service/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/upgrade/service/c;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 9

    .line 77
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->j:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3ed

    const/4 v3, 0x0

    const-wide/16 v4, 0x7d0

    const/16 v6, 0x65

    if-eqz v0, :cond_7

    .line 78
    invoke-static {p1}, Lcn/nubia/upgrade/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->l:Landroid/os/Handler;

    invoke-virtual {p0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 84
    :cond_0
    iget-object v7, p0, Lcn/nubia/upgrade/service/c;->j:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v7}, Lcn/nubia/upgrade/http/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->f:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcn/nubia/upgrade/service/c;->e:Landroid/content/Context;

    .line 88
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 91
    new-instance v7, Lcom/zupgrade/sdk/util/Bsdiff;

    invoke-direct {v7}, Lcom/zupgrade/sdk/util/Bsdiff;-><init>()V

    .line 92
    iget-object v8, p0, Lcn/nubia/upgrade/service/c;->m:Ljava/lang/String;

    invoke-virtual {v7, v0, v8, p1}, Lcom/zupgrade/sdk/util/Bsdiff;->applyPatchToOldApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 98
    :cond_1
    iget-object p1, p0, Lcn/nubia/upgrade/service/c;->m:Ljava/lang/String;

    invoke-static {p1}, Lcn/nubia/upgrade/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 100
    iget-object p1, p0, Lcn/nubia/upgrade/service/c;->l:Landroid/os/Handler;

    invoke-virtual {p1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->j:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 106
    iget-object p1, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;

    if-eqz p1, :cond_b

    .line 107
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->m:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcn/nubia/upgrade/service/a;->onDownloadComplete(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 110
    :cond_3
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->m:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 116
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;

    if-eqz p1, :cond_b

    .line 117
    invoke-interface {p1, v2}, Lcn/nubia/upgrade/service/a;->onDownloadError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 121
    iput-object v3, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 128
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 133
    :cond_6
    iget-object p1, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;

    if-eqz p1, :cond_b

    .line 135
    :try_start_3
    invoke-interface {p1, v2}, Lcn/nubia/upgrade/service/a;->onDownloadError(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 137
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    iput-object v3, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;

    goto :goto_0

    .line 146
    :cond_7
    invoke-static {p1}, Lcn/nubia/upgrade/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 148
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->l:Landroid/os/Handler;

    invoke-virtual {p0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 151
    :cond_8
    iget-object v7, p0, Lcn/nubia/upgrade/service/c;->j:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v7}, Lcn/nubia/upgrade/http/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    :try_start_4
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;

    if-eqz v0, :cond_b

    .line 154
    invoke-interface {v0, p1, v1}, Lcn/nubia/upgrade/service/a;->onDownloadComplete(Ljava/lang/String;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 157
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 158
    iput-object v3, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;

    goto :goto_0

    .line 162
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 167
    :cond_a
    :try_start_5
    iget-object p1, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;

    if-eqz p1, :cond_b

    .line 168
    invoke-interface {p1, v2}, Lcn/nubia/upgrade/service/a;->onDownloadError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 171
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    iput-object v3, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;

    .line 176
    :catch_4
    :cond_b
    :goto_0
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->l:Landroid/os/Handler;

    invoke-virtual {p0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic b(Lcn/nubia/upgrade/service/c;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->h:Landroid/app/Notification$Builder;

    return-object p0
.end method

.method private b(Landroid/os/Bundle;)Lcn/nubia/upgrade/service/a;
    .locals 0

    .line 4
    const-string p0, "downLoadBinderProxy"

    .line 6
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/upgrade/service/a$a;->asInterface(Landroid/os/IBinder;)Lcn/nubia/upgrade/service/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/upgrade/service/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->m:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 30
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 31
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 32
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 35
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".FileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    const-string v2, "application/vnd.android.package-archive"

    .line 40
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fileUri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/upgrade/c/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    .line 42
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/upgrade/service/c;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/nubia/upgrade/service/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcn/nubia/upgrade/service/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->l:Landroid/os/Handler;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getIconId()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->a:Ljava/lang/String;

    const-string v0, "start notification fail, iconId invalid!"

    invoke-static {p0, v0}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->e:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->g:Landroid/app/NotificationManager;

    .line 8
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcn/nubia/upgrade/service/c;->s:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/upgrade/service/c;->t:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 10
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcn/nubia/upgrade/service/c;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->h:Landroid/app/Notification$Builder;

    .line 11
    iget-object v1, p0, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 13
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->h:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 14
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getNotificationTitle()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_1
    iget-object v1, p0, Lcn/nubia/upgrade/service/c;->h:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 19
    iget-object v1, p0, Lcn/nubia/upgrade/service/c;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 20
    iget-object v1, p0, Lcn/nubia/upgrade/service/c;->h:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcn/nubia/upgrade/service/c;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 22
    :cond_2
    iget-object v1, p0, Lcn/nubia/upgrade/service/c;->h:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 25
    iget-object v1, p0, Lcn/nubia/upgrade/service/c;->h:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcn/nubia/upgrade/service/c;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 28
    iget-object v1, p0, Lcn/nubia/upgrade/service/c;->h:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/service/c;->r:Landroid/app/Notification;

    .line 32
    iget-object v1, p0, Lcn/nubia/upgrade/service/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startNotification title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " contentText:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/upgrade/service/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->g:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->r:Landroid/app/Notification;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lcn/nubia/upgrade/c/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->n:Lcn/nubia/upgrade/service/c$c;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/c$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->b:Lcn/nubia/upgrade/service/c$e;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/service/c$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->w:Lcn/nubia/upgrade/service/c$f;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/upgrade/service/c;)Lcn/nubia/upgrade/http/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->j:Lcn/nubia/upgrade/http/a;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/upgrade/service/c;)Landroid/app/Notification;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->r:Landroid/app/Notification;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/upgrade/service/c;)Landroid/app/NotificationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->g:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/upgrade/service/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/upgrade/service/c;->c()V

    return-void
.end method

.method static synthetic o(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/upgrade/service/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/upgrade/service/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->e:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/c;->b(Landroid/os/Bundle;)Lcn/nubia/upgrade/service/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 57
    :try_start_0
    invoke-interface {p0}, Lcn/nubia/upgrade/service/a;->onDownloadCallingPid()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public a()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->v:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/upgrade/service/c;->a(Landroid/content/BroadcastReceiver;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->u:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/upgrade/service/c;->a(Landroid/content/BroadcastReceiver;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->i:Lcn/nubia/upgrade/http/c;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcn/nubia/upgrade/http/c;->c()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->k:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 69
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->g:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->e:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->g:Landroid/app/NotificationManager;

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 76
    :goto_0
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->a:Ljava/lang/String;

    const-string v0, ":UpgradeWork onDestroy."

    invoke-static {p0, v0}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->e:Landroid/content/Context;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->a:Ljava/lang/String;

    .line 9
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "command_pause"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->v:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, p1}, Lcn/nubia/upgrade/service/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 13
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "cn.nubia.upgrade.action.InstallResultReceiver"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->u:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, p1}, Lcn/nubia/upgrade/service/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 17
    iget-object p1, p0, Lcn/nubia/upgrade/service/c;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->f:Landroid/content/pm/PackageManager;

    .line 18
    new-instance p1, Lcn/nubia/upgrade/service/c$c;

    invoke-direct {p1, p0}, Lcn/nubia/upgrade/service/c$c;-><init>(Lcn/nubia/upgrade/service/c;)V

    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->n:Lcn/nubia/upgrade/service/c$c;

    .line 19
    new-instance p1, Lcn/nubia/upgrade/http/c;

    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcn/nubia/upgrade/http/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->i:Lcn/nubia/upgrade/http/c;

    .line 20
    new-instance p1, Lcn/nubia/upgrade/service/c$e;

    invoke-direct {p1, p0}, Lcn/nubia/upgrade/service/c$e;-><init>(Lcn/nubia/upgrade/service/c;)V

    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->b:Lcn/nubia/upgrade/service/c$e;

    .line 21
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "-DownloadAndInstall"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 23
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->k:Landroid/os/Looper;

    .line 24
    new-instance p1, Lcn/nubia/upgrade/service/c$d;

    iget-object p2, p0, Lcn/nubia/upgrade/service/c;->k:Landroid/os/Looper;

    invoke-direct {p1, p0, p2}, Lcn/nubia/upgrade/service/c$d;-><init>(Lcn/nubia/upgrade/service/c;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->l:Landroid/os/Handler;

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "ConfigurationData"

    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 29
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 30
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    sget-object v1, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    iput-object v1, p0, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 34
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->d:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getNotificationContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->q:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/c;->b(Landroid/os/Bundle;)Lcn/nubia/upgrade/service/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->c:Lcn/nubia/upgrade/service/a;

    .line 37
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->j:Lcn/nubia/upgrade/http/a;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "downloadRequest"

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 40
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 41
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    sget-object v1, Lcn/nubia/upgrade/http/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/http/a;

    iput-object v1, p0, Lcn/nubia/upgrade/service/c;->j:Lcn/nubia/upgrade/http/a;

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    const-string v0, "authid"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/c;->o:Ljava/lang/String;

    const-string v0, "authkey"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->p:Ljava/lang/String;

    .line 49
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->l:Landroid/os/Handler;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcn/nubia/upgrade/service/c;->a:Ljava/lang/String;

    const-string v0, ":UpgradeWork Restart!!!"

    invoke-static {p1, v0}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p0, p0, Lcn/nubia/upgrade/service/c;->l:Landroid/os/Handler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/upgrade/service/c$f;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcn/nubia/upgrade/service/c;->w:Lcn/nubia/upgrade/service/c$f;

    return-void
.end method

.method public b()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->w:Lcn/nubia/upgrade/service/c$f;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/c;->b:Lcn/nubia/upgrade/service/c$e;

    new-instance v1, Lcn/nubia/upgrade/service/c$b;

    invoke-direct {v1, p0}, Lcn/nubia/upgrade/service/c$b;-><init>(Lcn/nubia/upgrade/service/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
