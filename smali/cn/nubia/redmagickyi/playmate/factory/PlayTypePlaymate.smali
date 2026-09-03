.class public Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;
.super Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;
.source "PlayTypePlaymate.java"


# static fields
.field private static instance:Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;
    .locals 2

    .line 10
    const-class v0, Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;->instance:Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;->instance:Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;

    .line 14
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    sget-object v0, Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;->instance:Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;

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
    const-string p0, "playmate"

    return-object p0
.end method
