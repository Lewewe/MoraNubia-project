.class public Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;
.super Ljava/lang/Object;
.source "VivoDeviceOAIDHelper.java"


# static fields
.field private static final URI:Ljava/lang/String; = "content://com.vivo.vms.IdProvider/IdentifierId/OAID"


# instance fields
.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isSupportIds:Z

.field private mConetxt:Landroid/content/Context;

.field oaid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->isSupportIds:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->oaid:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->mConetxt:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->getContentResolver(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 99
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SqlWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 100
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper$1;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper$1;-><init>(Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getContentResolver(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object v1, p2

    goto :goto_0

    .line 123
    :cond_0
    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    move-object v1, p1

    .line 129
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->mConetxt:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 131
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    const-string p1, "value"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object p2, p1

    .line 134
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p2
.end method

.method private isSupportIds()Z
    .locals 2

    .line 93
    const-string v0, "persist.sys.identifierid.supported"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->sysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->isSupportIds:Z

    return v0
.end method

.method private sysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 81
    :try_start_0
    const-string p0, "android.os.SystemProperties"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 82
    const-string v0, "get"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 84
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method private timeCheck(ILjava/lang/String;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    .line 68
    iput v1, v0, Landroid/os/Message;->what:I

    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    .line 71
    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    :cond_0
    const-string p1, "appid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getOaid()Ljava/lang/String;
    .locals 7

    .line 36
    const-string v0, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->mConetxt:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 40
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const-string v0, "value"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public loge()Ljava/lang/String;
    .locals 2

    .line 52
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->f()V

    .line 55
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->isSupportIds:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->oaid:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->timeCheck(ILjava/lang/String;)V

    return-object v1
.end method
