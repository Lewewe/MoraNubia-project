.class Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;
.super Ljava/lang/Object;
.source "RedmagicGuidanceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->showWithView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

.field final synthetic val$firstBtn:Z


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->val$firstBtn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 439
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->val$firstBtn:Z

    const-string v1, "RedmagicGuidanceActivity"

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$400(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "showWithView: firstBtn"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$400(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$500(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$400(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$500(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$700(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$800(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$400(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->startAnimation()V

    .line 450
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$500(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->startAnimation()V

    goto :goto_0

    .line 452
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$700(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    const-string v0, "showWithView: secondBtn"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$400(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$500(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$700(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$800(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$700(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$800(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$700(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->startAnimation()V

    .line 462
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$6;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$800(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->startAnimation()V

    :goto_0
    return-void
.end method
