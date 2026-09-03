.class Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/Files$1;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
