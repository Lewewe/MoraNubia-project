.class Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$2;
.super Ljava/lang/Object;
.source "RedmagicGuidanceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$2;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$2;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$200(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$2;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$200(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$2;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$200(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->getCurrentPosition()I

    move-result v0

    .line 85
    iget-object v1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$2;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$200(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/VideoView;->getVideoDuration()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 88
    iget-object v2, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$2;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->onProgressUpdate(II)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$2;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$300(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
