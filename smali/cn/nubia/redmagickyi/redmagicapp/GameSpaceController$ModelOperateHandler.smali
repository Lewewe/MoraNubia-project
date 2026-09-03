.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;
.super Landroid/os/Handler;
.source "GameSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModelOperateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1760
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1763
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1801
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1802
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p1

    .line 1803
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1804
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1805
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1795
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1796
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1797
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1786
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1787
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    .line 1788
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1789
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1790
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1780
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1781
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1782
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1774
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1775
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1776
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1771
    :pswitch_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->getFocalLen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Ljava/lang/String;)V

    goto :goto_0

    .line 1766
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->adjustUnityVolume()V

    .line 1767
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->getMuteMode(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
