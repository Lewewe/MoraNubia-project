.class public Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache$Factory;
.super Ljava/lang/Object;
.source "MultiFolderDiskCache.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;
    .locals 1

    .line 132
    new-instance p0, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache$Factory;->build()Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/MultiFolderDiskCache;

    move-result-object p0

    return-object p0
.end method
