.class Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$1;
.super Landroid/os/Handler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 29
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->finish()V

    :cond_0
    return-void
.end method
