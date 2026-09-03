.class Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;
.super Ljava/lang/Object;
.source "RedmagicGuidanceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->goneWithView()V
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

    .line 468
    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 471
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$400(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 472
    const-string v0, "RedmagicGuidanceActivity"

    const-string v2, "goneWithView"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$400(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->clearAnimation()V

    .line 475
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$500(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->clearAnimation()V

    .line 476
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$400(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$500(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$700(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->clearAnimation()V

    .line 479
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$800(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->clearAnimation()V

    .line 480
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$700(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 481
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$7;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$800(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    return-void
.end method
