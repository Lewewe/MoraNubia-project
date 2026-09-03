.class public final Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static IS_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VideoCache"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-boolean v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "VideoCache"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    .line 36
    sget-boolean v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "VideoCache"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    .line 24
    sget-boolean v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "VideoCache"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 14
    sput-boolean p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->IS_DEBUG:Z

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-boolean v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "VideoCache"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
