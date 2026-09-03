.class public Lcn/nubia/upgrade/c/c;
.super Ljava/lang/Object;
.source "InstallUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/c/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "InstallUtil"

.field private static b:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/c/c;->b:Ljava/util/concurrent/SynchronousQueue;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9

    .line 2
    sget-object v0, Lcn/nubia/upgrade/c/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "installAPI28 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v2

    .line 7
    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_0

    .line 10
    sget-object p0, Lcn/nubia/upgrade/c/c;->a:Ljava/lang/String;

    const-string p1, "silent installation failed, because apk file size <= 0."

    invoke-static {p0, p1}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 14
    :cond_0
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 15
    invoke-static {v2, v3}, Lcn/nubia/upgrade/c/c;->a(Landroid/content/pm/PackageInstaller;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 17
    invoke-static {v2, v1, p1}, Lcn/nubia/upgrade/c/c;->a(Landroid/content/pm/PackageInstaller;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 19
    invoke-static {p0, v2, v1}, Lcn/nubia/upgrade/c/c;->a(Landroid/content/Context;Landroid/content/pm/PackageInstaller;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 21
    sget-object p0, Lcn/nubia/upgrade/c/c;->a:Ljava/lang/String;

    const-string p1, "silent installation succeeded."

    invoke-static {p0, p1}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private static a(Landroid/content/pm/PackageInstaller;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 0

    .line 28
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/upgrade/c/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/pm/PackageInstaller;I)Z
    .locals 6

    const-string v0, "execInstallCommand Failure ["

    const-string v1, "status of silent install: "

    .line 67
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p1

    .line 68
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v2, "cn.nubia.upgrade.action.InstallResultReceiver"

    .line 69
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    const/4 v3, 0x1

    .line 70
    invoke-static {p0, v3, p2, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 75
    sget-object p0, Lcn/nubia/upgrade/c/c;->a:Ljava/lang/String;

    const-string p1, "execInstallCommand... blocked until received result"

    invoke-static {p0, p1}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object p0, Lcn/nubia/upgrade/c/c;->b:Ljava/util/concurrent/SynchronousQueue;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xb4

    invoke-virtual {p0, v4, v5, p1}, Ljava/util/concurrent/SynchronousQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    if-eqz p0, :cond_2

    const-string p1, "android.content.pm.extra.STATUS"

    .line 79
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 80
    sget-object p2, Lcn/nubia/upgrade/c/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 82
    sget-object p2, Lcn/nubia/upgrade/c/c;->a:Ljava/lang/String;

    const-string v1, "silent install fail, may be app not having enough permissions."

    invoke-static {p2, v1}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    .line 85
    sget-object p0, Lcn/nubia/upgrade/c/c;->a:Ljava/lang/String;

    const-string p1, "execInstallCommand success"

    invoke-static {p0, p1}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_1
    sget-object p1, Lcn/nubia/upgrade/c/c;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {p1, p0}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    sget-object p0, Lcn/nubia/upgrade/c/c;->a:Ljava/lang/String;

    const-string p1, "execInstallCommand wait timeout."

    invoke-static {p0, p1}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private static a(Landroid/content/pm/PackageInstaller;ILjava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 33
    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-string v3, "base.apk"

    const-wide/16 v4, 0x0

    move-object v2, p0

    .line 37
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 40
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/high16 p1, 0x10000

    .line 44
    :try_start_3
    new-array p1, p1, [B

    move v0, v1

    .line 45
    :goto_0
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v0, v3

    .line 47
    invoke-virtual {p2, p1, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 50
    sget-object p1, Lcn/nubia/upgrade/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyInstallFile streamed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    invoke-static {v2}, Lcn/nubia/upgrade/c/c;->a(Ljava/io/InputStream;)V

    .line 56
    invoke-static {p2}, Lcn/nubia/upgrade/c/c;->a(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object p2, v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, v0

    goto :goto_1

    :catchall_3
    move-exception p1

    move-object p0, v0

    move-object p2, p0

    goto :goto_3

    :catch_3
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    move-object p2, p0

    .line 59
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    invoke-static {v0}, Lcn/nubia/upgrade/c/c;->a(Ljava/io/InputStream;)V

    .line 62
    invoke-static {p2}, Lcn/nubia/upgrade/c/c;->a(Ljava/io/OutputStream;)V

    if-eqz p0, :cond_1

    .line 58
    :goto_2
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_1
    return v1

    .line 63
    :goto_3
    invoke-static {v0}, Lcn/nubia/upgrade/c/c;->a(Ljava/io/InputStream;)V

    .line 64
    invoke-static {p2}, Lcn/nubia/upgrade/c/c;->a(Ljava/io/OutputStream;)V

    if-eqz p0, :cond_2

    .line 66
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_2
    throw p1
.end method

.method static synthetic b()Ljava/util/concurrent/SynchronousQueue;
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/upgrade/c/c;->b:Ljava/util/concurrent/SynchronousQueue;

    return-object v0
.end method
