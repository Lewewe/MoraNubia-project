.class public Lcom/zte/activityevent/ActivityEventsManagerWrapper;
.super Ljava/lang/Object;
.source "ActivityEventsManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;,
        Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;,
        Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;
    }
.end annotation


# static fields
.field public static final mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

.field public static final mServiceIsLive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-string v0, "activityevent"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {v0}, Lcom/zte/activityevent/IActivityEventsServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/activityevent/IActivityEventsServer;

    move-result-object v0

    sput-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    .line 60
    const-string v0, ""

    const-string v1, "not have activityevent service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    sget-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mServiceIsLive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallBack(Ljava/lang/String;Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;I)Z
    .locals 1

    .line 71
    sget-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    invoke-static {p1}, Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;->access$000(Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;)Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/zte/activityevent/IActivityEventsServer;->addCallBack(Ljava/lang/String;Landroid/os/IBinder;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static addCallBackNubia(Ljava/lang/String;Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;I)Z
    .locals 1

    .line 134
    sget-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    invoke-static {p1}, Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;->access$200(Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;)Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/zte/activityevent/IActivityEventsServer;->addCallBackNubia(Ljava/lang/String;Landroid/os/IBinder;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static addInnerCallBack(Ljava/lang/String;Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;I)Z
    .locals 1

    .line 101
    sget-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    invoke-static {p1}, Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;->access$100(Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;)Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/zte/activityevent/IActivityEventsServer;->addInnerCallBack(Ljava/lang/String;Landroid/os/IBinder;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static collectActivityEventDetail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 10

    .line 161
    sget-object v1, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    if-eqz v1, :cond_0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 164
    :try_start_0
    invoke-interface/range {v1 .. v9}, Lcom/zte/activityevent/IActivityEventsServer;->collectActivityEventDetail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 166
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static delCallBack(Ljava/lang/String;)Z
    .locals 1

    .line 86
    sget-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-interface {v0, p0}, Lcom/zte/activityevent/IActivityEventsServer;->delCallBack(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static delCallBackNubia(Ljava/lang/String;)Z
    .locals 1

    .line 149
    sget-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    invoke-interface {v0, p0}, Lcom/zte/activityevent/IActivityEventsServer;->delInnerCallBack(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static delInnerCallBack(Ljava/lang/String;)Z
    .locals 1

    .line 116
    sget-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    invoke-interface {v0, p0}, Lcom/zte/activityevent/IActivityEventsServer;->delInnerCallBack(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getFirstInstallTime(Ljava/lang/String;)J
    .locals 3

    .line 198
    sget-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    invoke-interface {v0, p0}, Lcom/zte/activityevent/IActivityEventsServer;->getFirstInstallTime(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-wide v1
.end method

.method public static getVisibleActivity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/activityevent/WindowUtils$VisibleActivity;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-static {}, Lcom/zte/activityevent/WindowUtils;->getVisibleActivity()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getVisiblePackageDates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    if-eqz v0, :cond_0

    .line 181
    :try_start_0
    invoke-interface {v0}, Lcom/zte/activityevent/IActivityEventsServer;->getVisiblePackageDates()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static hasGameAppForeground()Z
    .locals 1

    .line 214
    sget-object v0, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->mActivityEventsServer:Lcom/zte/activityevent/IActivityEventsServer;

    if-eqz v0, :cond_0

    .line 217
    :try_start_0
    invoke-interface {v0}, Lcom/zte/activityevent/IActivityEventsServer;->hasGameAppForeground()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
