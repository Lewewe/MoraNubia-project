.class public Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorageFactory;
.super Ljava/lang/Object;
.source "SourceInfoStorageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newEmptySourceInfoStorage()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;
    .locals 1

    .line 19
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/NoSourceInfoStorage;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/NoSourceInfoStorage;-><init>()V

    return-object v0
.end method

.method public static newSourceInfoStorage(Landroid/content/Context;Ljava/io/File;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;
    .locals 2

    .line 15
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;

    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseContext;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseContext;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/DatabaseSourceInfoStorage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
