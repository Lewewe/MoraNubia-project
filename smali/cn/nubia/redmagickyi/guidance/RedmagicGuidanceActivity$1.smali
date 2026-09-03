.class Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;
.super Landroid/os/Handler;
.source "RedmagicGuidanceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private once:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xbb8

    const-string v1, "RedmagicGuidanceActivity"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xfa0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    const-string p1, "VIDEO_VIEW_LANDSCAPE_PREPAER:"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$102(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;Z)Z

    .line 70
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->once:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$000(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$100(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 71
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->once:Z

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->play()V

    goto :goto_0

    .line 60
    :cond_1
    const-string p1, "VIDEO_VIEW_PORTRAIT_PREPAER:"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$002(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;Z)Z

    .line 62
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->once:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$000(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$100(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 63
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->once:Z

    .line 64
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$1;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->play()V

    :cond_2
    :goto_0
    return-void
.end method
