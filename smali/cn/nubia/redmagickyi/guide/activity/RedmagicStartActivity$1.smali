.class Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;
.super Ljava/lang/Object;
.source "RedmagicStartActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnAppStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->switchServiceDescribeFragment(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->access$200(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->finish()V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 240
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public CommitBtn()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->access$100(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)Z

    move-result v0

    const/4 v1, 0x0

    .line 216
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    const-string v2, "first_live"

    invoke-static {v0, v2, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->GoToLive()V

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->finish()V

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->access$200(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    const-string v2, "first_mainpage"

    invoke-static {v0, v2, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->finish()V

    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    const-string v2, "first"

    invoke-static {v0, v2, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->goGameSapceCenter()V

    goto :goto_0

    .line 230
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    const-class v0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->access$300(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public onAnimationCallback(ZZ)V
    .locals 0

    return-void
.end method

.method public onHideFragment()V
    .locals 0

    return-void
.end method
