.class Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage$TouchCallable;
.super Ljava/lang/Object;
.source "BaseLruDiskUsage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field final synthetic this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage$TouchCallable;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage$TouchCallable;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage$TouchCallable;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage$TouchCallable;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage$TouchCallable;->file:Ljava/io/File;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;->access$000(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;Ljava/io/File;)V

    const/4 p0, 0x0

    return-object p0
.end method
