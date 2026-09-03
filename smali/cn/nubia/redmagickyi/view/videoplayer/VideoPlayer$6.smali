.class Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$6;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$6;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 306
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$6;->this$0:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->access$100(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V

    return-void
.end method
