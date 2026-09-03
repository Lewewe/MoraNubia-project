.class public Lcn/nubia/upgrade/c/h;
.super Ljava/lang/Object;
.source "WorkQueue.java"


# static fields
.field private static final c:Ljava/lang/String; = "h"

.field private static d:Lcn/nubia/upgrade/c/h;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcn/nubia/upgrade/c/h;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/upgrade/c/h;->b:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/upgrade/c/h;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/upgrade/c/h;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcn/nubia/upgrade/c/h;
    .locals 2

    .line 1
    sget-object v0, Lcn/nubia/upgrade/c/h;->d:Lcn/nubia/upgrade/c/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/nubia/upgrade/c/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/nubia/upgrade/c/h;->d:Lcn/nubia/upgrade/c/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/nubia/upgrade/c/h;

    invoke-direct {v1}, Lcn/nubia/upgrade/c/h;-><init>()V

    sput-object v1, Lcn/nubia/upgrade/c/h;->d:Lcn/nubia/upgrade/c/h;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/upgrade/c/h;->d:Lcn/nubia/upgrade/c/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcn/nubia/upgrade/c/h;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
