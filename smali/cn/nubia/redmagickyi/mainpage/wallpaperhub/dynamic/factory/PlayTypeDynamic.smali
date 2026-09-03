.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;
.super Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;
.source "PlayTypeDynamic.java"


# static fields
.field private static instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;
    .locals 2

    .line 10
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;

    .line 14
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;

    return-object v0

    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getPreloadFileName()Ljava/lang/String;
    .locals 0

    .line 20
    const-string p0, "dynamic"

    return-object p0
.end method
