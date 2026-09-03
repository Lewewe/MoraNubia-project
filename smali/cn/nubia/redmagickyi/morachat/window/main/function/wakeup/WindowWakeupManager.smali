.class public Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;
.super Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;
.source "WindowWakeupManager.java"


# static fields
.field private static volatile instance:Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;
    .locals 3

    .line 14
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->instance:Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->instance:Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->instance:Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->instance:Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    return-object v0
.end method
